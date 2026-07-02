package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
final class up {
    public static yg a(wh whVar) throws GeneralSecurityException {
        switch (uq.f5604b[whVar.ordinal()]) {
            case 1:
                return yg.NIST_P256;
            case 2:
                return yg.NIST_P384;
            case 3:
                return yg.NIST_P521;
            default:
                String strValueOf = String.valueOf(whVar);
                throw new GeneralSecurityException(new StringBuilder(String.valueOf(strValueOf).length() + 20).append("unknown curve type: ").append(strValueOf).toString());
        }
    }

    public static yh a(vt vtVar) throws GeneralSecurityException {
        switch (uq.f5605c[vtVar.ordinal()]) {
            case 1:
                return yh.UNCOMPRESSED;
            case 2:
                return yh.COMPRESSED;
            default:
                String strValueOf = String.valueOf(vtVar);
                throw new GeneralSecurityException(new StringBuilder(String.valueOf(strValueOf).length() + 22).append("unknown point format: ").append(strValueOf).toString());
        }
    }

    public static String a(wk wkVar) throws NoSuchAlgorithmException {
        switch (uq.f5603a[wkVar.ordinal()]) {
            case 1:
                return "HmacSha1";
            case 2:
                return "HmacSha256";
            case 3:
                return "HmacSha512";
            default:
                String strValueOf = String.valueOf(wkVar);
                throw new NoSuchAlgorithmException(new StringBuilder(String.valueOf(strValueOf).length() + 27).append("hash unsupported for HMAC: ").append(strValueOf).toString());
        }
    }

    public static void a(vz vzVar) throws GeneralSecurityException {
        ye.a(a(vzVar.a().a()));
        a(vzVar.a().b());
        if (vzVar.c() == vt.UNKNOWN_FORMAT) {
            throw new GeneralSecurityException("unknown EC point format");
        }
        tv.a(vzVar.b().a());
    }
}
