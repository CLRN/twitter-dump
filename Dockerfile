FROM mcr.microsoft.com/dotnet/sdk:3.1 as build-env

WORKDIR /src
COPY . .

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN dotnet build
RUN dotnet tool install --global TwitterDump
