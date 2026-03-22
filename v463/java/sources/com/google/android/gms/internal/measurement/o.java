package com.google.android.gms.internal.measurement;

import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f4671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final byte[] f4672b;

    o(int i, byte[] bArr) {
        this.f4671a = i;
        this.f4672b = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f4671a == oVar.f4671a && Arrays.equals(this.f4672b, oVar.f4672b);
    }

    public final int hashCode() {
        return ((this.f4671a + 527) * 31) + Arrays.hashCode(this.f4672b);
    }
}
