package com.google.android.gms.ads.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.common.k;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f2943a;

    public c(Context context) {
        try {
            Context contextE = k.e(context);
            this.f2943a = contextE == null ? null : contextE.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.f2943a = null;
        }
    }

    final float a(String str, float f) {
        try {
            if (this.f2943a == null) {
                return 0.0f;
            }
            return this.f2943a.getFloat(str, 0.0f);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return 0.0f;
        }
    }

    final String a(String str, String str2) {
        try {
            return this.f2943a == null ? str2 : this.f2943a.getString(str, str2);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return str2;
        }
    }

    public final boolean a(String str, boolean z) {
        try {
            if (this.f2943a == null) {
                return false;
            }
            return this.f2943a.getBoolean(str, false);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return false;
        }
    }
}
