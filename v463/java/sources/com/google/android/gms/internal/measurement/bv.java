package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@Deprecated
public final class bv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile com.google.android.gms.analytics.f f4106a = new bf();

    public static void a(String str) {
        bw bwVarB = bw.b();
        if (bwVarB != null) {
            bwVarB.b(str);
        } else if (a(0)) {
            Log.v(bm.f4083b.a(), str);
        }
        com.google.android.gms.analytics.f fVar = f4106a;
        if (fVar != null) {
            fVar.a(str);
        }
    }

    public static void a(String str, Object obj) {
        String string;
        bw bwVarB = bw.b();
        if (bwVarB != null) {
            bwVarB.e(str, obj);
        } else if (a(3)) {
            if (obj != null) {
                String strValueOf = String.valueOf(obj);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(strValueOf).length());
                sb.append(str);
                sb.append(":");
                sb.append(strValueOf);
                string = sb.toString();
            } else {
                string = str;
            }
            Log.e(bm.f4083b.a(), string);
        }
        com.google.android.gms.analytics.f fVar = f4106a;
        if (fVar != null) {
            fVar.c(str);
        }
    }

    private static boolean a(int i) {
        return f4106a != null && f4106a.a() <= i;
    }

    public static void b(String str) {
        bw bwVarB = bw.b();
        if (bwVarB != null) {
            bwVarB.e(str);
        } else if (a(2)) {
            Log.w(bm.f4083b.a(), str);
        }
        com.google.android.gms.analytics.f fVar = f4106a;
        if (fVar != null) {
            fVar.b(str);
        }
    }
}
