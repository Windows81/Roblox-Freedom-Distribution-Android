package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
class aac extends aab {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final byte[] f3689b;

    aac(byte[] bArr) {
        this.f3689b = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zv
    public byte a(int i) {
        return this.f3689b[i];
    }

    @Override // com.google.android.gms.internal.ads.zv
    public int a() {
        return this.f3689b.length;
    }

    @Override // com.google.android.gms.internal.ads.zv
    protected final int a(int i, int i2, int i3) {
        return abf.a(i, this.f3689b, g(), i3);
    }

    @Override // com.google.android.gms.internal.ads.zv
    public final zv a(int i, int i2) {
        int iB = b(0, i2, a());
        return iB == 0 ? zv.f5750a : new zy(this.f3689b, g(), iB);
    }

    @Override // com.google.android.gms.internal.ads.zv
    protected final String a(Charset charset) {
        return new String(this.f3689b, g(), a(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zv
    final void a(zu zuVar) throws IOException {
        zuVar.a(this.f3689b, g(), a());
    }

    @Override // com.google.android.gms.internal.ads.zv
    protected void a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f3689b, 0, bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.ads.aab
    final boolean a(zv zvVar, int i, int i2) {
        if (i2 > zvVar.a()) {
            throw new IllegalArgumentException(new StringBuilder(40).append("Length too large: ").append(i2).append(a()).toString());
        }
        if (i2 > zvVar.a()) {
            throw new IllegalArgumentException(new StringBuilder(59).append("Ran off end of other: 0, ").append(i2).append(", ").append(zvVar.a()).toString());
        }
        if (!(zvVar instanceof aac)) {
            return zvVar.a(0, i2).equals(a(0, i2));
        }
        aac aacVar = (aac) zvVar;
        byte[] bArr = this.f3689b;
        byte[] bArr2 = aacVar.f3689b;
        int iG = g() + i2;
        int iG2 = g();
        int iG3 = aacVar.g();
        while (iG2 < iG) {
            if (bArr[iG2] != bArr2[iG3]) {
                return false;
            }
            iG2++;
            iG3++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zv
    public final boolean d() {
        int iG = g();
        return aee.a(this.f3689b, iG, a() + iG);
    }

    @Override // com.google.android.gms.internal.ads.zv
    public final aae e() {
        return aae.a(this.f3689b, g(), a(), true);
    }

    @Override // com.google.android.gms.internal.ads.zv
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zv) && a() == ((zv) obj).a()) {
            if (a() == 0) {
                return true;
            }
            if (!(obj instanceof aac)) {
                return obj.equals(this);
            }
            int iF = f();
            int iF2 = ((aac) obj).f();
            if (iF == 0 || iF2 == 0 || iF == iF2) {
                return a((aac) obj, 0, a());
            }
            return false;
        }
        return false;
    }

    protected int g() {
        return 0;
    }
}
