package com.roblox.client.signup.multiscreen.e;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import com.roblox.client.p;
import com.roblox.client.signup.multiscreen.a.h;
import com.roblox.client.signup.multiscreen.b.f;
import com.roblox.client.signup.multiscreen.b.w;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private w f7424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.b.f f7425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.s.f f7426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.roblox.client.ad.b f7427d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.a.a f7428e;
    private String f;
    private String g;
    private String h;

    public e(w wVar, com.roblox.client.signup.multiscreen.b.f fVar, com.roblox.client.signup.multiscreen.a.a aVar, com.roblox.client.s.f fVar2, com.roblox.client.ad.b bVar) {
        this.f7424a = wVar;
        this.f7425b = fVar;
        this.f7428e = aVar;
        this.f7426c = fVar2;
        this.f7427d = bVar;
    }

    public void a(String str) {
        this.f7427d.b(str, "Username");
        this.h = str;
    }

    public String b() {
        return this.h;
    }

    public void b(String str) {
        this.f = str;
    }

    public LiveData<com.roblox.client.signup.multiscreen.a.c> c() {
        return this.f7425b.a();
    }

    public LiveData<com.roblox.client.signup.multiscreen.a.c> a(int i) {
        return this.f7425b.a(b(i));
    }

    public LiveData<h> d() {
        return this.f7424a.c();
    }

    public LiveData<h> a(String str, com.roblox.client.signup.multiscreen.a.a aVar) {
        return this.f7424a.b(str, aVar);
    }

    public LiveData<h> b(String str, com.roblox.client.signup.multiscreen.a.a aVar) {
        return this.f7424a.a(str, aVar);
    }

    public void e() {
        if (this.h.equals(this.g)) {
            return;
        }
        this.f7424a.a(this.f);
    }

    public com.roblox.client.signup.multiscreen.a.a f() {
        return this.f7428e;
    }

    public void c(String str) {
        p.a(l(), str);
    }

    public void a(String str, boolean z) {
        p.c(l(), str, z ? "focus" : "offFocus");
    }

    public void d(String str) {
        p.c(l(), str, "submit");
    }

    public void g() {
        p.b(l());
        if (k()) {
            this.f7426c.a("Android-VAppSignupC-GenderScreenLoaded");
        } else {
            this.f7426c.a("Android-VAppSignupB-GenderScreenLoaded");
        }
    }

    public void h() {
        c("start");
        if (k()) {
            this.f7426c.a("Android-VAppSignupC-StartClicked");
        } else {
            this.f7426c.a("Android-VAppSignupB-StartClicked");
        }
    }

    public void i() {
        c("skip");
        if (k()) {
            this.f7426c.a("Android-VAppSignupC-SkipClicked");
        } else {
            this.f7426c.a("Android-VAppSignupB-SkipClicked");
        }
    }

    public void j() {
        c("usernameSuggestion");
        if (k()) {
            this.f7426c.a("Android-VAppSignupC-GenUsernameClicked");
        } else {
            this.f7426c.a("Android-VAppSignupB-GenUsernameClicked");
        }
    }

    public boolean k() {
        return com.roblox.abtesting.a.a().n() && this.f7428e.a() >= 13;
    }

    private String l() {
        return k() ? "selectUsernameGender" : "selectGender";
    }

    private f.a b(int i) {
        f.a aVar = f.a.UNKNOWN;
        if (i == 1) {
            return f.a.MALE;
        }
        return i == 2 ? f.a.FEMALE : aVar;
    }

    public static class a extends v.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private w f7429a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.roblox.client.signup.multiscreen.b.f f7430b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.roblox.client.signup.multiscreen.a.a f7431c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.roblox.client.s.f f7432d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.roblox.client.ad.b f7433e;

        public a(w wVar, com.roblox.client.signup.multiscreen.b.f fVar, com.roblox.client.signup.multiscreen.a.a aVar, com.roblox.client.s.f fVar2, com.roblox.client.ad.b bVar) {
            this.f7429a = wVar;
            this.f7430b = fVar;
            this.f7431c = aVar;
            this.f7432d = fVar2;
            this.f7433e = bVar;
        }

        @Override // androidx.lifecycle.v.c, androidx.lifecycle.v.b
        public <T extends u> T a(Class<T> cls) {
            return new e(this.f7429a, this.f7430b, this.f7431c, this.f7432d, this.f7433e);
        }
    }
}
