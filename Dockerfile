FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
COPY . /app
WORKDIR /app
RUN ["dotnet", "restore"]

EXPOSE 5004
ENTRYPOINT ["dotnet", ".", "aspnetapp.dll"]
