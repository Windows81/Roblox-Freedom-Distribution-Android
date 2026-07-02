package com.roblox.client.feature;

import android.os.Bundle;
import com.roblox.client.R;
import com.roblox.client.n;

/* JADX INFO: loaded from: classes.dex */
public class f extends j {
    public f(c cVar, String str, int i, String str2, boolean z) {
        super(cVar, str, i, str2, z);
    }

    @Override // com.roblox.client.feature.j
    protected n a(String str) {
        com.roblox.client.f.e eVar = new com.roblox.client.f.e();
        Bundle bundle = new Bundle();
        bundle.putInt("TITLE_ID", R.string.CommonUI_Features_Label_Home);
        bundle.putString("REPORTING_TAB_NAME", g());
        bundle.putString("DEFAULT_URL", str);
        bundle.putString("WEB_VIEW_TAG", "HOME_TAG");
        eVar.setArguments(bundle);
        return eVar;
    }

    @Override // com.roblox.client.feature.j, com.roblox.client.feature.l
    public String g() {
        return "tabHome";
    }
}
