package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class arh extends are<Long> {
    arh(int i, String str, Long l) {
        super(i, str, l, null);
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ Long a(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(a(), b().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ Long a(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(a(), b().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Long l) {
        editor.putLong(a(), l.longValue());
    }
}
