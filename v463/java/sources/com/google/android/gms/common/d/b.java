package com.google.android.gms.common.d;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import com.google.android.gms.common.util.m;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3694a;

    public b(Context context) {
        this.f3694a = context;
    }

    public int a(String str) {
        return this.f3694a.checkCallingOrSelfPermission(str);
    }

    public int a(String str, String str2) {
        return this.f3694a.getPackageManager().checkPermission(str, str2);
    }

    public ApplicationInfo a(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f3694a.getPackageManager().getApplicationInfo(str, i);
    }

    public boolean a() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return a.a(this.f3694a);
        }
        if (!m.i() || (nameForUid = this.f3694a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f3694a.getPackageManager().isInstantApp(nameForUid);
    }

    public boolean a(int i, String str) {
        if (m.e()) {
            try {
                ((AppOpsManager) this.f3694a.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException unused) {
                return false;
            }
        }
        String[] packagesForUid = this.f3694a.getPackageManager().getPackagesForUid(i);
        if (str != null && packagesForUid != null) {
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public String[] a(int i) {
        return this.f3694a.getPackageManager().getPackagesForUid(i);
    }

    public PackageInfo b(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f3694a.getPackageManager().getPackageInfo(str, i);
    }

    public CharSequence b(String str) throws PackageManager.NameNotFoundException {
        return this.f3694a.getPackageManager().getApplicationLabel(this.f3694a.getPackageManager().getApplicationInfo(str, 0));
    }
}
