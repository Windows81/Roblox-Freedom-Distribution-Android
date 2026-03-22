package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ari extends are<Float> {
    ari(int i, String str, Float f) {
        super(i, str, f, null);
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ Float a(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(a(), b().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ Float a(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(a(), b().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.are
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Float f) {
        editor.putFloat(a(), f.floatValue());
    }
}
