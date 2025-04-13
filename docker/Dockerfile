FROM budtmo/docker-android:emulator_14.0

USER root
RUN apt update && apt install -y git

USER androidusr
COPY ./apkm/nintendo.apkm /apkm/nintendo.zip
WORKDIR /apk
RUN unzip /apkm/nintendo.zip -d /apk

WORKDIR /app
RUN git clone https://github.com/frozenpandaman/s3s.git .
RUN git checkout e629366e51235998cbd0b3a1b314a5b5a4529a32
RUN pip install -r requirements.txt
COPY ./docker/script ./docker-script
ENTRYPOINT [ "supervisord", "-c", "/app/docker-script/supervisord.conf" ]
