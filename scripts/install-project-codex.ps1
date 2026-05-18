$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RootDir = Resolve-Path (Join-Path $ScriptDir "..")
$ProjectDir = Get-Location
$TargetDir = Join-Path $ProjectDir ".agents\skills"
$SkillsDir = Join-Path $RootDir "skills"

if (-not (Test-Path $SkillsDir)) {
    throw "Skills directory not found: $SkillsDir"
}

New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null
Copy-Item -Path (Join-Path $SkillsDir "*") -Destination $TargetDir -Recurse -Force

Write-Host "Installed Caveman AI Skills into this project for Codex-style agents:" -ForegroundColor Green
Write-Host $TargetDir
Write-Host "Project-specific harness files remain the source of truth." -ForegroundColor Yellow
Write-Host "Restart Codex so it can detect the installed skills." -ForegroundColor Yellow
