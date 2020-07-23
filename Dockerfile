FROM microsoft/windowsservercore:ltsc2016


ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 10.19.0
ENV ARCH x64


RUN powershell -Command "wget -Uri https://nodejs.org/dist/v%NODE_VERSION%/node-v%NODE_VERSION%-%ARCH%.msi -OutFile nodejs.msi -UseBasicParsing"


RUN msiexec.exe /q /i nodejs.msi


CMD [ "node" ]