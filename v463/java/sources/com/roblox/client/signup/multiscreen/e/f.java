package com.roblox.client.signup.multiscreen.e;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import com.roblox.client.p;
import com.roblox.client.signup.multiscreen.a.g;
import com.roblox.client.signup.multiscreen.a.h;
import com.roblox.client.signup.multiscreen.b.m;
import com.roblox.client.signup.multiscreen.b.r;
import com.roblox.client.signup.multiscreen.b.w;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f7434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private w f7435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private r f7436c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.roblox.client.s.f f7437d;

    public f(m mVar, w wVar, r rVar, com.roblox.client.s.f fVar) {
        this.f7434a = mVar;
        this.f7435b = wVar;
        this.f7436c = rVar;
        this.f7437d = fVar;
    }

    public LiveData<com.roblox.client.signup.multiscreen.a.d> b() {
        return this.f7434a.c();
    }

    public LiveData<com.roblox.client.signup.multiscreen.a.d> a(String str, String str2) {
        return this.f7434a.a(str, str2);
    }

    public LiveData<h> c() {
        return this.f7435b.c();
    }

    public LiveData<h> a(String str, com.roblox.client.signup.multiscreen.a.a aVar) {
        return this.f7435b.b(str, aVar);
    }

    public LiveData<h> b(String str, com.roblox.client.signup.multiscreen.a.a aVar) {
        return this.f7435b.a(str, aVar);
    }

    public LiveData<g> d() {
        return this.f7436c;
    }

    public String e() {
        return this.f7434a.a();
    }

    public String f() {
        return this.f7435b.a();
    }

    public boolean g() {
        return this.f7434a.b() && this.f7435b.b();
    }

    public void a(int i, com.roblox.client.signup.multiscreen.a.a aVar, String str, String str2) {
        this.f7436c.a(i, aVar, str, str2);
    }

    public void a(String str, boolean z) {
        p.c("signupMultiscreen", str, z ? "focus" : "offFocus");
    }

    public void h() {
        p.b("signupMultiscreen");
        this.f7437d.a("Android-VAppSignupB-UsernameScreenLoaded");
    }

    public void a(String str) {
        p.a("signupMultiscreen", str);
    }

    public void i() {
        a("submit");
        this.f7437d.a("Android-VAppSignupB-SignUpClicked");
    }

    public void j() {
        a("usernameSuggestion");
        this.f7437d.a("Android-VAppSignupB-GenUsernameClicked");
    }

    public static class a extends v.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private m f7438a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private w f7439b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private r f7440c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.roblox.client.s.f f7441d;

        public a(m mVar, w wVar, r rVar, com.roblox.client.s.f fVar) {
            this.f7438a = mVar;
            this.f7439b = wVar;
            this.f7440c = rVar;
            this.f7441d = fVar;
        }

        @Override // androidx.lifecycle.v.c, androidx.lifecycle.v.b
        public <T extends u> T a(Class<T> cls) {
            return new f(this.f7438a, this.f7439b, this.f7440c, this.f7441d);
        }
    }
}
