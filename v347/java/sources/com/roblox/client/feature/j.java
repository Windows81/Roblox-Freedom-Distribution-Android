package com.roblox.client.feature;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.roblox.client.n;

/* JADX INFO: loaded from: classes.dex */
public class j extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected c f6952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f6953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f6954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f6955d;

    public j(c cVar, String str, int i, String str2, boolean z) {
        super(str);
        this.f6952a = cVar;
        this.f6953b = i;
        this.f6954c = str2;
        this.f6955d = z;
    }

    @Override // com.roblox.client.feature.l
    public void a(FeatureState featureState) {
        n nVar;
        n nVarF = f();
        String strA = featureState.a("WEB_URL");
        if (nVarF == null) {
            n nVarA = a(this.f6954c);
            if (strA == null) {
                strA = this.f6954c;
            }
            nVarA.c(strA);
            nVar = nVarA;
        } else {
            if (strA != null) {
                nVarF.c(strA);
            }
            nVar = nVarF;
        }
        this.f6952a.a(this.f6953b, nVar, h());
    }

    @Override // com.roblox.client.feature.l
    public void a() {
        n nVarF = f();
        if (nVarF != null) {
            if (this.f6955d) {
                this.f6952a.b(nVarF);
            } else {
                this.f6952a.c(nVarF);
            }
        }
    }

    @Override // com.roblox.client.feature.l
    public void c() {
        n nVarF = f();
        if (nVarF == null) {
            FeatureState featureState = new FeatureState(this.e);
            featureState.a("WEB_URL", this.f6954c);
            a(featureState);
            return;
        }
        nVarF.d();
    }

    @Override // com.roblox.client.feature.l
    public boolean d() {
        n nVarF = f();
        if (nVarF != null) {
            return nVarF.c();
        }
        return false;
    }

    protected String h() {
        return "WEBTABFEATURE_" + j();
    }

    protected n a(String str) {
        n nVar = new n();
        Bundle bundle = new Bundle();
        bundle.putString("DEFAULT_URL", str);
        nVar.setArguments(bundle);
        return nVar;
    }

    public n f() {
        Fragment fragmentB = this.f6952a.b(h());
        if (fragmentB instanceof n) {
            return (n) fragmentB;
        }
        return null;
    }

    public void b(String str) {
        n nVarF = f();
        if (nVarF == null) {
            nVarF = a(this.f6954c);
        }
        nVarF.c(str);
        this.f6952a.a(this.f6953b, nVarF, h());
    }

    @Override // com.roblox.client.feature.l
    public String g() {
        return "";
    }

    @Override // com.roblox.client.feature.l
    public void v_() {
        n nVarF = f();
        if (nVarF != null) {
            nVarF.a();
        }
    }

    @Override // com.roblox.client.feature.l
    public FeatureState i() {
        FeatureState featureState = new FeatureState(j());
        n nVarF = f();
        if (nVarF != null) {
            featureState.a("WEB_URL", nVarF.b());
        }
        return featureState;
    }
}
