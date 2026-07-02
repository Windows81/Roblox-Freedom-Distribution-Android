package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class um implements th<tm> {
    @Override // com.google.android.gms.internal.ads.th
    public final tn<tm> a(String str, String str2, int i) throws GeneralSecurityException {
        switch (str2.toLowerCase()) {
            case "hybridencrypt":
                switch (str) {
                    case "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey":
                        uj ujVar = new uj();
                        if (i > 0) {
                            throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i)));
                        }
                        return ujVar;
                    default:
                        throw new GeneralSecurityException(String.format("No support for primitive 'HybridEncrypt' with key type '%s'.", str));
                }
            default:
                throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
    }
}
