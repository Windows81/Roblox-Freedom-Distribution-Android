package com.roblox.client.signup.multiscreen;

import androidx.fragment.app.g;
import com.roblox.client.captcha.SignUpCaptchaConfig;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f7386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f7387b;

    d(androidx.appcompat.app.c cVar, int i) {
        this.f7386a = i;
        this.f7387b = cVar.j();
    }

    public void a() {
        this.f7387b.c();
    }

    public void b() {
        this.f7387b.a().b(this.f7386a, com.roblox.client.signup.multiscreen.c.a.aq(), "birth_date_fragment").c();
    }

    public void c() {
        this.f7387b.a().a(o.a.in_from_right, o.a.out_to_left, o.a.in_from_left, o.a.out_to_right).b(this.f7386a, com.roblox.client.signup.multiscreen.c.g.aq(), "UsernamePasswordFragment").a((String) null).c();
    }

    public void a(com.roblox.client.signup.multiscreen.a.a aVar) {
        if (this.f7387b.a("EmailFragment") != null) {
            this.f7387b.c();
        }
        this.f7387b.a().a(o.a.in_from_right, o.a.out_to_left, o.a.in_from_left, o.a.out_to_right).b(this.f7386a, com.roblox.client.signup.multiscreen.c.d.a(aVar), "PhoneNumberFragment").a((String) null).c();
    }

    public void b(com.roblox.client.signup.multiscreen.a.a aVar) {
        if (this.f7387b.a("PhoneNumberFragment") != null) {
            this.f7387b.c();
        }
        this.f7387b.a().a(o.a.in_from_right, o.a.out_to_left, o.a.in_from_left, o.a.out_to_right).b(this.f7386a, com.roblox.client.signup.multiscreen.c.c.a(aVar), "EmailFragment").a((String) null).c();
    }

    public void d() {
        if (this.f7387b.a("FragmentPhonePrefixList") == null) {
            this.f7387b.a().a(o.a.in_from_right, o.a.out_to_left, o.a.in_from_left, o.a.out_to_right).b(this.f7386a, com.roblox.client.phonenumber.a.aq(), "FragmentPhonePrefixList").a((String) null).c();
        }
    }

    public void e() {
        this.f7387b.a().a(o.f.sign_up_captcha_content_layout, com.roblox.client.captcha.a.a(new SignUpCaptchaConfig()), "FragmentFunCaptcha").a((String) null).c();
    }
}
