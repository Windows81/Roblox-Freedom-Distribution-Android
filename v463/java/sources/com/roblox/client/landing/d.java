package com.roblox.client.landing;

import com.roblox.client.ae.k;
import com.roblox.client.landing.c;
import com.roblox.client.p;
import com.roblox.client.u.a;
import com.roblox.client.u.e;
import com.roblox.client.u.h;
import com.roblox.client.w;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class d implements c.a, a.InterfaceC0181a, e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c.InterfaceC0155c f6451a;

    d(c.InterfaceC0155c interfaceC0155c) {
        this.f6451a = interfaceC0155c;
        interfaceC0155c.a(this);
        this.f6451a.a((e) this);
        this.f6451a.a((a.InterfaceC0181a) this);
    }

    @Override // com.roblox.client.landing.c.a
    public void a() {
        a(true);
    }

    @Override // com.roblox.client.landing.c.a
    public void b() {
        a(false);
    }

    private void a(boolean z) {
        this.f6451a.c(z);
    }

    private void d() {
        p.a("landing", "signup");
        e();
    }

    private void e() {
        this.f6451a.p();
    }

    private void f() {
        p.a("landing", "login");
        this.f6451a.n();
    }

    private void g() {
        p.a("landing", "about");
        this.f6451a.q();
    }

    void c() {
        this.f6451a = null;
    }

    @Override // com.roblox.client.u.a.InterfaceC0181a
    public void a(h hVar, com.roblox.client.u.c cVar) {
        if (c.b.LOGIN == hVar) {
            f();
            return;
        }
        if (c.b.SIGN_UP == hVar) {
            d();
        } else if (c.b.ABOUT == hVar) {
            g();
        } else if (c.b.SWITCH_TO_LOGIN == hVar) {
            this.f6451a.n();
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.landing.d$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f6453a;

        static {
            int[] iArr = new int[com.roblox.client.u.d.values().length];
            f6453a = iArr;
            try {
                iArr[com.roblox.client.u.d.ON_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6453a[com.roblox.client.u.d.ON_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6453a[com.roblox.client.u.d.ON_DESTROY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // com.roblox.client.u.e
    public void a(com.roblox.client.u.d dVar) {
        int i = AnonymousClass2.f6453a[dVar.ordinal()];
        if (i == 1) {
            k.b("StartPresenter", "onStart");
            p.b("start");
        } else if (i == 2) {
            k.b("StartPresenter", "onResume");
            w.a().a(new w.a() { // from class: com.roblox.client.landing.d.1
                @Override // com.roblox.client.w.b
                public void a(w.c cVar) {
                    if (cVar.b()) {
                        d.this.f6451a.a(false);
                    } else if (cVar.a()) {
                        d.this.f6451a.a(true);
                    }
                }
            });
        } else {
            if (i != 3) {
                return;
            }
            k.b("StartPresenter", "onDestroy");
            c();
        }
    }
}
