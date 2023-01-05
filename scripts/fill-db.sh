postgresPod=$(kubectl get pods -l app=postgres -o=jsonpath='{.items[].metadata}' | jq -r '.name')

cat test/cars.dump.sql           | kubectl exec -i $postgresPod -- psql -U program cars
cat test/payment.dump.sql        | kubectl exec -i $postgresPod -- psql -U program payment
cat test/rental.dump.sql         | kubectl exec -i $postgresPod -- psql -U program rental