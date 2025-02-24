# .NET 8.0 Web API Dockerfile
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 80
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["IkBenEenDemoApp.WebApi/IkBenEenDemoApp.WebApi.csproj", "IkBenEenDemoApp.WebApi/"]
RUN dotnet restore "IkBenEenDemoApp.WebApi/IkBenEenDemoApp.WebApi.csproj"
COPY . .
WORKDIR "/src/IkBenEenDemoApp.WebApi"
RUN dotnet build "IkBenEenDemoApp.WebApi.csproj" -c Release -o /app/build
FROM build AS publish
RUN dotnet publish "IkBenEenDemoApp.WebApi.csproj" -c Release -o /app/publish
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "IkBenEenDemoApp.WebApi.dll"]