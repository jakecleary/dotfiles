function dotnet-uninstall-runtime -a v -d "Uninstall a given version of the dotnet Runtime"
    sudo rm -rf /usr/local/share/dotnet/host/fxr/$v
    sudo rm -rf /usr/local/share/dotnet/packs/Microsoft.AspNetCore.App.Ref/$v
    sudo rm -rf /usr/local/share/dotnet/packs/Microsoft.NETCore.App.Host.osx-x64/$v
    sudo rm -rf /usr/local/share/dotnet/packs/Microsoft.NETCore.App.Ref/$v
    sudo rm -rf /usr/local/share/dotnet/packs/NETStandard.Library.Ref/$v
    sudo rm -rf /usr/local/share/dotnet/shared/Microsoft.AspNetCore.All/$v
    sudo rm -rf /usr/local/share/dotnet/shared/Microsoft.AspNetCore.App/$v
    sudo rm -rf /usr/local/share/dotnet/shared/Microsoft.NETCore.App/$v
    sudo rm -rf /usr/local/share/dotnet/templates/$v
end
