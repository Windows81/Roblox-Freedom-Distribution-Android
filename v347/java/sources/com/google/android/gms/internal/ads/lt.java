package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class lt implements Callable<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f5273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Context f5274b;

    lt(lr lrVar, Context context, Context context2) {
        this.f5273a = context;
        this.f5274b = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.f5273a != null) {
            jd.a("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.f5273a.getSharedPreferences("admob_user_agent", 0);
        } else {
            jd.a("Attempting to read user agent from local cache.");
            sharedPreferences = this.f5274b.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            jd.a("Reading user agent from WebSettings");
            string = WebSettings.getDefaultUserAgent(this.f5274b);
            if (z) {
                sharedPreferences.edit().putString("user_agent", string).apply();
                jd.a("Persisting user agent.");
            }
        }
        return string;
    }
}
