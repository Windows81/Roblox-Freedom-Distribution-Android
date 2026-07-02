package com.roblox.client.o;

import com.roblox.client.b.e;

/* JADX INFO: loaded from: classes.dex */
public class b extends c {
    public b(String str, int i, String str2, a aVar) {
        super(str, i, str2, aVar);
    }

    @Override // com.roblox.client.o.c
    public void a() {
        if (com.roblox.client.b.aW()) {
            executeOnExecutor(e.a(), new Void[0]);
        } else {
            super.a();
        }
    }
}
