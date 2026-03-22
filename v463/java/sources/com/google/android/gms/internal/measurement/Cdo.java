package com.google.android.gms.internal.measurement;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.do, reason: invalid class name */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class Cdo<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final jy<V> f4214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4215b;

    private Cdo(String str, jy<V> jyVar) {
        com.google.android.gms.common.internal.aa.a(jyVar);
        this.f4214a = jyVar;
        this.f4215b = str;
    }

    static Cdo<Double> a(String str, double d2, double d3) {
        return new Cdo<>(str, dn.V.a(str, -3.0d));
    }

    static Cdo<Integer> a(String str, int i, int i2) {
        return new Cdo<>(str, dn.V.a(str, i));
    }

    static Cdo<Long> a(String str, long j, long j2) {
        return new Cdo<>(str, dn.V.a(str, j));
    }

    static Cdo<String> a(String str, String str2, String str3) {
        return new Cdo<>(str, dn.V.a(str, str2));
    }

    static Cdo<Boolean> a(String str, boolean z, boolean z2) {
        return new Cdo<>(str, dn.V.a(str, z));
    }

    public final V a(V v) {
        return v != null ? v : this.f4214a.a();
    }

    public final String a() {
        return this.f4215b;
    }

    public final V b() {
        return this.f4214a.a();
    }
}
