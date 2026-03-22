package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class xx extends za {
    public xx(byte[] bArr) throws InvalidKeyException {
        super(bArr);
    }

    @Override // com.google.android.gms.internal.ads.za
    final yz a(byte[] bArr, int i) throws InvalidKeyException {
        return new xw(bArr, i);
    }

    @Override // com.google.android.gms.internal.ads.za, com.google.android.gms.internal.ads.tf
    public final /* bridge */ /* synthetic */ byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return super.a(bArr, bArr2);
    }
}
