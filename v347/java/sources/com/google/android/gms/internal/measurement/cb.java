package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class cb extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f5954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f5955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5957d;
    private int e;
    private boolean f;
    private boolean g;

    public cb(r rVar) {
        super(rVar);
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
        ApplicationInfo applicationInfo;
        int i;
        bd bdVarA;
        Context contextJ = j();
        try {
            applicationInfo = contextJ.getPackageManager().getApplicationInfo(contextJ.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            d("PackageManager doesn't know about the app package", e);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            e("Couldn't get ApplicationInfo to load global config");
            return;
        }
        Bundle bundle = applicationInfo.metaData;
        if (bundle == null || (i = bundle.getInt("com.google.android.gms.analytics.globalConfigResource")) <= 0 || (bdVarA = new bb(h()).a(i)) == null) {
            return;
        }
        b("Loading global XML config values");
        if (bdVarA.f5899a != null) {
            String str = bdVarA.f5899a;
            this.f5957d = str;
            b("XML config - app name", str);
        }
        if (bdVarA.f5900b != null) {
            String str2 = bdVarA.f5900b;
            this.f5956c = str2;
            b("XML config - app version", str2);
        }
        if (bdVarA.f5901c != null) {
            String lowerCase = bdVarA.f5901c.toLowerCase(Locale.US);
            int i2 = "verbose".equals(lowerCase) ? 0 : "info".equals(lowerCase) ? 1 : "warning".equals(lowerCase) ? 2 : "error".equals(lowerCase) ? 3 : -1;
            if (i2 >= 0) {
                this.e = i2;
                a("XML config - log level", Integer.valueOf(i2));
            }
        }
        if (bdVarA.f5902d >= 0) {
            int i3 = bdVarA.f5902d;
            this.f5955b = i3;
            this.f5954a = true;
            b("XML config - dispatch period (sec)", Integer.valueOf(i3));
        }
        if (bdVarA.e != -1) {
            boolean z = bdVarA.e == 1;
            this.g = z;
            this.f = true;
            b("XML config - dry run", Boolean.valueOf(z));
        }
    }

    public final String b() {
        y();
        return this.f5956c;
    }

    public final String c() {
        y();
        return this.f5957d;
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
