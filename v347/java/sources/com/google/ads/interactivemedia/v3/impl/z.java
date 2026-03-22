package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.impl.w;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f2929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w.a f2930b;

    z(long j, w.a aVar) {
        this.f2929a = j;
        this.f2930b = aVar;
    }

    public long a() {
        return this.f2929a;
    }

    public w.a b() {
        return this.f2930b;
    }

    public int hashCode() {
        return (((int) this.f2929a) * 31) + this.f2930b.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            z zVar = (z) obj;
            return this.f2929a == zVar.f2929a && this.f2930b == zVar.f2930b;
        }
        return false;
    }

    public String toString() {
        long j = this.f2929a;
        String strValueOf = String.valueOf(this.f2930b);
        return new StringBuilder(String.valueOf(strValueOf).length() + 68).append("NativeBridgeConfig [adTimeUpdateMs=").append(j).append(", adUiStyle=").append(strValueOf).append("]").toString();
    }
}
