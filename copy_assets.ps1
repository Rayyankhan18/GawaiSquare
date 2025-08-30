$source = "c:\Users\Progton Admin\Downloads\gawaisquarewebsite\assets"
$destination = "c:\Users\Progton Admin\GawaiSquare_Clean\assets"

# Create destination directory if it doesn't exist
if (-not (Test-Path -Path $destination)) {
    New-Item -ItemType Directory -Path $destination -Force
}

# Copy all files and directories recursively
Copy-Item -Path "$source\*" -Destination $destination -Recurse -Force

Write-Host "Files copied successfully!"
