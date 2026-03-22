package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class afd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f3894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final byte[] f3895b;

    afd(int i, byte[] bArr) {
        this.f3894a = i;
        this.f3895b = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof afd)) {
            return false;
        }
        afd afdVar = (afd) obj;
        return this.f3894a == afdVar.f3894a && Arrays.equals(this.f3895b, afdVar.f3895b);
    }

    public final int hashCode() {
        return ((this.f3894a + 527) * 31) + Arrays.hashCode(this.f3895b);
    }
}
