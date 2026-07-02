package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.mn;
import com.google.android.gms.internal.ads.ms;
import com.google.android.gms.internal.ads.nd;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class f implements mn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final mn f3084a = new f();

    private f() {
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nd a(Object obj) throws JSONException {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            aw.i().l().f(jSONObject.getString("appSettingsJson"));
        }
        return ms.a((Object) null);
    }
}
