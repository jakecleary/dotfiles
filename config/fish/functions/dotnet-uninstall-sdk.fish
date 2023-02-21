function dotnet-uninstall-sdk -a v -d "Uninstall a given version of the dotnet SDK"
    sudo rm -rf /usr/local/share/dotnet/sdk/$v
    sudo rm -rf /usr/local/share/dotnet/sdk-manifests/$v
end
