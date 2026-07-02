package com.roblox.client.feature;

import android.support.v4.app.Fragment;

/* JADX INFO: loaded from: classes.dex */
public class k extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f6956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6957b;

    public k(c cVar, String str, int i) {
        super(str);
        this.f6956a = cVar;
        this.f6957b = i;
    }

    @Override // com.roblox.client.feature.l
    public void a(FeatureState featureState) {
        com.roblox.client.k.d dVarF = f();
        if (dVarF == null) {
            dVarF = new com.roblox.client.k.d();
        }
        this.f6956a.a(this.f6957b, dVarF, b());
    }

    @Override // com.roblox.client.feature.l
    public void a() {
        com.roblox.client.k.d dVarF = f();
        if (dVarF != null) {
            this.f6956a.c(dVarF);
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
        return com.roblox.client.k.d.class.getName();
    }

    protected com.roblox.client.k.d f() {
        Fragment fragmentB = this.f6956a.b(b());
        if (fragmentB instanceof com.roblox.client.k.d) {
            return (com.roblox.client.k.d) fragmentB;
        }
        return null;
    }

    @Override // com.roblox.client.feature.l
    public String g() {
        return "tabSettingsGroups";
    }
}
