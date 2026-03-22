package com.google.ads.interactivemedia.v3.impl.b;

import android.annotation.TargetApi;
import android.os.Build;
import android.webkit.WebSettings;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {
    @TargetApi(17)
    public static void a(WebSettings webSettings) {
        if (Build.VERSION.SDK_INT >= 17) {
            webSettings.setMediaPlaybackRequiresUserGesture(false);
        }
    }
}
