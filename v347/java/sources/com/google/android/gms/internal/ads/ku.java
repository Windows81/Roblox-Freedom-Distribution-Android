package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ku {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f5229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f5231d;
    private final double e;

    public ku(String str, double d2, double d3, double d4, int i) {
        this.f5228a = str;
        this.e = d2;
        this.f5231d = d3;
        this.f5229b = d4;
        this.f5230c = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ku)) {
            return false;
        }
        ku kuVar = (ku) obj;
        return com.google.android.gms.common.internal.v.a(this.f5228a, kuVar.f5228a) && this.f5231d == kuVar.f5231d && this.e == kuVar.e && this.f5230c == kuVar.f5230c && Double.compare(this.f5229b, kuVar.f5229b) == 0;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.v.a(this.f5228a, Double.valueOf(this.f5231d), Double.valueOf(this.e), Double.valueOf(this.f5229b), Integer.valueOf(this.f5230c));
    }

    public final String toString() {
        return com.google.android.gms.common.internal.v.a(this).a("name", this.f5228a).a("minBound", Double.valueOf(this.e)).a("maxBound", Double.valueOf(this.f5231d)).a("percent", Double.valueOf(this.f5229b)).a("count", Integer.valueOf(this.f5230c)).toString();
    }
}
