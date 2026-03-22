package com.roblox.client.http.a;

import com.roblox.client.http.j;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends a<j> {
    public b() {
        super(1000, 2, 2.0f);
    }

    @Override // com.roblox.client.http.a.d
    public boolean a(j jVar) {
        return jVar.b() >= 300 || jVar.b() < 200;
    }
}
