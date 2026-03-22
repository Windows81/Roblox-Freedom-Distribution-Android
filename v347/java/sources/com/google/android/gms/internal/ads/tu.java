package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class tu<P> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final P f5582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f5583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final wv f5584c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final xo f5585d;

    public tu(P p, byte[] bArr, wv wvVar, xo xoVar) {
        this.f5582a = p;
        this.f5583b = Arrays.copyOf(bArr, bArr.length);
        this.f5584c = wvVar;
        this.f5585d = xoVar;
    }

    public final P a() {
        return this.f5582a;
    }

    public final byte[] b() {
        if (this.f5583b == null) {
            return null;
        }
        return Arrays.copyOf(this.f5583b, this.f5583b.length);
    }
}
