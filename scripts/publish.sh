dotnet restore CarRentalSystem/CarRentalSystem.sln --runtime=linux-x64

dotnet publish CarRentalSystem/APIGateway/APIGateway.csproj -c Release -o publish/APIGateway --no-restore --runtime=linux-x64
dotnet publish CarRentalSystem/Cars/Cars.csproj -c Release -o publish/Cars --no-restore --runtime=linux-x64
dotnet publish CarRentalSystem/Payments/Payments.csproj -c Release -o publish/Payments --no-restore --runtime=linux-x64
dotnet publish CarRentalSystem/Rentals/Rentals.csproj -c Release -o publish/Rentals --no-restore --runtime=linux-x64
