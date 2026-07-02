package com.roblox.client.feature;

import android.os.Bundle;
import com.roblox.client.R;
import com.roblox.client.n;

/* JADX INFO: loaded from: classes.dex */
public class d extends j {
    public d(c cVar, String str, int i, String str2, boolean z) {
        super(cVar, str, i, str2, z);
    }

    @Override // com.roblox.client.feature.j
    protected n a(String str) {
        com.roblox.client.f.c cVar = new com.roblox.client.f.c();
        Bundle bundle = new Bundle();
        bundle.putInt("TITLE_ID", R.string.CommonUI_Features_Label_Game);
        bundle.putString("REPORTING_TAB_NAME", g());
        bundle.putString("DEFAULT_URL", str);
        bundle.putString("WEB_VIEW_TAG", "GAMES_TAG");
        cVar.setArguments(bundle);
        return cVar;
    }

    @Override // com.roblox.client.feature.j, com.roblox.client.feature.l
    public String g() {
        return "tabGames";
    }

    @Override // com.roblox.client.feature.j
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.roblox.client.f.c f() {
        n nVarF = super.f();
        if (nVarF instanceof com.roblox.client.f.c) {
            return (com.roblox.client.f.c) nVarF;
        }
        return null;
    }

    @Override // com.roblox.client.feature.j, com.roblox.client.feature.l
    public void v_() {
        super.v_();
        com.roblox.client.f.c cVarF = f();
        if (cVarF != null) {
            cVarF.a(true);
            cVarF.e();
        }
    }
}
