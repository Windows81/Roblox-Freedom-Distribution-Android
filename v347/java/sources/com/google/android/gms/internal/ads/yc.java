package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class yc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ECPublicKey f5693a;

    public yc(ECPublicKey eCPublicKey) {
        this.f5693a = eCPublicKey;
    }

    public final yd a(String str, byte[] bArr, byte[] bArr2, int i, yh yhVar) throws GeneralSecurityException {
        byte[] bArr3;
        KeyPair keyPairA = ye.a(this.f5693a.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) keyPairA.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) keyPairA.getPrivate();
        ECPublicKey eCPublicKey2 = this.f5693a;
        ECParameterSpec params = eCPublicKey2.getParams();
        ECParameterSpec params2 = eCPrivateKey.getParams();
        if (!params.getCurve().equals(params2.getCurve()) || !params.getGenerator().equals(params2.getGenerator()) || !params.getOrder().equals(params2.getOrder()) || params.getCofactor() != params2.getCofactor()) {
            throw new GeneralSecurityException("invalid public key spec");
        }
        byte[] bArrA = ye.a(eCPrivateKey, eCPublicKey2.getW());
        EllipticCurve curve = eCPublicKey.getParams().getCurve();
        ECPoint w = eCPublicKey.getW();
        ye.a(w, curve);
        int iA = ye.a(curve);
        switch (yhVar) {
            case UNCOMPRESSED:
                byte[] bArr4 = new byte[(iA * 2) + 1];
                byte[] byteArray = w.getAffineX().toByteArray();
                byte[] byteArray2 = w.getAffineY().toByteArray();
                System.arraycopy(byteArray2, 0, bArr4, ((iA * 2) + 1) - byteArray2.length, byteArray2.length);
                System.arraycopy(byteArray, 0, bArr4, (iA + 1) - byteArray.length, byteArray.length);
                bArr4[0] = 4;
                bArr3 = bArr4;
                break;
            case COMPRESSED:
                bArr3 = new byte[iA + 1];
                byte[] byteArray3 = w.getAffineX().toByteArray();
                System.arraycopy(byteArray3, 0, bArr3, (iA + 1) - byteArray3.length, byteArray3.length);
                bArr3[0] = (byte) (w.getAffineY().testBit(0) ? 3 : 2);
                break;
            default:
                String strValueOf = String.valueOf(yhVar);
                throw new GeneralSecurityException(new StringBuilder(String.valueOf(strValueOf).length() + 15).append("invalid format:").append(strValueOf).toString());
        }
        byte[] bArrA2 = xv.a(bArr3, bArrA);
        Mac macA = yj.f5709b.a(str);
        if (i > macA.getMacLength() * 255) {
            throw new GeneralSecurityException("size too large");
        }
        if (bArr == null || bArr.length == 0) {
            macA.init(new SecretKeySpec(new byte[macA.getMacLength()], str));
        } else {
            macA.init(new SecretKeySpec(bArr, str));
        }
        byte[] bArr5 = new byte[i];
        macA.init(new SecretKeySpec(macA.doFinal(bArrA2), str));
        byte[] bArrDoFinal = new byte[0];
        int i2 = 1;
        int length = 0;
        while (true) {
            macA.update(bArrDoFinal);
            macA.update(bArr2);
            macA.update((byte) i2);
            bArrDoFinal = macA.doFinal();
            if (bArrDoFinal.length + length >= i) {
                System.arraycopy(bArrDoFinal, 0, bArr5, length, i - length);
                return new yd(bArr3, bArr5);
            }
            System.arraycopy(bArrDoFinal, 0, bArr5, length, bArrDoFinal.length);
            length += bArrDoFinal.length;
            i2++;
        }
    }
}
