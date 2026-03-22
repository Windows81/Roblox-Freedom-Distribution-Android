package com.roblox.platform;

import c.x;
import com.roblox.platform.http.c.l;
import e.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.roblox.platform.http.c.c f7740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected com.roblox.platform.http.c.e f7741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected com.roblox.platform.http.c.f f7742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.roblox.platform.http.c.i f7743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.roblox.platform.http.c.h f7744e;
    protected com.roblox.platform.http.c.g f;
    protected l g;
    protected com.roblox.platform.http.c.b h;
    protected com.roblox.platform.http.c.d i;
    protected com.roblox.platform.http.c.a j;
    protected com.roblox.platform.http.c.k k;
    protected x l;
    protected c.a m;

    public j(x xVar, c.a aVar) {
        this.l = xVar;
        this.m = aVar;
    }

    public f a(c cVar) {
        if (this.f7740a == null) {
            this.f7740a = (com.roblox.platform.http.c.c) new com.roblox.platform.http.c.j(cVar.f7669c, cVar.f7667a).a(this.l).a(this.m).a(com.roblox.platform.http.c.c.class);
        }
        if (this.f7741b == null) {
            this.f7741b = (com.roblox.platform.http.c.e) new com.roblox.platform.http.c.j("chat", cVar.f7667a).a(this.l).a(this.m).a(com.roblox.platform.http.c.e.class);
        }
        if (this.f7742c == null) {
            this.f7742c = (com.roblox.platform.http.c.f) new com.roblox.platform.http.c.j("clientsettings.api", cVar.f7667a).a(this.l).a(this.m).a(com.roblox.platform.http.c.f.class);
        }
        if (this.f7743d == null) {
            this.f7743d = (com.roblox.platform.http.c.i) new com.roblox.platform.http.c.j("notifications", cVar.f7667a).a(this.l).a(this.m).a(com.roblox.platform.http.c.i.class);
        }
        if (this.f7744e == null) {
            this.f7744e = (com.roblox.platform.http.c.h) new com.roblox.platform.http.c.j("locale", cVar.f7667a).a(this.l).a(this.m).a(com.roblox.platform.http.c.h.class);
        }
        if (this.f == null) {
            this.f = (com.roblox.platform.http.c.g) new com.roblox.platform.http.c.j("friends", cVar.f7667a).a(this.l).a(this.m).a(com.roblox.platform.http.c.g.class);
        }
        if (this.g == null) {
            this.g = (l) new com.roblox.platform.http.c.j("translations", cVar.f7667a).a(this.l).a(this.m).a(l.class);
        }
        if (this.h == null) {
            this.h = (com.roblox.platform.http.c.b) new com.roblox.platform.http.c.j("accountsettings", cVar.f7667a).a(this.l).a(this.m).a(com.roblox.platform.http.c.b.class);
        }
        if (this.i == null) {
            this.i = (com.roblox.platform.http.c.d) new com.roblox.platform.http.c.j("auth", cVar.f7667a).a(this.l).a(this.m).a(com.roblox.platform.http.c.d.class);
        }
        if (this.j == null) {
            this.j = (com.roblox.platform.http.c.a) new com.roblox.platform.http.c.j("accountinformation", cVar.f7667a).a(this.l).a(this.m).a(com.roblox.platform.http.c.a.class);
        }
        if (this.k == null) {
            this.k = (com.roblox.platform.http.c.k) new com.roblox.platform.http.c.j("thumbnails", cVar.f7667a).a(this.l).a(this.m).a(com.roblox.platform.http.c.k.class);
        }
        return this;
    }

    @Override // com.roblox.platform.f
    public com.roblox.platform.http.c.c a() {
        com.roblox.platform.http.c.c cVar = this.f7740a;
        if (cVar != null) {
            return cVar;
        }
        throw new RuntimeException("API interface not initialized");
    }

    @Override // com.roblox.platform.f
    public com.roblox.platform.http.c.e b() {
        com.roblox.platform.http.c.e eVar = this.f7741b;
        if (eVar != null) {
            return eVar;
        }
        throw new RuntimeException("CHAT interface not initialized");
    }

    @Override // com.roblox.platform.f
    public com.roblox.platform.http.c.i c() {
        com.roblox.platform.http.c.i iVar = this.f7743d;
        if (iVar != null) {
            return iVar;
        }
        throw new RuntimeException("Notifications interface not initialized");
    }

    @Override // com.roblox.platform.f
    public com.roblox.platform.http.c.h a(x xVar) {
        com.roblox.platform.http.c.h hVar = (com.roblox.platform.http.c.h) new com.roblox.platform.http.c.j("locale", i.c().f7667a).a(xVar).a(this.m).a(com.roblox.platform.http.c.h.class);
        if (hVar != null) {
            return hVar;
        }
        throw new RuntimeException("Locale interface not initialized");
    }

    @Override // com.roblox.platform.f
    public com.roblox.platform.http.c.g d() {
        com.roblox.platform.http.c.g gVar = this.f;
        if (gVar != null) {
            return gVar;
        }
        throw new RuntimeException("Friends interface not initialized");
    }

    @Override // com.roblox.platform.f
    public l e() {
        l lVar = this.g;
        if (lVar != null) {
            return lVar;
        }
        throw new RuntimeException("Translations interface not initialized");
    }

    @Override // com.roblox.platform.f
    public com.roblox.platform.http.c.b f() {
        com.roblox.platform.http.c.b bVar = this.h;
        if (bVar != null) {
            return bVar;
        }
        throw new RuntimeException("AccountSettings interface not initialized");
    }

    @Override // com.roblox.platform.f
    public com.roblox.platform.http.c.d g() {
        com.roblox.platform.http.c.d dVar = this.i;
        if (dVar != null) {
            return dVar;
        }
        throw new RuntimeException("Authentication interface not initialized");
    }

    @Override // com.roblox.platform.f
    public com.roblox.platform.http.c.a h() {
        com.roblox.platform.http.c.a aVar = this.j;
        if (aVar != null) {
            return aVar;
        }
        throw new RuntimeException("AccountInformationInterface not initialized");
    }

    @Override // com.roblox.platform.f
    public com.roblox.platform.http.c.k i() {
        com.roblox.platform.http.c.k kVar = this.k;
        if (kVar != null) {
            return kVar;
        }
        throw new RuntimeException("Thumbnails interface not initialized");
    }
}
