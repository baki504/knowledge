@echo off

rem ###############################################################################
rem ## Create README.md includes contents with markdown file on knowledge project
rem ###############################################################################

rem set UTF-8
rem chcp 65001

pushd ..

set PROJECT_HOME=%CD%
set README_FILE=README.md
set TEMPLATE_FILE=template.md
set TMP_CONTENTS_TARGET_LIST=list.tmp

if exist %README_FILE% (
    erase %README_FILE%
)

rem get markdown file list without README.md
dir /s/b | find ".md" | find /v "%README_FILE%" | find /v "%TEMPLATE_FILE%">%TMP_CONTENTS_TARGET_LIST%

rem #########################
rem ## Create a README.md
rem #########################
echo # Table of Contents>> %README_FILE%
echo.>> %README_FILE%
echo This repository is knowledge memo for myself.>> %README_FILE%
echo.>> %README_FILE%

setlocal enabledelayedexpansion

for /f %%i in (%TMP_CONTENTS_TARGET_LIST%) do (
  set LINE=%%i
  set DISPLAY_NAME=!LINE:%CD%\=!
  set LINK_TEXT=https://github.com/baki504/knowledge/blob/master/!DISPLAY_NAME:^\=/!
  echo * [!DISPLAY_NAME!]^(!LINK_TEXT!^)>>!README_FILE!
)
endlocal

erase %TMP_CONTENTS_TARGET_LIST%
popd

pause
