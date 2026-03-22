package com.google.android.gms.common;

import com.google.android.gms.common.g;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class r extends g.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final WeakReference<byte[]> f3841b = new WeakReference<>(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<byte[]> f3842a;

    r(byte[] bArr) {
        super(bArr);
        this.f3842a = f3841b;
    }

    @Override // com.google.android.gms.common.g.a
    final byte[] a() {
        byte[] bArrD;
        synchronized (this) {
            bArrD = this.f3842a.get();
            if (bArrD == null) {
                bArrD = d();
                this.f3842a = new WeakReference<>(bArrD);
            }
        }
        return bArrD;
    }

    protected abstract byte[] d();
}
