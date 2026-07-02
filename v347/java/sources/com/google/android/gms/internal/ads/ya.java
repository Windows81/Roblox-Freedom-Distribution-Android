package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;

/* JADX INFO: loaded from: classes.dex */
public final class ya implements tm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f5688a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final yc f5689b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5690c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f5691d;
    private final yh e;
    private final xy f;

    public ya(ECPublicKey eCPublicKey, byte[] bArr, String str, yh yhVar, xy xyVar) throws GeneralSecurityException {
        ye.a(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.f5689b = new yc(eCPublicKey);
        this.f5691d = bArr;
        this.f5690c = str;
        this.e = yhVar;
        this.f = xyVar;
    }

    @Override // com.google.android.gms.internal.ads.tm
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        yd ydVarA = this.f5689b.a(this.f5690c, this.f5691d, bArr2, this.f.a(), this.e);
        byte[] bArrA = this.f.a(ydVarA.b()).a(bArr, f5688a);
        byte[] bArrA2 = ydVarA.a();
        return ByteBuffer.allocate(bArrA2.length + bArrA.length).put(bArrA2).put(bArrA).array();
    }
}
