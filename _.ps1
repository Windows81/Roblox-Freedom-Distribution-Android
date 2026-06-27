param([Int32]$ve=347)
apktool b v$ve -o v$ve.apk && uber-apk-signer --ksAlias uwu -a v$ve.apk --overwrite && adb install v$ve.apk