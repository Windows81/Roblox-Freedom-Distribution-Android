package com.google.android.gms.common;

import com.google.android.gms.common.g;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class q extends g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f3840a;

    q(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f3840a = bArr;
    }

    @Override // com.google.android.gms.common.g.a
    final byte[] a() {
        return this.f3840a;
    }
}
