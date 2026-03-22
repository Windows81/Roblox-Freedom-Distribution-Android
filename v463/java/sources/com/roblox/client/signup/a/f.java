package com.roblox.client.signup.a;

import com.roblox.client.http.j;
import com.roblox.client.signup.a;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.roblox.client.s.f f7108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected a.h f7109b;

    public abstract j a(String str, String str2);

    public abstract String a(int i, JSONObject jSONObject);

    public f(com.roblox.client.s.f fVar, a.h hVar) {
        this.f7108a = fVar;
        this.f7109b = hVar;
    }

    protected void a(Integer num) {
        this.f7109b.b(a.e.INVALID, num);
    }

    protected void a() {
        this.f7109b.b(a.e.VALID, null);
    }
}
