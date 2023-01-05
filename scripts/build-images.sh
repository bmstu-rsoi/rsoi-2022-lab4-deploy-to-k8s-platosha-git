version=1.0

cd ./CarRentalSystem

docker buildx build --push -t platoshagit/gateway-service:$version --platform=linux/amd64 -f ./APIGateway/Dockerfile .
docker buildx build --push -t platoshagit/car-service:$version --platform=linux/amd64 -f ./Cars/Dockerfile .
docker buildx build --push -t platoshagit/rental-service:$version --platform=linux/amd64 -f ./Rentals/Dockerfile .
docker buildx build --push -t platoshagit/payment-service:$version  --platform=linux/amd64 -f ./Payments/Dockerfile .