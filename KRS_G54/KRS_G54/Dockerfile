#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["KRS_G54/KRS_G54.csproj", "KRS_G54/"]
RUN dotnet restore "KRS_G54/KRS_G54.csproj"
COPY . .
WORKDIR "/src/KRS_G54"
RUN dotnet build "KRS_G54.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "KRS_G54.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "KRS_G54.dll"]