$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RootDir = Resolve-Path (Join-Path $ScriptDir "..")
$TargetDir = Join-Path $HOME ".agents\skills"
$SkillsDir = Join-Path $RootDir "skills"

if (-not (Test-Path $SkillsDir)) {
    throw "Skills directory not found: $SkillsDir"
}

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
Copy-Item -Path (Join-Path $SkillsDir "*") -Destination $TargetDir -Recurse -Force

Write-Host "Installed Caveman AI Skills for Codex-style agents:" -ForegroundColor Green
Write-Host $TargetDir
Write-Host "Restart Codex so it can detect the installed skills." -ForegroundColor Yellow
