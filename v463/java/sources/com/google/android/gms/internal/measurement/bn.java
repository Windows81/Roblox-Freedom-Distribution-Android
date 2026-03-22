package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bn<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final V f4087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.common.a.a<V> f4088b;

    private bn(com.google.android.gms.common.a.a<V> aVar, V v) {
        com.google.android.gms.common.internal.aa.a(aVar);
        this.f4088b = aVar;
        this.f4087a = v;
    }

    static bn<Float> a(String str, float f, float f2) {
        Float fValueOf = Float.valueOf(0.5f);
        return new bn<>(com.google.android.gms.common.a.a.a(str, fValueOf), fValueOf);
    }

    static bn<Integer> a(String str, int i, int i2) {
        return new bn<>(com.google.android.gms.common.a.a.a(str, Integer.valueOf(i2)), Integer.valueOf(i));
    }

    static bn<Long> a(String str, long j, long j2) {
        return new bn<>(com.google.android.gms.common.a.a.a(str, Long.valueOf(j2)), Long.valueOf(j));
    }

    static bn<String> a(String str, String str2, String str3) {
        return new bn<>(com.google.android.gms.common.a.a.a(str, str3), str2);
    }

    static bn<Boolean> a(String str, boolean z, boolean z2) {
        return new bn<>(com.google.android.gms.common.a.a.a(str, z2), Boolean.valueOf(z));
    }

    public final V a() {
        return this.f4087a;
    }
}
