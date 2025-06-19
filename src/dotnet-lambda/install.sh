#1/bin/bash
set -e

echo "Checking for dotnet cli"
if ! command -v dotnet &> /dev/null; then
    echo "dotnet CLI could not be found. Please install .NET SDK first."
    exit 1
fi

echo "Installing .NET Lambda Tools and templates..."
echo "the specified version is ${VERSION}"

echo "Installing .NET Lambda Tools..."
if [ "${VERSION}" != "latest" ]; then
    echo "installing latest version of Amazon.Lambda.Tools"
    dotnet tool install -g Amazon.Lambda.Tools
else
    echo "installing version ${VERSION} of Amazon.Lambda.Tools"
    dotnet tool install -g Amazon.Lambda.Tools --version "${VERSION}"
fi

dotnet tool list -g Amazon.Lambda.Tools

dotnet new -i "Amazon.Lambda.Templates::*"
echo "Dotnet templates installed, available templates are"
dotnet new list --author AWS
