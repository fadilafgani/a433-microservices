$ErrorActionPreference = "Stop"

$Image = "afgani73/order-service:latest"

docker build -t $Image .
if ($LASTEXITCODE -ne 0) { throw "Docker build gagal" }

docker push $Image
if ($LASTEXITCODE -ne 0) { throw "Docker push gagal" }
