FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src
COPY ["RestWithASPNETU/RestWithASPNETU.csproj", "RestWithASPNETU/"]
RUN dotnet restore "RestWithASPNETU/RestWithASPNETU.csproj"
COPY . .
WORKDIR "/src/RestWithASPNETU"
RUN dotnet build "RestWithASPNETU.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "RestWithASPNETU.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "RestWithASPNETU.dll"]