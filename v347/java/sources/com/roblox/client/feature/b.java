package com.roblox.client.feature;

import android.support.v4.app.Fragment;

/* JADX INFO: loaded from: classes.dex */
public class b extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f6943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6944b;

    public b(c cVar, String str, int i) {
        super(str);
        this.f6943a = cVar;
        this.f6944b = i;
    }

    @Override // com.roblox.client.feature.l
    public void a(FeatureState featureState) {
        com.roblox.client.f.b bVarE = e();
        if (bVarE == null) {
            bVarE = new com.roblox.client.f.b();
        }
        this.f6943a.a(this.f6944b, bVarE, b());
    }

    @Override // com.roblox.client.feature.l
    public void a() {
        com.roblox.client.f.b bVarE = e();
        if (bVarE != null) {
            this.f6943a.c(bVarE);
        }
    }

    @Override // com.roblox.client.feature.l
    public void c() {
    }

    @Override // com.roblox.client.feature.l
    public boolean d() {
        com.roblox.client.f.b bVarE = e();
        if (bVarE != null) {
            return bVarE.a();
        }
        return false;
    }

    protected String b() {
        return com.roblox.client.f.b.class.getName();
    }

    protected com.roblox.client.f.b e() {
        Fragment fragmentB = this.f6943a.b(b());
        if (fragmentB instanceof com.roblox.client.f.b) {
            return (com.roblox.client.f.b) fragmentB;
        }
        return null;
    }

    @Override // com.roblox.client.feature.l
    public String g() {
        return "tabEvents";
    }
}
