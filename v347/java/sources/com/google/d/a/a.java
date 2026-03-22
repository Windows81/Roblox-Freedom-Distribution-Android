package com.google.d.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f6149a = new byte[256];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6151c;

    public a(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f6149a[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            i2 = (i2 + this.f6149a[i3] + bArr[i3 % bArr.length]) & 255;
            byte b2 = this.f6149a[i3];
            this.f6149a[i3] = this.f6149a[i2];
            this.f6149a[i2] = b2;
        }
        this.f6150b = 0;
        this.f6151c = 0;
    }

    public void a(byte[] bArr) {
        int i = this.f6150b;
        int i2 = this.f6151c;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            i2 = (i2 + this.f6149a[i]) & 255;
            byte b2 = this.f6149a[i];
            this.f6149a[i] = this.f6149a[i2];
            this.f6149a[i2] = b2;
            bArr[i3] = (byte) (bArr[i3] ^ this.f6149a[(this.f6149a[i] + this.f6149a[i2]) & 255]);
        }
        this.f6150b = i;
        this.f6151c = i2;
    }
}
