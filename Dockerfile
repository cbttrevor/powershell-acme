FROM mcr.microsoft.com/powershell:7.2.1

WORKDIR /app

SHELL ["pwsh", "-Command"]

RUN Install-Module -Name Posh-ACME -Scope CurrentUser -Force

ADD [".", "/app"]

ENTRYPOINT ["pwsh", "-Command", "app.ps1"]
