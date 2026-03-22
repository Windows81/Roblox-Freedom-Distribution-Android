package com.roblox.client.signup.multiscreen.e;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import com.roblox.client.ae.n;
import com.roblox.client.p;
import com.roblox.client.phonenumber.PhonePrefix;
import com.roblox.client.signup.multiscreen.a.i;
import com.roblox.client.signup.multiscreen.b.m;
import com.roblox.client.signup.multiscreen.b.o;
import com.roblox.client.signup.multiscreen.b.z;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f7414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o f7415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private z f7416c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.roblox.client.s.f f7417d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.client.signup.multiscreen.a.a f7418e;
    private boolean f = true;

    public d(m mVar, o oVar, z zVar, com.roblox.client.signup.multiscreen.a.a aVar, com.roblox.client.s.f fVar) {
        this.f7414a = mVar;
        this.f7415b = oVar;
        this.f7416c = zVar;
        this.f7417d = fVar;
        this.f7418e = aVar;
    }

    public LiveData<i> b() {
        return this.f7416c;
    }

    public String c() {
        return n.a(this.f7415b.c());
    }

    public com.roblox.client.signup.multiscreen.a.e d() {
        return this.f7415b.c();
    }

    public LiveData<com.roblox.client.signup.multiscreen.a.d> e() {
        return this.f7414a.c();
    }

    public LiveData<com.roblox.client.signup.multiscreen.a.d> a(String str, String str2) {
        if (str2 != null) {
            return this.f7414a.a(str2.replaceAll("[^\\d]", ""), str);
        }
        return null;
    }

    public String f() {
        return this.f7414a.a();
    }

    public LiveData<com.roblox.client.signup.multiscreen.a.f> g() {
        return this.f7415b.a();
    }

    public LiveData<com.roblox.client.signup.multiscreen.a.f> a(String str) {
        return this.f7415b.a(str);
    }

    public void b(String str) {
        d("fillPhoneNumber");
        this.f7417d.a("Android-VAppSignupC-PhoneHintSelected");
        this.f7415b.b(str);
    }

    public void a(PhonePrefix phonePrefix) {
        this.f7415b.a(phonePrefix);
    }

    public void h() {
        this.f7416c.a("Sms", a(this.f7415b.c()), this.f7418e, this.f7414a.a());
    }

    public void c(String str) {
        this.f7416c.a(str);
    }

    public boolean i() {
        return this.f7416c.m_().f7183a == i.b.CAPTCHA_BEFORE_CODE_VERIFICATION;
    }

    public void j() {
        this.f7416c.f();
    }

    public boolean k() {
        return this.f7414a.b() && this.f7415b.b();
    }

    public void l() {
        this.f = false;
    }

    public void m() {
        this.f = false;
        this.f7417d.a("Android-VAppSignupC-PhoneHintScreenLoaded");
    }

    public boolean n() {
        return this.f;
    }

    public void a(String str, boolean z) {
        p.c("signupPhone", str, z ? "focus" : "offFocus");
    }

    public void d(String str) {
        p.a("signupPhone", str);
    }

    public void o() {
        p.b("signupPhone");
        this.f7417d.a("Android-VAppSignupC-PhoneScreenLoaded");
    }

    private String a(com.roblox.client.signup.multiscreen.a.e eVar) {
        if (eVar == null) {
            return "";
        }
        return eVar.a() + "," + n.c(eVar.b()) + "," + eVar.c();
    }

    public static class a extends v.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private m f7419a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private o f7420b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private z f7421c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.roblox.client.s.f f7422d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.roblox.client.signup.multiscreen.a.a f7423e;

        public a(m mVar, o oVar, z zVar, com.roblox.client.signup.multiscreen.a.a aVar, com.roblox.client.s.f fVar) {
            this.f7419a = mVar;
            this.f7420b = oVar;
            this.f7421c = zVar;
            this.f7423e = aVar;
            this.f7422d = fVar;
        }

        @Override // androidx.lifecycle.v.c, androidx.lifecycle.v.b
        public <T extends u> T a(Class<T> cls) {
            return new d(this.f7419a, this.f7420b, this.f7421c, this.f7423e, this.f7422d);
        }
    }
}
