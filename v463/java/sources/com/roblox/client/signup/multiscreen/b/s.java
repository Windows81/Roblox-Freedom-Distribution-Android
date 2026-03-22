package com.roblox.client.signup.multiscreen.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.s.f f7237a;

    public s(com.roblox.client.s.f fVar) {
        this.f7237a = fVar;
    }

    public void a(String str, boolean z) {
        com.roblox.client.p.a("signup_multiscreen", "username", str, z);
    }

    public void a(String str) {
        com.roblox.client.analytics.d.a("SignUpPreValidation", "Username", str);
    }

    public void b(String str) {
        com.roblox.client.analytics.d.a("SignUpPreValidation", "UsernameSuggestion", str);
    }

    public void c(String str) {
        this.f7237a.a(str);
    }

    public void a(String str, int i, int i2) {
        com.roblox.client.p.a("signup_multiscreen", str, i, i2);
    }

    public void a(String str, int i) {
        b("Failure_" + i);
        c("Android-AppSignup-UsernameNotGenerated");
        a(str, i, -1);
        if (i == 500) {
            c("Android-AppSignup-GenerateUsername500Error");
        }
    }

    public void b(String str, int i, int i2) {
        this.f7237a.a("Android-VAppSignup-ChangeUsernameFailure");
        if (i == 500) {
            this.f7237a.a("Android-VAppSignup-ChangeUsername500Error");
        }
        a(str, i, i2);
    }
}
