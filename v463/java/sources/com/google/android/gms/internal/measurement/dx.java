package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.measurement.AppMeasurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class dx extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char f4227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f4228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4229c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final dz f4230d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final dz f4231e;
    private final dz f;
    private final dz g;
    private final dz h;
    private final dz i;
    private final dz j;
    private final dz k;
    private final dz l;

    dx(fc fcVar) {
        super(fcVar);
        this.f4227a = (char) 0;
        this.f4228b = -1L;
        this.f4230d = new dz(this, 6, false, false);
        this.f4231e = new dz(this, 6, true, false);
        this.f = new dz(this, 6, false, true);
        this.g = new dz(this, 5, false, false);
        this.h = new dz(this, 5, true, false);
        this.i = new dz(this, 5, false, true);
        this.j = new dz(this, 4, false, false);
        this.k = new dz(this, 3, false, false);
        this.l = new dz(this, 2, false, false);
    }

    private final String I() {
        String str;
        synchronized (this) {
            if (this.f4229c == null) {
                this.f4229c = dn.f4210b.b();
            }
            str = this.f4229c;
        }
        return str;
    }

    static /* synthetic */ long a(dx dxVar, long j) {
        dxVar.f4228b = 12451L;
        return 12451L;
    }

    protected static Object a(String str) {
        if (str == null) {
            return null;
        }
        return new ea(str);
    }

    private static String a(boolean z, Object obj) {
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String strValueOf = String.valueOf(Math.abs(l.longValue()));
            long jRound = Math.round(Math.pow(10.0d, strValueOf.length() - 1));
            long jRound2 = Math.round(Math.pow(10.0d, strValueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str.length() + 43 + str.length());
            sb.append(str);
            sb.append(jRound);
            sb.append("...");
            sb.append(str);
            sb.append(jRound2);
            return sb.toString();
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (!(obj instanceof Throwable)) {
            return obj instanceof ea ? ((ea) obj).f4241a : z ? "-" : String.valueOf(obj);
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String strB = b(AppMeasurement.class.getCanonicalName());
        String strB2 = b(fc.class.getCanonicalName());
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null) {
                String strB3 = b(className);
                if (strB3.equals(strB) || strB3.equals(strB2)) {
                    sb2.append(": ");
                    sb2.append(stackTraceElement);
                    break;
                }
            }
        }
        return sb2.toString();
    }

    static String a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String strA = a(z, obj);
        String strA2 = a(z, obj2);
        String strA3 = a(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(strA)) {
            sb.append(str2);
            sb.append(strA);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(strA2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(strA2);
        }
        if (!TextUtils.isEmpty(strA3)) {
            sb.append(str3);
            sb.append(strA3);
        }
        return sb.toString();
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf == -1 ? str : str.substring(0, iLastIndexOf);
    }

    public final dz A() {
        return this.j;
    }

    public final dz B() {
        return this.k;
    }

    public final dz C() {
        return this.l;
    }

    public final String D() {
        Pair<String, Long> pairA = r().f4260b.a();
        if (pairA == null || pairA == ei.f4259a) {
            return null;
        }
        String strValueOf = String.valueOf(pairA.second);
        String str = (String) pairA.first;
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(str).length());
        sb.append(strValueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    protected final void a(int i, String str) {
        Log.println(i, I(), str);
    }

    protected final void a(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        String str2;
        if (!z && a(i)) {
            a(i, a(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        com.google.android.gms.common.internal.aa.a(str);
        ex exVarG = this.q.g();
        if (exVarG == null) {
            str2 = "Scheduler not set. Not logging error/warn";
        } else {
            if (exVarG.E()) {
                if (i < 0) {
                    i = 0;
                }
                exVarG.a(new dy(this, i >= 9 ? 8 : i, str, obj, obj2, obj3));
                return;
            }
            str2 = "Scheduler not initialized. Not logging error/warn";
        }
        a(6, str2);
    }

    protected final boolean a(int i) {
        return Log.isLoggable(I(), i);
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
        return false;
    }

    public final dz v() {
        return this.f4230d;
    }

    public final dz w() {
        return this.f4231e;
    }

    public final dz x() {
        return this.f;
    }

    public final dz y() {
        return this.g;
    }

    public final dz z() {
        return this.i;
    }
}
