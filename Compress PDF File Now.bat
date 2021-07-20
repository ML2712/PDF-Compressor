@echo off

echo screen72, ebook150, prepress300, printer300, default
echo Compressing the PDF...

setlocal
set GS_OUTPUT_DIR=compressed
mkdir %GS_OUTPUT_DIR%
for %%i in (*.pdf) do ps2pdf -dpDFSETTINGS#/screen "%%i" "%GS_OUTPUT_DIR%\%%i"
