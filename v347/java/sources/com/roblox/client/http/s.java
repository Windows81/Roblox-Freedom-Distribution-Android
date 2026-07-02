package com.roblox.client.http;

/* JADX INFO: loaded from: classes.dex */
public class s extends n {
    public s(String str) {
        super(str);
    }

    public s(String str, m mVar) {
        super(str, mVar);
    }

    @Override // com.roblox.client.http.n
    public void a() {
        if (com.roblox.client.b.aW()) {
            executeOnExecutor(com.roblox.client.b.e.a(), new Void[0]);
        } else {
            super.a();
        }
    }
}
