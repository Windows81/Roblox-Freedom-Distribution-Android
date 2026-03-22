package com.roblox.client.signup.multiscreen.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {
    public void a(String str, boolean z) {
        com.roblox.client.p.a("signup_multiscreen", "password", str, z);
    }

    public void a(String str) {
        com.roblox.client.analytics.d.a("SignUpPreValidation", "Password", str);
    }

    public void b(String str) {
        com.roblox.client.s.f.b().a(str);
    }
}
