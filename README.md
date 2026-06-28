<img src="./_BANNER.jpg" width="100%" />
<p align="center">Image taken by <a href="https://www.instagram.com/visualsbyleo/">Visuals by Leo</a>.

---

The _Rōblox Freedom Distribution_ project has been brought to you by my Surface Duo.

## File Structure

### `./_.ps1`

PowerShell script to re-assemble either v347 or v463 and (for me) installs the final APK to my phone as shown above.

It takes me about thirty seconds to build and three to install over USB.

Example:

```ps1
./_.ps1 347
```

### `./v{347,463}/smali/**`

Decompiled Smali code which has been manually modified to fit the needs of RFD. **Still a work in progres.**

### `./v{347,463}/java/sources/**`

_Untouched_ decompiled Smali code. Differs from the Smali directories, which contain RFD's changes.

### `./v{347,463}/{assets,original,res,unknown}/**`

Miscellaneous files which get rebundled when `apktool b ...` is performed.

## APK Remote Locations

Version 2.337.201523 was found on [the Internet Archive](https://ia800400.us.archive.org/22/items/ultimaterobloxmobilearchive/Android/2018/ROBLOX_v2.337.201523%28398%29.apk).

Version 2.463.417004 was found on [Downzen](https://downzen.com/en/android/roblox/download/2463417004/).
