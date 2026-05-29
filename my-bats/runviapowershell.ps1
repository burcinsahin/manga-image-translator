# Değişkenler
$GirisYolu = "C:\Users\burci\Downloads\TMP\cmcs\TEST"
$ConfigYolu = ".\examples\myconfig_ch2en.toml"
$VenvYolu = ".\venv\Scripts\Activate.ps1"

# Sanal ortamı (venv) aktif et
. $VenvYolu

# Komutu çalıştır
python -m manga_translator local -i "$GirisYolu" --config-file "$ConfigYolu"

# İşlem bitince terminalin hemen kapanmaması için (isteğe bağlı)
Read-Host -Prompt "İşlem tamamlandı. Kapatmak için Enter'a basın"