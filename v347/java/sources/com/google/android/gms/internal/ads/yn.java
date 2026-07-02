package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.KeyAgreement;

/* JADX INFO: loaded from: classes.dex */
public final class yn implements yk<KeyAgreement> {
    @Override // com.google.android.gms.internal.ads.yk
    public final /* synthetic */ KeyAgreement a(String str, Provider provider) throws GeneralSecurityException {
        return provider == null ? KeyAgreement.getInstance(str) : KeyAgreement.getInstance(str, provider);
    }
}
