package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class uu implements th<tr> {
    @Override // com.google.android.gms.internal.ads.th
    public final tn<tr> a(String str, String str2, int i) throws GeneralSecurityException {
        switch (str2.toLowerCase()) {
            case "mac":
                switch (str) {
                    case "type.googleapis.com/google.crypto.tink.HmacKey":
                        us usVar = new us();
                        if (i > 0) {
                            throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i)));
                        }
                        return usVar;
                    default:
                        throw new GeneralSecurityException(String.format("No support for primitive 'Mac' with key type '%s'.", str));
                }
            default:
                throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
        }
    }
}
