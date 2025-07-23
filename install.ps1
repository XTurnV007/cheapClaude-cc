# install.ps1 - Windows installation script for Claude Code

# Check if running as administrator (optional but recommended)
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Warning "建议以管理员身份运行此脚本以获得最佳体验。"
}

function Install-NodeJS {
    Write-Host "在 Windows 上安装 Node.js..." -ForegroundColor Green
    
    # Check if winget is available
    if (Get-Command winget -ErrorAction SilentlyContinue) {
        Write-Host "使用 winget 安装 Node.js v22..." -ForegroundColor Yellow
        winget install OpenJS.NodeJS --version 22.11.0
    }
    else {
        Write-Host "从官网下载 Node.js..." -ForegroundColor Yellow
        $nodeUrl = "https://nodejs.org/dist/v22.11.0/node-v22.11.0-x64.msi"
        $installerPath = "$env:TEMP\node-installer.msi"
        
        Invoke-WebRequest -Uri $nodeUrl -OutFile $installerPath
        Write-Host "正在安装 Node.js..." -ForegroundColor Yellow
        Start-Process msiexec.exe -ArgumentList "/i", $installerPath, "/quiet" -Wait
        Remove-Item $installerPath
    }
    
    # Refresh PATH
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}

# Check if Node.js is installed and version >= 18
try {
    $nodeVersion = node -v 2>$null
    if ($nodeVersion) {
        $majorVersion = [int]($nodeVersion -replace 'v(\d+)\..*', '$1')
        
        if ($majorVersion -ge 18) {
            Write-Host "Node.js 已安装: $nodeVersion" -ForegroundColor Green
        }
        else {
            Write-Host "Node.js $nodeVersion 已安装但版本小于 18。正在升级..." -ForegroundColor Yellow
            Install-NodeJS
        }
    }
}
catch {
    Write-Host "未找到 Node.js。正在安装..." -ForegroundColor Yellow
    Install-NodeJS
}

# Check if Claude Code is installed
try {
    $claudeVersion = claude --version 2>$null
    if ($claudeVersion) {
        Write-Host "Claude Code 已安装: $claudeVersion" -ForegroundColor Green
    }
}
catch {
    Write-Host "未找到 Claude Code。正在安装..." -ForegroundColor Yellow
    npm install -g @anthropic-ai/claude-code
}

# Configure Claude Code to skip onboarding
Write-Host "配置 Claude Code 跳过引导..." -ForegroundColor Yellow
$claudeConfig = @{
    hasCompletedOnboarding = $true
} | ConvertTo-Json

$configPath = Join-Path $env:USERPROFILE ".claude.json"
Set-Content -Path $configPath -Value $claudeConfig -Force

# Prompt for API key
Write-Host "`n请输入您的 CursorAI API 密钥:" -ForegroundColor Cyan
Write-Host "   您可以从这里获取 API 密钥: https://api.cursorai.art/console/token" -ForegroundColor Gray
Write-Host "   注意: 输入时密钥将被隐藏。请直接粘贴您的 API 密钥。`n" -ForegroundColor Gray

$apiKey = Read-Host -AsSecureString "API Key"
$apiKeyPlain = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto(
    [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($apiKey)
)

if ([string]::IsNullOrEmpty($apiKeyPlain)) {
    Write-Host "API 密钥不能为空。请重新运行脚本。" -ForegroundColor Red
    exit 1
}

# Set environment variables
Write-Host "`n设置环境变量..." -ForegroundColor Yellow

# Set for current session
$env:ANTHROPIC_BASE_URL = "https://api.cursorai.art"
$env:ANTHROPIC_API_KEY = $apiKeyPlain

# Set permanently for user
[System.Environment]::SetEnvironmentVariable("ANTHROPIC_BASE_URL", "https://api.cursorai.art", "User")
[System.Environment]::SetEnvironmentVariable("ANTHROPIC_API_KEY", $apiKeyPlain, "User")

Write-Host "`n安装成功完成！" -ForegroundColor Green
Write-Host "`n环境变量已设置。您可能需要重启终端。" -ForegroundColor Yellow
Write-Host "`n然后您可以使用以下命令启动 Claude Code:" -ForegroundColor Cyan
Write-Host "   claude" -ForegroundColor White