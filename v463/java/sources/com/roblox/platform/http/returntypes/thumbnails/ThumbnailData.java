package com.roblox.platform.http.returntypes.thumbnails;

import com.roblox.platform.NoObfuscate;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ThumbnailData implements NoObfuscate {
    public final String imageUrl;
    public final String state;
    public final long targetId;

    public ThumbnailData(long j, String str, String str2) {
        this.targetId = j;
        this.state = str;
        this.imageUrl = str2;
    }
}
