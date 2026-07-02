package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Signature;

/* JADX INFO: loaded from: classes.dex */
public final class ys implements yk<Signature> {
    @Override // com.google.android.gms.internal.ads.yk
    public final /* synthetic */ Signature a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? Signature.getInstance(str) : Signature.getInstance(str, provider);
    }
}
