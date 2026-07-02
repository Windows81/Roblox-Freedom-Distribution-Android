package com.roblox.platform;

import b.w;
import d.c;

/* JADX INFO: loaded from: classes.dex */
public class h implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.roblox.platform.http.c.a f8030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected com.roblox.platform.http.c.b f8031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected com.roblox.platform.http.c.g f8032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.roblox.platform.http.c.c f8033d;
    protected com.roblox.platform.http.c.e e;
    protected com.roblox.platform.http.c.d f;
    protected w g;
    protected c.a h;

    public h(w wVar, c.a aVar) {
        this.g = wVar;
        this.h = aVar;
    }

    public e a(c cVar) {
        if (this.f8030a == null) {
            this.f8030a = (com.roblox.platform.http.c.a) new com.roblox.platform.http.c.f(cVar.f8016c, cVar.f8014a).a(this.g).a(this.h).a(com.roblox.platform.http.c.a.class);
        }
        if (this.f8031b == null) {
            this.f8031b = (com.roblox.platform.http.c.b) new com.roblox.platform.http.c.f("chat", cVar.f8014a).a(this.g).a(this.h).a(com.roblox.platform.http.c.b.class);
        }
        if (this.f8032c == null) {
            this.f8032c = (com.roblox.platform.http.c.g) new com.roblox.platform.http.c.f(cVar.f8015b, cVar.f8014a).a(this.g).a(this.h).a(com.roblox.platform.http.c.g.class);
        }
        if (this.f8033d == null) {
            this.f8033d = (com.roblox.platform.http.c.c) new com.roblox.platform.http.c.f("clientsettings.api", cVar.f8014a).a(this.g).a(this.h).a(com.roblox.platform.http.c.c.class);
        }
        if (this.e == null) {
            this.e = (com.roblox.platform.http.c.e) new com.roblox.platform.http.c.f("notifications", cVar.f8014a).a(this.g).a(this.h).a(com.roblox.platform.http.c.e.class);
        }
        if (this.f == null) {
            this.f = (com.roblox.platform.http.c.d) new com.roblox.platform.http.c.f("locale", cVar.f8014a).a(this.g).a(this.h).a(com.roblox.platform.http.c.d.class);
        }
        return this;
    }

    @Override // com.roblox.platform.e
    public com.roblox.platform.http.c.a a() {
        if (this.f8030a == null) {
            throw new RuntimeException("API interface not initialized");
        }
        return this.f8030a;
    }

    @Override // com.roblox.platform.e
    public com.roblox.platform.http.c.b b() {
        if (this.f8031b == null) {
            throw new RuntimeException("CHAT interface not initialized");
        }
        return this.f8031b;
    }

    @Override // com.roblox.platform.e
    public com.roblox.platform.http.c.g c() {
        if (this.f8032c == null) {
            throw new RuntimeException("WWW interface not initialized");
        }
        return this.f8032c;
    }

    @Override // com.roblox.platform.e
    public com.roblox.platform.http.c.e d() {
        if (this.e == null) {
            throw new RuntimeException("Notifications interface not initialized");
        }
        return this.e;
    }

    @Override // com.roblox.platform.e
    public com.roblox.platform.http.c.d a(w wVar) {
        com.roblox.platform.http.c.d dVar = (com.roblox.platform.http.c.d) new com.roblox.platform.http.c.f("locale", g.c().f8014a).a(wVar).a(this.h).a(com.roblox.platform.http.c.d.class);
        if (dVar == null) {
            throw new RuntimeException("Locale interface not initialized");
        }
        return dVar;
    }
}
