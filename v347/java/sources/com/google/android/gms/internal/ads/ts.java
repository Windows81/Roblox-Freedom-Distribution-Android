package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import com.google.android.gms.internal.ads.xb;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class ts {
    @Deprecated
    public static final to a(byte[] bArr) throws GeneralSecurityException {
        try {
            xb xbVarA = xb.a(bArr);
            for (xb.b bVar : xbVarA.b()) {
                if (bVar.b().c() == ws.b.UNKNOWN_KEYMATERIAL || bVar.b().c() == ws.b.SYMMETRIC || bVar.b().c() == ws.b.ASYMMETRIC_PRIVATE) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return to.a(xbVarA);
        } catch (abj e) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
