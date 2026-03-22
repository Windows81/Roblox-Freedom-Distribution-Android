package com.google.android.gms.internal.measurement;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class be {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ae f4068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Boolean f4069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4070c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set<Integer> f4071d;

    protected be(ae aeVar) {
        com.google.android.gms.common.internal.aa.a(aeVar);
        this.f4068a = aeVar;
    }

    public static boolean b() {
        return bm.f4082a.a().booleanValue();
    }

    public static int c() {
        return bm.r.a().intValue();
    }

    public static long d() {
        return bm.f.a().longValue();
    }

    public static long e() {
        return bm.g.a().longValue();
    }

    public static int f() {
        return bm.i.a().intValue();
    }

    public static int g() {
        return bm.j.a().intValue();
    }

    public static String h() {
        return bm.l.a();
    }

    public static String i() {
        return bm.k.a();
    }

    public static String j() {
        return bm.m.a();
    }

    public static long l() {
        return bm.y.a().longValue();
    }

    public final boolean a() {
        if (this.f4069b == null) {
            synchronized (this) {
                if (this.f4069b == null) {
                    ApplicationInfo applicationInfo = this.f4068a.a().getApplicationInfo();
                    String strA = com.google.android.gms.common.util.n.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f4069b = Boolean.valueOf(str != null && str.equals(strA));
                    }
                    if ((this.f4069b == null || !this.f4069b.booleanValue()) && "com.google.android.gms.analytics".equals(strA)) {
                        this.f4069b = Boolean.TRUE;
                    }
                    if (this.f4069b == null) {
                        this.f4069b = Boolean.TRUE;
                        this.f4068a.e().f("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f4069b.booleanValue();
    }

    public final Set<Integer> k() {
        String str;
        String strA = bm.u.a();
        if (this.f4071d == null || (str = this.f4070c) == null || !str.equals(strA)) {
            String[] strArrSplit = TextUtils.split(strA, ",");
            HashSet hashSet = new HashSet();
            for (String str2 : strArrSplit) {
                try {
                    hashSet.add(Integer.valueOf(Integer.parseInt(str2)));
                } catch (NumberFormatException unused) {
                }
            }
            this.f4070c = strA;
            this.f4071d = hashSet;
        }
        return this.f4071d;
    }
}
