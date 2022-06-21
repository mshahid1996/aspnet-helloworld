FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
COPY . /app
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 5004
ENTRYPOINT ["dnx", ".", "kestrel"]
