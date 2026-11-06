@echo off
chcp 65001 > nul
REM ==========================================================
REM  compile.bat            -> theo chế độ ghi trong main.tex
REM  compile.bat nhom       -> ép bản NHÓM    (BaoCao_Nhom.pdf)
REM  compile.bat canhan     -> ép bản CÁ NHÂN (BaoCao_CaNhan.pdf)
REM ==========================================================
if not exist build mkdir build
set MODE=%1
if "%MODE%"=="" (
    latexmk -xelatex -outdir=build main.tex
    if errorlevel 1 goto loi
    copy /Y build\main.pdf BaoCao.pdf > nul
    echo Da tao BaoCao.pdf
    goto xong
)
if /I "%MODE%"=="canhan" set JOB=BaoCao_CaNhan
if /I "%MODE%"=="nhom"   set JOB=BaoCao_Nhom
latexmk -xelatex -outdir=build -jobname=%JOB% -usepretex="\def\CheDoEp{%MODE%}" main.tex
if errorlevel 1 goto loi
copy /Y build\%JOB%.pdf %JOB%.pdf > nul
echo Da tao %JOB%.pdf
goto xong
:loi
echo [LOI] Bien dich that bai - xem file .log trong thu muc build\
:xong
pause
