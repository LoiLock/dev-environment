# ! make sure to run this as admin!
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

choco install nano git nodejs -y;

# Reload environment PATH:
$env:Path = [System.Environment]::ExpandEnvironmentVariables([System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User"));

# Install yarn:
npm install -g yarn;

# Reload environment PATH:
$env:Path = [System.Environment]::ExpandEnvironmentVariables([System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User"));



# Install vscode extensions
code --install-extension sdras.night-owl
code --install-extension aaron-bond.better-comments
code --install-extension ahmadalli.vscode-nginx-conf
code --install-extension amiralizadeh9480.laravel-extra-intellisense
code --install-extension codezombiech.gitignore
code --install-extension dbaeumer.vscode-eslint
code --install-extension DigitalBrainstem.javascript-ejs-support
code --install-extension eamodio.gitlens
code --install-extension felixfbecker.php-intellisense
code --install-extension formulahendry.auto-rename-tag
code --install-extension hangxingliu.vscode-nginx-conf-hint
code --install-extension mechatroner.rainbow-csv
code --install-extension mikestead.dotenv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension onecentlin.laravel-blade
code --install-extension onecentlin.laravel5-snippets
code --install-extension qinjia.seti-icons
code --install-extension raynigon.nginx-formatter
code --install-extension ritwickdey.LiveServer
code --install-extension ronnidc.nunjucks
code --install-extension sidthesloth.html5-boilerplate
code --install-extension stylelint.vscode-stylelint
code --install-extension syler.sass-indented
code --install-extension xabikos.JavaScriptSnippets



# users/[user]/.vscode
# AppData/Roaming/Code
# ? Run this using: powershell -ExecutionPolicy Bypass -File setup.ps1