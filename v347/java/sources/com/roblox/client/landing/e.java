package com.roblox.client.landing;

import com.roblox.client.i;
import com.roblox.client.l.a;
import com.roblox.client.l.h;
import com.roblox.client.landing.d;
import com.roblox.client.o;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
class e implements a.InterfaceC0114a, com.roblox.client.l.e, d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    d.c f7337a;

    e(d.c cVar) {
        this.f7337a = cVar;
        this.f7337a.a(this);
        this.f7337a.a((com.roblox.client.l.e) this);
        this.f7337a.a((a.InterfaceC0114a) this);
    }

    @Override // com.roblox.client.landing.d.a
    public void a() {
        a(true);
    }

    @Override // com.roblox.client.landing.d.a
    public void b() {
        a(false);
    }

    private void a(boolean z) {
        this.f7337a.d(z);
    }

    private void d() {
        i.b("landing", "signUpGuestDialog");
        f();
    }

    private void e() {
        i.b("landing", "signup");
        f();
    }

    private void f() {
        this.f7337a.l();
    }

    private void g() {
        i.b("landing", "login");
        this.f7337a.k();
    }

    private void h() {
        i.b("landing", "playNow");
        this.f7337a.m();
    }

    private void i() {
        i.b("landing", "about");
        this.f7337a.n();
    }

    void c() {
        this.f7337a = null;
    }

    @Override // com.roblox.client.l.a.InterfaceC0114a
    public void a(h hVar, com.roblox.client.l.c cVar) {
        if (d.b.LOGIN == hVar) {
            g();
            return;
        }
        if (d.b.SIGN_UP == hVar) {
            e();
            return;
        }
        if (d.b.PLAY_NOW == hVar) {
            h();
            return;
        }
        if (d.b.ABOUT == hVar) {
            i();
        } else if (d.b.SIGN_UP_FROM_GUEST_DIALOG == hVar) {
            d();
        } else if (d.b.SWITCH_TO_LOGIN == hVar) {
            this.f7337a.k();
        }
    }

    @Override // com.roblox.client.l.e
    public void a(com.roblox.client.l.d dVar) {
        switch (dVar) {
            case ON_START:
                g.b("StartPresenter", "onStart");
                i.b("start");
                break;
            case ON_RESUME:
                g.b("StartPresenter", "onResume");
                o.a().a(new o.a() { // from class: com.roblox.client.landing.e.1
                    @Override // com.roblox.client.o.b
                    public void a(o.c cVar) {
                        if (o.c.Recommended == cVar) {
                            e.this.f7337a.c(false);
                        } else if (o.c.Required == cVar) {
                            e.this.f7337a.c(true);
                        }
                    }
                });
                break;
            case ON_DESTROY:
                g.b("StartPresenter", "onDestroy");
                c();
                break;
        }
    }
}
