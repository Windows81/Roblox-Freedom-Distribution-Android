package com.roblox.client.http;

/* JADX INFO: loaded from: classes.dex */
public class t extends r {
    public t(String str) {
        super(str, null, null, null);
    }

    public t(String str, String str2, m mVar, String str3) {
        super(str, str2, null, mVar, str3);
    }

    @Override // com.roblox.client.http.r, com.roblox.client.http.e
    public void c() {
        if (com.roblox.client.b.aW()) {
            executeOnExecutor(com.roblox.client.b.e.a(), new Void[0]);
        } else {
            super.c();
        }
    }
}
