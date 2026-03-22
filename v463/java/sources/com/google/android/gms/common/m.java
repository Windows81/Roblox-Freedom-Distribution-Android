package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.aa;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@CheckReturnValue
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static m f3837a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f3838b;

    private m(Context context) {
        this.f3838b = context.getApplicationContext();
    }

    private static g.a a(PackageInfo packageInfo, g.a... aVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        q qVar = new q(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < aVarArr.length; i++) {
            if (aVarArr[i].equals(qVar)) {
                return aVarArr[i];
            }
        }
        return null;
    }

    public static m a(Context context) {
        aa.a(context);
        synchronized (m.class) {
            if (f3837a == null) {
                g.a(context);
                f3837a = new m(context);
            }
        }
        return f3837a;
    }

    private final v a(String str) {
        try {
            return b(com.google.android.gms.common.d.c.b(this.f3838b).b(str, 64));
        } catch (PackageManager.NameNotFoundException unused) {
            String strValueOf = String.valueOf(str);
            return v.a(strValueOf.length() != 0 ? "no pkg ".concat(strValueOf) : new String("no pkg "));
        }
    }

    private final v b(int i) {
        String[] strArrA = com.google.android.gms.common.d.c.b(this.f3838b).a(i);
        if (strArrA == null || strArrA.length == 0) {
            return v.a("no pkgs");
        }
        v vVarA = null;
        for (String str : strArrA) {
            vVarA = a(str);
            if (vVarA.f3894a) {
                return vVarA;
            }
        }
        return vVarA;
    }

    private final v b(PackageInfo packageInfo) {
        String str;
        boolean zC = l.c(this.f3838b);
        if (packageInfo == null) {
            str = "null pkg";
        } else if (packageInfo.signatures.length != 1) {
            str = "single cert required";
        } else {
            q qVar = new q(packageInfo.signatures[0].toByteArray());
            String str2 = packageInfo.packageName;
            v vVarA = g.a(str2, qVar, zC);
            if (!vVarA.f3894a || packageInfo.applicationInfo == null || (packageInfo.applicationInfo.flags & 2) == 0 || (zC && !g.a(str2, qVar, false).f3894a)) {
                return vVarA;
            }
            str = "debuggable release cert app rejected";
        }
        return v.a(str);
    }

    public boolean a(int i) {
        v vVarB = b(i);
        vVarB.c();
        return vVarB.f3894a;
    }

    public boolean a(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (a(packageInfo, false)) {
            return true;
        }
        if (a(packageInfo, true)) {
            if (l.c(this.f3838b)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    public boolean a(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? a(packageInfo, s.f3843a) : a(packageInfo, s.f3843a[0])) != null) {
                return true;
            }
        }
        return false;
    }
}
