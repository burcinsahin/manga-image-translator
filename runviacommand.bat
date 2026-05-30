@echo off
SET "IMGPATH=.\testimages"
SET "CFGPATH=.\examples\myconfig_ch2en.toml"

REM Venv aktif etme
call .\venv\Scripts\activate

REM Komutu çalıştır
python -m manga_translator local -i "%IMGPATH%" --config-file "%CFGPATH%"

pause