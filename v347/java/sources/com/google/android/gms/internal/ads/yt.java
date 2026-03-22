package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class yt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f5712a;

    private yt(byte[] bArr, int i, int i2) {
        this.f5712a = new byte[i2];
        System.arraycopy(bArr, 0, this.f5712a, 0, i2);
    }

    public static yt a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new yt(bArr, 0, bArr.length);
    }

    public final byte[] a() {
        byte[] bArr = new byte[this.f5712a.length];
        System.arraycopy(this.f5712a, 0, bArr, 0, this.f5712a.length);
        return bArr;
    }
}
