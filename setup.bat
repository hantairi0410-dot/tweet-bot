@echo off
chcp 65001
echo ==========================================
echo   X Bot 自動セットアップスクリプト
echo ==========================================

echo.
echo [1/2] 依存ライブラリをインストールしています...
call npm install
if %errorlevel% neq 0 (
    echo [ERROR] npm install に失敗しました。Node.jsがインストールされているか確認してください。
    pause
    exit /b %errorlevel%
)

echo.
echo [2/2] Playwrightブラウザをインストールしています...
call npx playwright install
if %errorlevel% neq 0 (
    echo [ERROR] Playwrightのインストールに失敗しました。
    pause
    exit /b %errorlevel%
)

echo.
echo ==========================================
echo   セットアップが完了しました！
echo ==========================================
echo.
echo  まずはログインを行ってください:
echo    npm run login
echo.
pause
