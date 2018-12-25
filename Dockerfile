FROM python:3.6.4-alpine3.7

RUN apk add --no-cache libstdc++ lapack-dev libpng-dev freetype-dev && \
    apk add --no-cache --virtual=.build-dependencies g++ gfortran musl-dev python3-dev && \
    ln -s locale.h /usr/include/xlocale.h && \
    pip install --no-cache-dir numpy pandas scipy scikit-learn matplotlib seaborn && \
    find /usr/lib/python3.*/ -name 'tests' -exec rm -r '{}' + && \
    rm /usr/include/xlocale.h && \
    rm -r /root/.cache && \
    apk del .build-dependencies

ENV USERNAME=dev
RUN adduser -D -u 1000 ${USERNAME}
USER ${USERNAME}
WORKDIR /home/${USERNAME}/workspace

RUN mkdir -p /home/${USERNAME}/.config/matplotlib
COPY matplotlibrc /home/${USERNAME}/.config/matplotlib
