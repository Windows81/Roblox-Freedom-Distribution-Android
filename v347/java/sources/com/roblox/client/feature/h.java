package com.roblox.client.feature;

import android.support.v4.app.Fragment;

/* JADX INFO: loaded from: classes.dex */
public class h extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f6948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6949b;

    public h(c cVar, String str, int i) {
        super(str);
        this.f6948a = cVar;
        this.f6949b = i;
    }

    @Override // com.roblox.client.feature.l
    public void a(FeatureState featureState) {
        com.roblox.client.k.b bVarF = f();
        if (bVarF == null) {
            bVarF = new com.roblox.client.k.b();
        }
        this.f6948a.a(this.f6949b, bVarF, b());
    }

    @Override // com.roblox.client.feature.l
    public void a() {
        com.roblox.client.k.b bVarF = f();
        if (bVarF != null) {
            this.f6948a.c(bVarF);
        }
    }

    @Override // com.roblox.client.feature.l
    public void c() {
    }

    @Override // com.roblox.client.feature.l
    public boolean d() {
        return false;
    }

    protected String b() {
        return com.roblox.client.k.b.class.getName();
    }

    protected com.roblox.client.k.b f() {
        Fragment fragmentB = this.f6948a.b(b());
        if (fragmentB instanceof com.roblox.client.k.b) {
            return (com.roblox.client.k.b) fragmentB;
        }
        return null;
    }

    @Override // com.roblox.client.feature.l
    public String g() {
        return "tabAbout";
    }
}
