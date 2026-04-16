Add-Type -AssemblyName System.Drawing

$src = 'C:\Users\Samar Raj\.gemini\antigravity\brain\98b9114d-3a3c-4808-bcf1-259d42453f14\mma_app_icon_1776320590313.png'
$iconDir = 'C:\Users\Samar Raj\Desktop\prep_sam\icons'
New-Item -ItemType Directory -Force -Path $iconDir | Out-Null

$img = [System.Drawing.Image]::FromFile($src)

# 192x192
$bmp192 = New-Object System.Drawing.Bitmap(192, 192)
$g = [System.Drawing.Graphics]::FromImage($bmp192)
$g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$g.DrawImage($img, 0, 0, 192, 192)
$g.Dispose()
$bmp192.Save("$iconDir\icon-192.png", [System.Drawing.Imaging.ImageFormat]::Png)
$bmp192.Dispose()

# 512x512
$bmp512 = New-Object System.Drawing.Bitmap(512, 512)
$g2 = [System.Drawing.Graphics]::FromImage($bmp512)
$g2.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$g2.DrawImage($img, 0, 0, 512, 512)
$g2.Dispose()
$bmp512.Save("$iconDir\icon-512.png", [System.Drawing.Imaging.ImageFormat]::Png)
$bmp512.Dispose()

$img.Dispose()
Write-Host "Icons created successfully."
