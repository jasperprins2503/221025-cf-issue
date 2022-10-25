# Bug report

Our customer fonQ has run across an issue, where pages sometimes are not build correctly, because of missing parts of the HTML. We've downloaded one of this pages when it was loading correctly and made a static file out of this. When serving this static file, the same issue kept returning inconsistently, on multiple of their owned domains.

What we've tried:
- When we download directly from our server (not through CF proxy), the issue is not there. (host file adjustment)
- When we alter the requests user-agent and remove 'AppleWebKit', the issue is not there (see get & get-broken ps files)
- We've tried to name the file page.min.html to exclude HTML auto minify, but that didn't work :(
- The issue is consistent though all of our cloudflare domains

In the repository you'll find multiple files, the table below explains each file.
| Title | Description |
| --- | --- |
| page.html | The static file, hosted on the server, which is requested |
| broken.html | The downloaded file through cloudflare, with gaps in the long line |
| get.ps1 | Powershell script which was used to download the static file **without** 'AppleWebKit' in UserAgent |
| get-broken.ps1 | Powershell script which was used to download the static file **with** 'AppleWebKit' in UserAgent |
