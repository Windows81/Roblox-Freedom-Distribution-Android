package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(21)
public final class kd extends kb {
    @Override // com.google.android.gms.internal.ads.js
    public final WebResourceResponse a(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }

    @Override // com.google.android.gms.internal.ads.jv, com.google.android.gms.internal.ads.js
    public final qe a(qd qdVar, boolean z) {
        return new rd(qdVar, z);
    }

    @Override // com.google.android.gms.internal.ads.js
    public final CookieManager c(Context context) {
        if (e()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            jd.b("Failed to obtain CookieManager.", th);
            com.google.android.gms.ads.internal.aw.i().a(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.jx, com.google.android.gms.internal.ads.js
    public final int f() {
        return R.style.Theme.Material.Dialog.Alert;
    }
}
