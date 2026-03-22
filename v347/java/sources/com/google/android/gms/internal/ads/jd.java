package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.ads.AdRequest;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class jd extends mj {
    public static void a(String str) {
        if (a()) {
            Log.v(AdRequest.LOGTAG, str);
        }
    }

    public static boolean a() {
        if (a(2)) {
            if (((Boolean) aoo.f().a(aro.bl)).booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
