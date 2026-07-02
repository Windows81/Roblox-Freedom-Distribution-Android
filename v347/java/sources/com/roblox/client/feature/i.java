package com.roblox.client.feature;

import android.support.v4.app.Fragment;

/* JADX INFO: loaded from: classes.dex */
public class i extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f6950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6951b;

    public i(c cVar, String str, int i) {
        super(str);
        this.f6950a = cVar;
        this.f6951b = i;
    }

    @Override // com.roblox.client.feature.l
    public void a(FeatureState featureState) {
        com.roblox.client.k.a aVarF = f();
        if (aVarF == null) {
            aVarF = new com.roblox.client.k.a();
        }
        this.f6950a.a(this.f6951b, aVarF, b());
    }

    @Override // com.roblox.client.feature.l
    public void a() {
        com.roblox.client.k.a aVarF = f();
        if (aVarF != null) {
            this.f6950a.b(aVarF);
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
        return com.roblox.client.k.a.class.getName();
    }

    protected com.roblox.client.k.a f() {
        Fragment fragmentB = this.f6950a.b(b());
        if (fragmentB instanceof com.roblox.client.k.a) {
            return (com.roblox.client.k.a) fragmentB;
        }
        return null;
    }

    @Override // com.roblox.client.feature.l
    public String g() {
        return "tabMore";
    }
}
