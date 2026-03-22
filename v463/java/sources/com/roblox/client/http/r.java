package com.roblox.client.http;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class r extends q {
    public r(String str) {
        super(str, null, null, null);
    }

    public r(String str, String str2, m mVar, String str3) {
        super(str, str2, null, mVar, str3);
    }

    @Override // com.roblox.client.http.q, com.roblox.client.http.e
    public void c() {
        if (com.roblox.client.b.am()) {
            executeOnExecutor(com.roblox.client.analytics.h.a(), new Void[0]);
        } else {
            super.c();
        }
    }
}
