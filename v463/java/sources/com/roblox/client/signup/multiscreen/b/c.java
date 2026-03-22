package com.roblox.client.signup.multiscreen.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.s.f f7201a;

    public c(com.roblox.client.s.f fVar) {
        this.f7201a = fVar;
    }

    public void a(String str) {
        this.f7201a.a(str);
    }

    public void a(String str, String str2, int i, int i2) {
        com.roblox.client.p.a(str, str2, i, i2);
    }

    public void a(String str, int i, int i2) {
        a("Android-VAppSignup-ChangeGenderFailure");
        if (i == 500) {
            a("Android-VAppSignup-ChangeGender500Error");
        }
        a("signup_multiscreen", str, i, i2);
    }
}
