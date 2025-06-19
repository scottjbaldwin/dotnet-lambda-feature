set -e

source dev-container-features-test-lib

check "dotnet lambda" dotnet tool list -g | grep "amazon.lambda.tools"

reportResults