@echo off
SET "GIRIS_YOLU=.\testimages"
SET "CONFIG_YOLU=.\examples\myconfig_fr2en.toml"

REM Venv aktif etme
call .\venv\Scripts\activate

REM Komutu çalıştır
python -m manga_translator local -i "%GIRIS_YOLU%" --config-file "%CONFIG_YOLU%"

pause