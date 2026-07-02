package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class uf implements tf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f5594a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final wx f5595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final tf f5596c;

    public uf(wx wxVar, tf tfVar) {
        this.f5595b = wxVar;
        this.f5596c = tfVar;
    }

    @Override // com.google.android.gms.internal.ads.tf
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrI = tv.b(this.f5595b).i();
        byte[] bArrA = this.f5596c.a(bArrI, f5594a);
        byte[] bArrA2 = ((tf) tv.a(this.f5595b.a(), bArrI)).a(bArr, bArr2);
        return ByteBuffer.allocate(bArrA.length + 4 + bArrA2.length).putInt(bArrA.length).put(bArrA).put(bArrA2).array();
    }
}
