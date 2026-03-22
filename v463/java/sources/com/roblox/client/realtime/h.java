package com.roblox.client.realtime;

import com.roblox.client.ab.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h implements g {
    @Override // com.roblox.client.realtime.g
    public boolean a(String str, String str2) {
        if (!"UserThemeTypeChangeNotification".equals(str)) {
            return false;
        }
        new com.roblox.client.ab.b().a((b.a) null);
        return true;
    }
}
