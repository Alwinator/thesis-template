@echo off
echo Preparing build...
if exist build rmdir /Q /S build

echo Building asciidoc-to-pdf docker container...
docker build -f asciidoc-to-pdf.Dockerfile -t thesis-ascii-to-pdf . || goto :error

mkdir build

echo Running asciidoc-to-pdf docker container...
docker run --rm -v "%cd%/writing:/work/writing" -v "%cd%/assets:/work/assets" -v "%cd%/build:/work/build" thesis-ascii-to-pdf || goto :error

echo Build done!

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%