package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f6005a;

    protected o(r rVar) {
        com.google.android.gms.common.internal.w.a(rVar);
        this.f6005a = rVar;
    }

    private static String a(Object obj) {
        return obj == null ? "" : obj instanceof String ? (String) obj : obj instanceof Boolean ? obj == Boolean.TRUE ? "true" : "false" : obj instanceof Throwable ? ((Throwable) obj).toString() : obj.toString();
    }

    private final void a(int i, String str, Object obj, Object obj2, Object obj3) {
        bj bjVarF = this.f6005a != null ? this.f6005a.f() : null;
        if (bjVarF == null) {
            String strA = az.f5888b.a();
            if (Log.isLoggable(strA, i)) {
                Log.println(i, strA, c(str, obj, obj2, obj3));
                return;
            }
            return;
        }
        String strA2 = az.f5888b.a();
        if (Log.isLoggable(strA2, i)) {
            Log.println(i, strA2, bj.c(str, obj, obj2, obj3));
        }
        if (i >= 5) {
            bjVarF.a(i, str, obj, obj2, obj3);
        }
    }

    protected static String c(String str, Object obj, Object obj2, Object obj3) {
        if (str == null) {
            str = "";
        }
        String strA = a(obj);
        String strA2 = a(obj2);
        String strA3 = a(obj3);
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(strA)) {
            sb.append(str2);
            sb.append(strA);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(strA2)) {
            sb.append(str2);
            sb.append(strA2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(strA3)) {
            sb.append(str2);
            sb.append(strA3);
        }
        return sb.toString();
    }

    public static boolean w() {
        return Log.isLoggable(az.f5888b.a(), 2);
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

    public final r h() {
        return this.f6005a;
    }

    protected final com.google.android.gms.common.util.d i() {
        return this.f6005a.c();
    }

    protected final Context j() {
        return this.f6005a.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final bj k() {
        return this.f6005a.e();
    }

    protected final ar l() {
        return this.f6005a.d();
    }

    protected final com.google.android.gms.analytics.s m() {
        return this.f6005a.g();
    }

    public final com.google.android.gms.analytics.d n() {
        return this.f6005a.j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final i o() {
        return this.f6005a.h();
    }

    protected final aw p() {
        return this.f6005a.i();
    }

    protected final cb q() {
        return this.f6005a.k();
    }

    protected final bn r() {
        return this.f6005a.l();
    }

    protected final aj s() {
        return this.f6005a.o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final h t() {
        return this.f6005a.n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ac u() {
        return this.f6005a.p();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final av v() {
        return this.f6005a.q();
    }
}
