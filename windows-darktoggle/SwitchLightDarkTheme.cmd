@ECHO OFF

for /f "tokens=3" %%x in ('REG QUERY HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize /V AppsUseLightTheme') do set "light=%%x"

if %light% EQU 0 (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V AppsUseLightTheme /T REG_DWORD /D 1 /F
) else (
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /V AppsUseLightTheme /T REG_DWORD /D 0 /F
)