package com.roblox.client.signup.a;

import com.roblox.client.http.j;
import com.roblox.client.signup.a;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.roblox.client.s.f f7106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected a.d f7107b;

    public abstract j a(String str, String str2, String str3);

    public abstract String a(int i, JSONObject jSONObject);

    public e(com.roblox.client.s.f fVar, a.d dVar) {
        this.f7106a = fVar;
        this.f7107b = dVar;
    }

    protected void a(Integer num) {
        this.f7107b.a(a.e.INVALID, num);
    }

    protected void b(Integer num) {
        this.f7107b.a(a.e.VALID, num);
    }

    protected void a() {
        this.f7107b.a();
    }
}
