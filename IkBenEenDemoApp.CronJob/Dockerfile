# .NET 8.0 CronJob Dockerfile
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["IkBenEenDemoApp.CronJob/IkBenEenDemoApp.CronJob.csproj", "IkBenEenDemoApp.CronJob/"]
RUN dotnet restore "IkBenEenDemoApp.CronJob/IkBenEenDemoApp.CronJob.csproj"
COPY . .
WORKDIR "/src/IkBenEenDemoApp.CronJob"
RUN dotnet publish "IkBenEenDemoApp.CronJob.csproj" -c Release -o /app/publish
FROM mcr.microsoft.com/dotnet/runtime:8.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "IkBenEenDemoApp.CronJob.dll"]