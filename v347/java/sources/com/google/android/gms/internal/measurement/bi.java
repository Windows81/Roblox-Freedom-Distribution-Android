package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@Deprecated
public final class bi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile com.google.android.gms.analytics.f f5911a = new as();

    @SuppressLint({"LogTagMismatch"})
    public static void a(String str) {
        bj bjVarB = bj.b();
        if (bjVarB != null) {
            bjVarB.b(str);
        } else if (a(0)) {
            Log.v(az.f5888b.a(), str);
        }
        com.google.android.gms.analytics.f fVar = f5911a;
        if (fVar != null) {
            fVar.a(str);
        }
    }

    @SuppressLint({"LogTagMismatch"})
    public static void a(String str, Object obj) {
        String string;
        bj bjVarB = bj.b();
        if (bjVarB != null) {
            bjVarB.e(str, obj);
        } else if (a(3)) {
            if (obj != null) {
                String strValueOf = String.valueOf(obj);
                string = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(strValueOf).length()).append(str).append(":").append(strValueOf).toString();
            } else {
                string = str;
            }
            Log.e(az.f5888b.a(), string);
        }
        com.google.android.gms.analytics.f fVar = f5911a;
        if (fVar != null) {
            fVar.c(str);
        }
    }

    private static boolean a(int i) {
        return f5911a != null && f5911a.a() <= i;
    }

    @SuppressLint({"LogTagMismatch"})
    public static void b(String str) {
        bj bjVarB = bj.b();
        if (bjVarB != null) {
            bjVarB.e(str);
        } else if (a(2)) {
            Log.w(az.f5888b.a(), str);
        }
        com.google.android.gms.analytics.f fVar = f5911a;
        if (fVar != null) {
            fVar.b(str);
        }
    }
}
