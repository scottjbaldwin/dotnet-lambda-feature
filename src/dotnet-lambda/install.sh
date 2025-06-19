#1/bin/bash
set -e

echo "Installing .NET Lambda Tools and templates..."
echo "the specified version is ${VERSION}"

echo "Installing .NET Lambda Tools for user ${_REMOTE_USER}..."
if [ "${VERSION}" = "latest" ]; then
    echo "installing latest version of Amazon.Lambda.Tools"
    sudo -H -u $_REMOTE_USER bash -c 'dotnet tool install -g Amazon.Lambda.Tools'
else
    echo "installing version ${VERSION} of Amazon.Lambda.Tools"
    sudo -H -u $_REMOTE_USER bash -c 'dotnet tool install -g Amazon.Lambda.Tools --version "${VERSION}"'
fi

sudo -H -u $_REMOTE_USER bash -c 'dotnet tool list -g Amazon.Lambda.Tools'

sudo -H -u $_REMOTE_USER bash -c 'dotnet new -i "Amazon.Lambda.Templates::*"'
echo "Dotnet templates installed, available templates are"
sudo -H -u $_REMOTE_USER bash -c 'dotnet new list --author AWS'
