package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class co extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f4153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f4154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4157e;
    private boolean f;
    private boolean g;

    public co(ae aeVar) {
        super(aeVar);
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
        ApplicationInfo applicationInfo;
        int i;
        bq bqVarA;
        Context contextJ = j();
        try {
            applicationInfo = contextJ.getPackageManager().getApplicationInfo(contextJ.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e2) {
            d("PackageManager doesn't know about the app package", e2);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            e("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle == null || (i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource")) <= 0 || (bqVarA = new bo(h()).a(i)) == null) {
            return;
        }
        b("Loading global XML config values");
        if (bqVarA.f4091a != null) {
            String str = bqVarA.f4091a;
            this.f4156d = str;
            b("XML config - app name", str);
        }
        if (bqVarA.f4092b != null) {
            String str2 = bqVarA.f4092b;
            this.f4155c = str2;
            b("XML config - app version", str2);
        }
        if (bqVarA.f4093c != null) {
            String lowerCase = bqVarA.f4093c.toLowerCase(Locale.US);
            int i2 = "verbose".equals(lowerCase) ? 0 : "info".equals(lowerCase) ? 1 : "warning".equals(lowerCase) ? 2 : "error".equals(lowerCase) ? 3 : -1;
            if (i2 >= 0) {
                this.f4157e = i2;
                a("XML config - log level", Integer.valueOf(i2));
            }
        }
        if (bqVarA.f4094d >= 0) {
            int i3 = bqVarA.f4094d;
            this.f4154b = i3;
            this.f4153a = true;
            b("XML config - dispatch period (sec)", Integer.valueOf(i3));
        }
        if (bqVarA.f4095e != -1) {
            boolean z = bqVarA.f4095e == 1;
            this.g = z;
            this.f = true;
            b("XML config - dry run", Boolean.valueOf(z));
        }
    }

    public final String b() {
        y();
        return this.f4155c;
    }

    public final String c() {
        y();
        return this.f4156d;
    }

    public final boolean d() {
        y();
        return false;
    }

    public final boolean e() {
        y();
        return this.f;
    }

    public final boolean f() {
        y();
        return this.g;
    }
}
