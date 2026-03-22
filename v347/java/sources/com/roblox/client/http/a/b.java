package com.roblox.client.http.a;

import com.roblox.client.http.j;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends a<j> {
    public b() {
        super(1000, 2, 2.0f);
    }

    public b(int i, int i2, float f) {
        super(i, i2, f);
    }

    @Override // com.roblox.client.http.a.d
    public boolean a(j jVar) {
        return jVar.b() >= 300 || jVar.b() < 200;
    }
}
