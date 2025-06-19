set -e

source dev-container-features-test-lib

check "dotnet lambda" dotnet tool list -g | grep "amazon.lambda.tools"
check "dotnet lambda templates" dotnet new list --author AWS | grep "serverless.AspNetCoreWebAPI"

reportResults