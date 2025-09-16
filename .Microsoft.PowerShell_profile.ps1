Import-Module posh-git
Set-PSReadLineOption -Colors @{ Parameter = 'Cyan' }

function Get-GitBranchColor {
    $status = git status 2>$null
    if ($status -match "Changes not staged for commit") { return "DarkMagenta" }
    elseif ($status -match "Changes to be committed") { return "DarkYellow" }
    elseif ($status -match "Your branch is ahead of") { return "White" }
    elseif ($status -match "nothing to commit, working tree clean") { return "DarkCyan" }
    else { return "Magenta" }
}

function prompt {
    $branch = ''
    try {
        $branch = (git rev-parse --abbrev-ref HEAD 2>$null)
    }
    catch {}
    if ($branch -and $branch -ne 'HEAD') {
        $color = Get-GitBranchColor
        Write-Host "[$branch]" -NoNewline -ForegroundColor $color
        Write-Host " " -NoNewline
    }
    Write-Host ("PS " + $(Get-Location) + ">") -NoNewline
    return " "
}