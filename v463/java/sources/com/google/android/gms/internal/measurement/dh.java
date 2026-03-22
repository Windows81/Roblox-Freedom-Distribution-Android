package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class dh extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f4194a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f4195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Boolean f4196c;

    dh(fc fcVar) {
        super(fcVar);
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public final boolean a(Context context) {
        if (this.f4196c == null) {
            this.f4196c = false;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    packageManager.getPackageInfo("com.google.android.gms", 128);
                    this.f4196c = true;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return this.f4196c.booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dh g() {
        return super.g();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gz h() {
        return super.h();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gw i() {
        return super.i();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.util.d j() {
        return super.j();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ Context k() {
        return super.k();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dt l() {
        return super.l();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dv m() {
        return super.m();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ iq n() {
        return super.n();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ hy o() {
        return super.o();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ ex p() {
        return super.p();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ dx q() {
        return super.q();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ei r() {
        return super.r();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cy s() {
        return super.s();
    }

    @Override // com.google.android.gms.internal.measurement.fy
    protected final boolean t() {
        Calendar calendar = Calendar.getInstance();
        this.f4194a = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.f4195b = sb.toString();
        return false;
    }

    public final long u() {
        F();
        return this.f4194a;
    }

    public final String v() {
        F();
        return this.f4195b;
    }
}
