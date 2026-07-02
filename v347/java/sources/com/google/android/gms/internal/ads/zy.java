package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zy extends aac {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5756c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5757d;

    zy(byte[] bArr, int i, int i2) {
        super(bArr);
        b(i, i + i2, bArr.length);
        this.f5756c = i;
        this.f5757d = i2;
    }

    @Override // com.google.android.gms.internal.ads.aac, com.google.android.gms.internal.ads.zv
    public final byte a(int i) {
        int iA = a();
        if (((iA - (i + 1)) | i) >= 0) {
            return this.f3689b[this.f5756c + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(new StringBuilder(22).append("Index < 0: ").append(i).toString());
        }
        throw new ArrayIndexOutOfBoundsException(new StringBuilder(40).append("Index > length: ").append(i).append(", ").append(iA).toString());
    }

    @Override // com.google.android.gms.internal.ads.aac, com.google.android.gms.internal.ads.zv
    public final int a() {
        return this.f5757d;
    }

    @Override // com.google.android.gms.internal.ads.aac, com.google.android.gms.internal.ads.zv
    protected final void a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f3689b, g(), bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.ads.aac
    protected final int g() {
        return this.f5756c;
    }
}
