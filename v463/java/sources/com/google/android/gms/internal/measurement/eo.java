package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class eo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile jn f4284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final fc f4285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ServiceConnection f4286c;

    eo(fc fcVar) {
        this.f4285b = fcVar;
    }

    private final boolean c() {
        try {
            com.google.android.gms.common.d.b bVarB = com.google.android.gms.common.d.c.b(this.f4285b.k());
            if (bVarB != null) {
                return bVarB.b("com.android.vending", 128).versionCode >= 80837300;
            }
            this.f4285b.q().A().a("Failed to retrieve Package Manager to check Play Store compatibility");
            return false;
        } catch (Exception e2) {
            this.f4285b.q().A().a("Failed to retrieve Play Store version", e2);
            return false;
        }
    }

    protected final void a() {
        this.f4285b.w();
        ep epVar = null;
        if (!c()) {
            this.f4285b.q().A().a("Install Referrer Reporter is not available");
            this.f4286c = null;
            return;
        }
        this.f4286c = new eq(this);
        this.f4285b.q().A().a("Install Referrer Reporter is initializing");
        this.f4285b.w();
        Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
        intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
        PackageManager packageManager = this.f4285b.k().getPackageManager();
        if (packageManager == null) {
            this.f4285b.q().y().a("Failed to obtain Package Manager to verify binding conditions");
            return;
        }
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            this.f4285b.q().A().a("Play Service for fetching Install Referrer is unavailable on device");
            return;
        }
        ResolveInfo resolveInfo = listQueryIntentServices.get(0);
        if (resolveInfo.serviceInfo != null) {
            String str = resolveInfo.serviceInfo.packageName;
            if (resolveInfo.serviceInfo.name == null || this.f4286c == null || !"com.android.vending".equals(str) || !c()) {
                this.f4285b.q().A().a("Play Store missing or incompatible. Version 8.3.73 or later required");
                return;
            }
            try {
                this.f4285b.q().A().a("Install Referrer Service is", com.google.android.gms.common.stats.a.a().a(this.f4285b.k(), new Intent(intent), this.f4286c, 1) ? "available" : "not available");
            } catch (Exception e2) {
                this.f4285b.q().v().a("Exception occurred while binding to Install Referrer Service", e2.getMessage());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void a(android.os.Bundle r11) {
        /*
            Method dump skipped, instruction units count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.eo.a(android.os.Bundle):void");
    }

    final Bundle b() {
        this.f4285b.w();
        if (this.f4284a == null) {
            this.f4285b.q().y().a("Attempting to use Install Referrer Service while it is not initialized");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", this.f4285b.k().getPackageName());
        try {
            Bundle bundleA = this.f4284a.a(bundle);
            if (bundleA != null) {
                return bundleA;
            }
            this.f4285b.q().v().a("Install Referrer Service returned a null response");
            return null;
        } catch (Exception e2) {
            this.f4285b.q().v().a("Exception occurred while retrieving the Install Referrer", e2.getMessage());
            return null;
        }
    }
}
