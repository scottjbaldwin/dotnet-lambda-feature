# Dotnet Lambda (dotnet-lambda)

Installs the [dotnet lambda tools](https://github.com/aws/aws-lambda-dotnet) and the associated templates.

# Example Usage

```json
"features": {
    "ghcr.io/scottjbaldwin/dotnet-lambda/dotnetlambda:1": {}
}
```

# Options

| Options Id | Description | Type | Default Value |
| ---------- | ----------- | ---- | ------------- |
|  version   | The version of the .Net lambda tools to install | string | latest |

# OS Support

This feature should work on any OS that supports the [dotnet feature](https://github.com/devcontainers/features/blob/main/src/dotnet/README.md#os-support)

`bash` is required to execute the `install.sh` script.