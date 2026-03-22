package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ba<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final V f5895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.common.a.a<V> f5896b;

    private ba(com.google.android.gms.common.a.a<V> aVar, V v) {
        com.google.android.gms.common.internal.w.a(aVar);
        this.f5896b = aVar;
        this.f5895a = v;
    }

    static ba<Float> a(String str, float f, float f2) {
        return new ba<>(com.google.android.gms.common.a.a.a(str, Float.valueOf(0.5f)), Float.valueOf(0.5f));
    }

    static ba<Integer> a(String str, int i, int i2) {
        return new ba<>(com.google.android.gms.common.a.a.a(str, Integer.valueOf(i2)), Integer.valueOf(i));
    }

    static ba<Long> a(String str, long j, long j2) {
        return new ba<>(com.google.android.gms.common.a.a.a(str, Long.valueOf(j2)), Long.valueOf(j));
    }

    static ba<String> a(String str, String str2, String str3) {
        return new ba<>(com.google.android.gms.common.a.a.a(str, str3), str2);
    }

    static ba<Boolean> a(String str, boolean z, boolean z2) {
        return new ba<>(com.google.android.gms.common.a.a.a(str, z2), Boolean.valueOf(z));
    }

    public final V a() {
        return this.f5895a;
    }
}
