package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class arg extends are<Integer> {
    arg(int i, String str, Integer num) {
        super(i, str, num, null);
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ Integer a(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(a(), b().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ Integer a(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(a(), b().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(a(), num.intValue());
    }
}
