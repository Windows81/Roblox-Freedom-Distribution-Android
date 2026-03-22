package com.google.android.gms.common.c;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.util.n;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3421a;

    public b(Context context) {
        this.f3421a = context;
    }

    public int a(String str) {
        return this.f3421a.checkCallingOrSelfPermission(str);
    }

    public int a(String str, String str2) {
        return this.f3421a.getPackageManager().checkPermission(str, str2);
    }

    public ApplicationInfo a(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f3421a.getPackageManager().getApplicationInfo(str, i);
    }

    public boolean a() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return a.a(this.f3421a);
        }
        if (!n.l() || (nameForUid = this.f3421a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f3421a.getPackageManager().isInstantApp(nameForUid);
    }

    @TargetApi(19)
    public boolean a(int i, String str) {
        if (n.g()) {
            try {
                ((AppOpsManager) this.f3421a.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        }
        String[] packagesForUid = this.f3421a.getPackageManager().getPackagesForUid(i);
        if (str == null || packagesForUid == null) {
            return false;
        }
        for (String str2 : packagesForUid) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public PackageInfo b(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f3421a.getPackageManager().getPackageInfo(str, i);
    }

    public CharSequence b(String str) throws PackageManager.NameNotFoundException {
        return this.f3421a.getPackageManager().getApplicationLabel(this.f3421a.getPackageManager().getApplicationInfo(str, 0));
    }
}
