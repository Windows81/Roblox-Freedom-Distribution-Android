package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class arj extends are<String> {
    arj(int i, String str, String str2) {
        super(i, str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ String a(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(a(), b());
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ String a(JSONObject jSONObject) {
        return jSONObject.optString(a(), b());
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ void a(SharedPreferences.Editor editor, String str) {
        editor.putString(a(), str);
    }
}
