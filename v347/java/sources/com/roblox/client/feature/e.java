package com.roblox.client.feature;

import android.os.Bundle;
import com.roblox.client.n;

/* JADX INFO: loaded from: classes.dex */
public class e extends j {
    private int f;
    private String g;
    private FeatureState h;

    public e(c cVar, String str, int i, int i2, String str2, String str3, FeatureState featureState) {
        super(cVar, str, i2, str2, false);
        this.f = i;
        this.g = str3;
        this.h = featureState;
    }

    public e(c cVar, String str, int i, int i2, String str2, String str3, boolean z, FeatureState featureState) {
        super(cVar, str, i2, str2, z);
        this.f = i;
        this.g = str3;
        this.h = featureState;
    }

    @Override // com.roblox.client.feature.j
    protected n a(String str) {
        com.roblox.client.f.d dVar = new com.roblox.client.f.d();
        Bundle bundle = new Bundle();
        bundle.putInt("TITLE_ID", this.f);
        bundle.putString("REPORTING_TAB_NAME", g());
        bundle.putString("DEFAULT_URL", str);
        bundle.putBoolean("HAS_PARENT", this.h != null);
        dVar.setArguments(bundle);
        return dVar;
    }

    @Override // com.roblox.client.feature.j, com.roblox.client.feature.l
    public boolean d() {
        boolean zD = super.d();
        if (!zD && this.h != null) {
            this.f6952a.a(this.h);
            return true;
        }
        return zD;
    }

    @Override // com.roblox.client.feature.j, com.roblox.client.feature.l
    public String g() {
        return this.g;
    }
}
