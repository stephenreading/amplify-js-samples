$env:INLINE_RUNTIME_CHUNK = "false"
npm run build
Remove-Item -Recurse -Path $args[1]
$buildPath = Join-Path -Path $args[0] -ChildPath "build"
Copy-Item -Recurse -Path $buildPath -Destination $args[1] -Container:$true
$manifestPath = Join-Path -Path $args[0] -ChildPath "\chromeExtension\manifest.json"
Copy-Item -Path $manifestPath -Destination $args[1] -verbose