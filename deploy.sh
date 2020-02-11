docker build -t erictung1999/client:latest -t erictung1999/client:$SHA -f ./client/Dockerfile ./client/
docker build -t erictung1999/server:latest -t erictung1999/server:$SHA -f ./server/Dockerfile ./server/
docker build -t erictung1999/worker:latest -t erictung1999/worker:$SHA -f ./worker/Dockerfile ./worker/
docker push erictung1999/client:latest
docker push erictung1999/server:latest
docker push erictung1999/worker:latest
docker push erictung1999/client:$SHA
docker push erictung1999/server:$SHA
docker push erictung1999/worker:$SHA
kubectl apply -f k8s
kubectl set image deployments/client-deployment client=erictung1999/client:$SHA
kubectl set image deployments/server-deployment server=erictung1999/server:$SHA
kubectl set image deployments/worker-deployment worker=erictung1999/worker:$SHA