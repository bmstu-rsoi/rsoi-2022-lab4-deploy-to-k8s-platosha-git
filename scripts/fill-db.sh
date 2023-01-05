postgresPod=$(kubectl get pods -l app=postgres -o=jsonpath='{.items[].metadata}' | jq -r '.name')

cat test/cars.dump.sql           | kubectl exec -i postgres-7b4b78b57-mjftm -- psql -U program cars
cat test/payment.dump.sql        | kubectl exec -i postgres-7b4b78b57-mjftm -- psql -U program payment
cat test/rental.dump.sql         | kubectl exec -i postgres-7b4b78b57-mjftm -- psql -U program rental