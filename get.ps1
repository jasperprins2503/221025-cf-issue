$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) /537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36"
try {
$Response = Invoke-WebRequest -UseBasicParsing -Uri "https://www.fonq.nl/static/page.html" `
-WebSession $session `
-Headers @{
"authority"="www.fonq.nl"
  "method"="GET"
  "path"="/product/vidaxl-wandschappen-zwevend-4-st-60x23-5x3-8-cm-mdf-hoogglans-wit/899195/"
  "scheme"="https"
  "accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
  "accept-language"="nl,en-US;q=0.9,en;q=0.8"
  "cache-control"="max-age=0"
  "sec-ch-ua"="`"Chromium`";v=`"106`", `"Google Chrome`";v=`"106`", `"Not;A=Brand`";v=`"99`""
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
  "sec-fetch-dest"="document"
  "sec-fetch-mode"="navigate"
  "sec-fetch-site"="none"
  "sec-fetch-user"="?1"
  "upgrade-insecure-requests"="1"
}

$Stream = [System.IO.StreamWriter]::new('.\page.html', $false, [System.Text.Encoding]::UTF8)

    $Stream.Write($Response.Content)
}
finally {
    $Stream.Dispose()
}