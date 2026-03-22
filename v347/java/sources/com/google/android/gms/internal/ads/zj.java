package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class zj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f5733a = new byte[256];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5735c;

    public zj(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f5733a[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            i2 = (i2 + this.f5733a[i3] + bArr[i3 % bArr.length]) & 255;
            byte b2 = this.f5733a[i3];
            this.f5733a[i3] = this.f5733a[i2];
            this.f5733a[i2] = b2;
        }
        this.f5734b = 0;
        this.f5735c = 0;
    }

    public final void a(byte[] bArr) {
        int i = this.f5734b;
        int i2 = this.f5735c;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            i2 = (i2 + this.f5733a[i]) & 255;
            byte b2 = this.f5733a[i];
            this.f5733a[i] = this.f5733a[i2];
            this.f5733a[i2] = b2;
            bArr[i3] = (byte) (bArr[i3] ^ this.f5733a[(this.f5733a[i] + this.f5733a[i2]) & 255]);
        }
        this.f5734b = i;
        this.f5735c = i2;
    }
}
