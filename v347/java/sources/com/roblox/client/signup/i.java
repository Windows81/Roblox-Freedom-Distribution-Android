package com.roblox.client.signup;

import com.roblox.client.l.a;
import com.roblox.client.signup.f;

/* JADX INFO: loaded from: classes.dex */
class i implements a.InterfaceC0114a, com.roblox.client.l.e, f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f.d f7870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f.a f7871b;

    i(f.d dVar, f.a aVar) {
        this.f7870a = dVar;
        this.f7870a.a(this);
        this.f7870a.a((com.roblox.client.l.e) this);
        this.f7870a.a((a.InterfaceC0114a) this);
        this.f7871b = aVar;
    }

    @Override // com.roblox.client.signup.f.b
    public void a(boolean z, String str) {
        a(str, z);
    }

    private void a() {
        com.roblox.client.i.b("signup", "close");
        this.f7870a.c();
    }

    private void a(com.roblox.client.l.c cVar) {
        com.roblox.client.i.b("signup", "usernameSuggestion");
    }

    private void b() {
        com.roblox.client.i.b("signup", "login");
        this.f7870a.b();
    }

    private void c() {
        com.roblox.client.i.b("signup", "submit");
    }

    private void b(com.roblox.client.l.c cVar) {
        a("gender");
    }

    private void c(com.roblox.client.l.c cVar) {
    }

    private void d(com.roblox.client.l.c cVar) {
        a("termsOfUse");
        this.f7870a.a(cVar.a("termsOfPrivacyKey"));
    }

    private void a(String str) {
        com.roblox.client.i.b("signup", str, "submit");
    }

    private void a(String str, boolean z) {
        com.roblox.client.i.b("signup", str, z ? "focus" : "offFocus");
    }

    @Override // com.roblox.client.l.e
    public void a(com.roblox.client.l.d dVar) {
        switch (dVar) {
            case ON_START:
                com.roblox.client.i.b("signup");
                break;
        }
    }

    @Override // com.roblox.client.l.a.InterfaceC0114a
    public void a(com.roblox.client.l.h hVar, com.roblox.client.l.c cVar) {
        if (f.c.CANCEL == hVar) {
            a();
            return;
        }
        if (f.c.SWITCH_TO_LOGIN == hVar) {
            b();
            return;
        }
        if (f.c.BIRTH_DAY_SELECTED == hVar) {
            a("birthdayDay");
            c(cVar);
            return;
        }
        if (f.c.BIRTH_MONTH_SELECTED == hVar) {
            a("birthdayMonth");
            c(cVar);
            return;
        }
        if (f.c.BIRTH_YEAR_SELECTED == hVar) {
            a("birthdayYear");
            c(cVar);
            return;
        }
        if (f.c.GENDER_SELECTED == hVar) {
            b(cVar);
            return;
        }
        if (f.c.TERMS_OF_PRIVACY_CHECK_CHANGED == hVar) {
            d(cVar);
        } else if (f.c.GET_USERNAME_SUGGESTION == hVar) {
            a(cVar);
        } else if (f.c.SIGN_UP == hVar) {
            c();
        }
    }
}
