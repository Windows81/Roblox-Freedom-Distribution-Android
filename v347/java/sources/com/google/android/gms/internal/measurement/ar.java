package com.google.android.gms.internal.measurement;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class ar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f5873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Boolean f5874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5875c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set<Integer> f5876d;

    protected ar(r rVar) {
        com.google.android.gms.common.internal.w.a(rVar);
        this.f5873a = rVar;
    }

    public static boolean b() {
        return az.f5887a.a().booleanValue();
    }

    public static int c() {
        return az.r.a().intValue();
    }

    public static long d() {
        return az.f.a().longValue();
    }

    public static long e() {
        return az.g.a().longValue();
    }

    public static int f() {
        return az.i.a().intValue();
    }

    public static int g() {
        return az.j.a().intValue();
    }

    public static String h() {
        return az.l.a();
    }

    public static String i() {
        return az.k.a();
    }

    public static String j() {
        return az.m.a();
    }

    public static long l() {
        return az.y.a().longValue();
    }

    public final boolean a() {
        if (this.f5874b == null) {
            synchronized (this) {
                if (this.f5874b == null) {
                    ApplicationInfo applicationInfo = this.f5873a.a().getApplicationInfo();
                    String strA = com.google.android.gms.common.util.p.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f5874b = Boolean.valueOf(str != null && str.equals(strA));
                    }
                    if ((this.f5874b == null || !this.f5874b.booleanValue()) && "com.google.android.gms.analytics".equals(strA)) {
                        this.f5874b = Boolean.TRUE;
                    }
                    if (this.f5874b == null) {
                        this.f5874b = Boolean.TRUE;
                        this.f5873a.e().f("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f5874b.booleanValue();
    }

    public final Set<Integer> k() {
        String strA = az.u.a();
        if (this.f5876d == null || this.f5875c == null || !this.f5875c.equals(strA)) {
            String[] strArrSplit = TextUtils.split(strA, ",");
            HashSet hashSet = new HashSet();
            for (String str : strArrSplit) {
                try {
                    hashSet.add(Integer.valueOf(Integer.parseInt(str)));
                } catch (NumberFormatException e) {
                }
            }
            this.f5875c = strA;
            this.f5876d = hashSet;
        }
        return this.f5876d;
    }
}
