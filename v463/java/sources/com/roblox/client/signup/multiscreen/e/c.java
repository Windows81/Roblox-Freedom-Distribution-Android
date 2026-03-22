package com.roblox.client.signup.multiscreen.e;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.p;
import com.roblox.client.signup.multiscreen.a.i;
import com.roblox.client.signup.multiscreen.b.m;
import com.roblox.client.signup.multiscreen.b.z;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f7404a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.b.a f7405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private z f7406c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.roblox.client.s.f f7407d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.a.a f7408e;
    private boolean f = true;

    public c(m mVar, com.roblox.client.signup.multiscreen.b.a aVar, z zVar, com.roblox.client.signup.multiscreen.a.a aVar2, com.roblox.client.s.f fVar) {
        this.f7404a = mVar;
        this.f7405b = aVar;
        this.f7406c = zVar;
        this.f7408e = aVar2;
        this.f7407d = fVar;
    }

    public LiveData<com.roblox.client.signup.multiscreen.a.d> b() {
        return this.f7404a.c();
    }

    public String c() {
        return this.f7404a.a();
    }

    public void a(String str, String str2) {
        this.f7404a.a(str2, str);
    }

    public LiveData<com.roblox.client.signup.multiscreen.a.b> d() {
        return this.f7405b.a();
    }

    public LiveData<i> e() {
        return this.f7406c;
    }

    public String f() {
        return this.f7405b.b();
    }

    public void a(String str) {
        this.f7405b.a(str);
    }

    public void g() {
        this.f = false;
        this.f7407d.a("Android-VAppSignupC-EmailHintScreenLoaded");
    }

    public void h() {
        this.f = false;
    }

    public boolean i() {
        return this.f;
    }

    public boolean j() {
        return this.f7404a.b() && this.f7405b.c();
    }

    public void k() {
        this.f7406c.a(ContactRequestObject.JSON_FIELD_EMAIL, this.f7405b.b(), this.f7408e, this.f7404a.a());
    }

    public void b(String str) {
        this.f7406c.a(str);
    }

    public void l() {
        this.f7406c.f();
    }

    public void a(String str, boolean z) {
        p.c("signupEmail", str, z ? "focus" : "offFocus");
    }

    public boolean m() {
        return this.f7406c.m_().f7183a == i.b.CAPTCHA_BEFORE_CODE_VERIFICATION;
    }

    public void c(String str) {
        p.a("signupEmail", str);
    }

    public void n() {
        p.b("signupEmail");
        this.f7407d.a("Android-VAppSignupC-EmailScreenLoaded");
    }

    public void o() {
        c("fillEmail");
        this.f7407d.a("Android-VAppSignupC-EmailHintSelected");
    }

    public static class a extends v.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private m f7409a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.roblox.client.signup.multiscreen.b.a f7410b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private z f7411c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.roblox.client.signup.multiscreen.a.a f7412d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.roblox.client.s.f f7413e;

        public a(m mVar, com.roblox.client.signup.multiscreen.b.a aVar, z zVar, com.roblox.client.signup.multiscreen.a.a aVar2, com.roblox.client.s.f fVar) {
            this.f7409a = mVar;
            this.f7410b = aVar;
            this.f7411c = zVar;
            this.f7412d = aVar2;
            this.f7413e = fVar;
        }

        @Override // androidx.lifecycle.v.c, androidx.lifecycle.v.b
        public <T extends u> T a(Class<T> cls) {
            return new c(this.f7409a, this.f7410b, this.f7411c, this.f7412d, this.f7413e);
        }
    }
}
