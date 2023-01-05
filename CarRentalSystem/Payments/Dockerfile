FROM mcr.microsoft.com/dotnet/aspnet:6.0-alpine as base
WORKDIR /app
EXPOSE 8050

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /CarRentalSystem
COPY ["Payments/Payments.csproj", "Payments/"]
COPY ["ModelsDTO/ModelsDTO.csproj", "ModelsDTO/"]
RUN dotnet restore "Payments/Payments.csproj"
COPY . .
WORKDIR "/CarRentalSystem/Payments"

FROM build AS publish
RUN dotnet publish "Payments.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Payments.dll"]