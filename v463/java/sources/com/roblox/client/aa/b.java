package com.roblox.client.aa;

import com.roblox.client.analytics.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends c {
    public b(String str, int i, String str2, a aVar) {
        super(str, i, str2, aVar);
    }

    @Override // com.roblox.client.aa.c
    public void a() {
        if (com.roblox.client.b.am()) {
            executeOnExecutor(h.a(), new Void[0]);
        } else {
            super.a();
        }
    }
}
