 # Import-Module
 Import-Module posh-git
 Import-Module -Name Terminal-Icons
 Import-Module PSReadLine

 # Configuração PSReadLine
 Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
 Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
 Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
 Set-PSReadLineOption -PredictionSource History
 Set-PSReadLineOption -PredictionViewStyle ListView

 #Uso para não ficar poluido o terminal
 clear-host
 
 #Tema Oh-My-Posh
 oh-my-posh init pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes\spaceship.omp.json' | Invoke-Expression

 # Adaptando comandos do teclado
 Set-Alias n npm
 Set-Alias g git
 Set-Alias cc clear
 Set-Alias ll ls
 