package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Log;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.w;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@CheckReturnValue
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static l f3528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3529b;

    private l(Context context) {
        this.f3529b = context.getApplicationContext();
    }

    private static g.a a(PackageInfo packageInfo, g.a... aVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        p pVar = new p(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < aVarArr.length; i++) {
            if (aVarArr[i].equals(pVar)) {
                return aVarArr[i];
            }
        }
        return null;
    }

    public static l a(Context context) {
        w.a(context);
        synchronized (l.class) {
            if (f3528a == null) {
                g.a(context);
                f3528a = new l(context);
            }
        }
        return f3528a;
    }

    public boolean a(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (a(packageInfo, false)) {
            return true;
        }
        if (!a(packageInfo, true)) {
            return false;
        }
        if (k.c(this.f3529b)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }

    public boolean a(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? a(packageInfo, r.f3535a) : a(packageInfo, r.f3535a[0])) != null) {
                return true;
            }
        }
        return false;
    }
}
