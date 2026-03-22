package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ae f4006a;

    protected ab(ae aeVar) {
        com.google.android.gms.common.internal.aa.a(aeVar);
        this.f4006a = aeVar;
    }

    private static String a(Object obj) {
        return obj == null ? "" : obj instanceof String ? (String) obj : obj instanceof Boolean ? obj == Boolean.TRUE ? "true" : "false" : obj instanceof Throwable ? ((Throwable) obj).toString() : obj.toString();
    }

    private final void a(int i, String str, Object obj, Object obj2, Object obj3) {
        ae aeVar = this.f4006a;
        bw bwVarF = aeVar != null ? aeVar.f() : null;
        String strA = bm.f4083b.a();
        if (bwVarF == null) {
            if (Log.isLoggable(strA, i)) {
                Log.println(i, strA, c(str, obj, obj2, obj3));
            }
        } else {
            if (Log.isLoggable(strA, i)) {
                Log.println(i, strA, bw.c(str, obj, obj2, obj3));
            }
            if (i >= 5) {
                bwVarF.a(i, str, obj, obj2, obj3);
            }
        }
    }

    protected static String c(String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String strA = a(obj);
        String strA2 = a(obj2);
        String strA3 = a(obj3);
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

    public static boolean w() {
        return Log.isLoggable(bm.f4083b.a(), 2);
    }

    public final void a(String str, Object obj) {
        a(2, str, obj, null, null);
    }

    public final void a(String str, Object obj, Object obj2) {
        a(2, str, obj, obj2, null);
    }

    public final void a(String str, Object obj, Object obj2, Object obj3) {
        a(3, str, obj, obj2, obj3);
    }

    public final void b(String str) {
        a(2, str, null, null, null);
    }

    public final void b(String str, Object obj) {
        a(3, str, obj, null, null);
    }

    public final void b(String str, Object obj, Object obj2) {
        a(3, str, obj, obj2, null);
    }

    public final void b(String str, Object obj, Object obj2, Object obj3) {
        a(5, str, obj, obj2, obj3);
    }

    public final void c(String str) {
        a(3, str, null, null, null);
    }

    public final void c(String str, Object obj) {
        a(4, str, obj, null, null);
    }

    public final void c(String str, Object obj, Object obj2) {
        a(5, str, obj, obj2, null);
    }

    public final void d(String str) {
        a(4, str, null, null, null);
    }

    public final void d(String str, Object obj) {
        a(5, str, obj, null, null);
    }

    public final void d(String str, Object obj, Object obj2) {
        a(6, str, obj, obj2, null);
    }

    public final void e(String str) {
        a(5, str, null, null, null);
    }

    public final void e(String str, Object obj) {
        a(6, str, obj, null, null);
    }

    public final void f(String str) {
        a(6, str, null, null, null);
    }

    public final ae h() {
        return this.f4006a;
    }

    protected final com.google.android.gms.common.util.d i() {
        return this.f4006a.c();
    }

    protected final Context j() {
        return this.f4006a.a();
    }

    protected final bw k() {
        return this.f4006a.e();
    }

    protected final be l() {
        return this.f4006a.d();
    }

    protected final com.google.android.gms.analytics.s m() {
        return this.f4006a.g();
    }

    public final com.google.android.gms.analytics.d n() {
        return this.f4006a.j();
    }

    protected final v o() {
        return this.f4006a.h();
    }

    protected final bj p() {
        return this.f4006a.i();
    }

    protected final co q() {
        return this.f4006a.k();
    }

    protected final ca r() {
        return this.f4006a.l();
    }

    protected final aw s() {
        return this.f4006a.o();
    }

    protected final u t() {
        return this.f4006a.n();
    }

    protected final ap u() {
        return this.f4006a.p();
    }

    protected final bi v() {
        return this.f4006a.q();
    }
}
