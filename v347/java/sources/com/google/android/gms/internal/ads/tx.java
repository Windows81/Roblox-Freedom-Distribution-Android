package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class tx implements th<tf> {
    @Override // com.google.android.gms.internal.ads.th
    public final tn<tf> a(String str, String str2, int i) throws GeneralSecurityException {
        tn<tf> ugVar;
        switch (str2.toLowerCase()) {
            case "aead":
                switch (str) {
                    case "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey":
                        ugVar = new tz();
                        break;
                    case "type.googleapis.com/google.crypto.tink.AesEaxKey":
                        ugVar = new ub();
                        break;
                    case "type.googleapis.com/google.crypto.tink.AesGcmKey":
                        ugVar = new uc();
                        break;
                    case "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key":
                        ugVar = new ud();
                        break;
                    case "type.googleapis.com/google.crypto.tink.KmsAeadKey":
                        ugVar = new ue();
                        break;
                    case "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey":
                        ugVar = new ug();
                        break;
                    default:
                        throw new GeneralSecurityException(String.format("No support for primitive 'Aead' with key type '%s'.", str));
                }
                if (ugVar.a() < i) {
                    throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i)));
                }
                return ugVar;
            default:
                throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
    }
}
