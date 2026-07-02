package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECField;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import javax.crypto.KeyAgreement;

/* JADX INFO: loaded from: classes.dex */
public final class ye {
    public static int a(EllipticCurve ellipticCurve) throws GeneralSecurityException {
        return (b(ellipticCurve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
    }

    public static KeyPair a(ECParameterSpec eCParameterSpec) throws GeneralSecurityException {
        KeyPairGenerator keyPairGeneratorA = yj.f5711d.a("EC");
        keyPairGeneratorA.initialize(eCParameterSpec);
        return keyPairGeneratorA.generateKeyPair();
    }

    public static ECPublicKey a(yg ygVar, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        ECParameterSpec eCParameterSpecA = a(ygVar);
        ECPoint eCPoint = new ECPoint(new BigInteger(1, bArr), new BigInteger(1, bArr2));
        a(eCPoint, eCParameterSpecA.getCurve());
        return (ECPublicKey) yj.e.a("EC").generatePublic(new ECPublicKeySpec(eCPoint, eCParameterSpecA));
    }

    public static ECParameterSpec a(yg ygVar) throws NoSuchAlgorithmException {
        switch (ygVar) {
            case NIST_P256:
                return a("115792089210356248762697446949407573530086143415290314195533631308867097853951", "115792089210356248762697446949407573529996955224135760342422259061068512044369", "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b", "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5");
            case NIST_P384:
                return a("39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319", "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643", "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef", "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f");
            case NIST_P521:
                return a("6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151", "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449", "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00", "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650");
            default:
                String strValueOf = String.valueOf(ygVar);
                throw new NoSuchAlgorithmException(new StringBuilder(String.valueOf(strValueOf).length() + 22).append("curve not implemented:").append(strValueOf).toString());
        }
    }

    private static ECParameterSpec a(String str, String str2, String str3, String str4, String str5) {
        BigInteger bigInteger = new BigInteger(str);
        return new ECParameterSpec(new EllipticCurve(new ECFieldFp(bigInteger), bigInteger.subtract(new BigInteger("3")), new BigInteger(str3, 16)), new ECPoint(new BigInteger(str4, 16), new BigInteger(str5, 16)), new BigInteger(str2), 1);
    }

    static void a(ECPoint eCPoint, EllipticCurve ellipticCurve) throws GeneralSecurityException {
        BigInteger bigIntegerB = b(ellipticCurve);
        BigInteger affineX = eCPoint.getAffineX();
        BigInteger affineY = eCPoint.getAffineY();
        if (affineX == null || affineY == null) {
            throw new GeneralSecurityException("point is at infinity");
        }
        if (affineX.signum() == -1 || affineX.compareTo(bigIntegerB) != -1) {
            throw new GeneralSecurityException("x is out of range");
        }
        if (affineY.signum() == -1 || affineY.compareTo(bigIntegerB) != -1) {
            throw new GeneralSecurityException("y is out of range");
        }
        if (!affineY.multiply(affineY).mod(bigIntegerB).equals(affineX.multiply(affineX).add(ellipticCurve.getA()).multiply(affineX).add(ellipticCurve.getB()).mod(bigIntegerB))) {
            throw new GeneralSecurityException("Point is not on curve");
        }
    }

    public static byte[] a(ECPrivateKey eCPrivateKey, ECPoint eCPoint) throws GeneralSecurityException {
        BigInteger bigIntegerMod;
        a(eCPoint, eCPrivateKey.getParams().getCurve());
        ECParameterSpec params = eCPrivateKey.getParams();
        params.getCurve();
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("EC").generatePublic(new ECPublicKeySpec(eCPoint, params));
        KeyAgreement keyAgreementA = yj.f5710c.a("ECDH");
        keyAgreementA.init(eCPrivateKey);
        keyAgreementA.doPhase(publicKeyGeneratePublic, true);
        byte[] bArrGenerateSecret = keyAgreementA.generateSecret();
        EllipticCurve curve = eCPrivateKey.getParams().getCurve();
        BigInteger bigInteger = new BigInteger(1, bArrGenerateSecret);
        if (bigInteger.signum() == -1 || bigInteger.compareTo(b(curve)) != -1) {
            throw new GeneralSecurityException("shared secret is out of range");
        }
        BigInteger bigIntegerB = b(curve);
        BigInteger bigIntegerMod2 = bigInteger.multiply(bigInteger).add(curve.getA()).multiply(bigInteger).add(curve.getB()).mod(bigIntegerB);
        if (bigIntegerB.signum() != 1) {
            throw new InvalidAlgorithmParameterException("p must be positive");
        }
        BigInteger bigIntegerMod3 = bigIntegerMod2.mod(bigIntegerB);
        BigInteger bigIntegerAdd = null;
        if (bigIntegerMod3.equals(BigInteger.ZERO)) {
            bigIntegerAdd = BigInteger.ZERO;
        } else {
            if (!bigIntegerB.testBit(0) || !bigIntegerB.testBit(1)) {
                if (bigIntegerB.testBit(0) && !bigIntegerB.testBit(1)) {
                    BigInteger bigInteger2 = BigInteger.ONE;
                    BigInteger bigIntegerShiftRight = bigIntegerB.subtract(BigInteger.ONE).shiftRight(1);
                    bigIntegerAdd = bigInteger2;
                    int i = 0;
                    while (true) {
                        BigInteger bigIntegerMod4 = bigIntegerAdd.multiply(bigIntegerAdd).subtract(bigIntegerMod3).mod(bigIntegerB);
                        if (bigIntegerMod4.equals(BigInteger.ZERO)) {
                            break;
                        }
                        BigInteger bigIntegerModPow = bigIntegerMod4.modPow(bigIntegerShiftRight, bigIntegerB);
                        if (bigIntegerModPow.add(BigInteger.ONE).equals(bigIntegerB)) {
                            BigInteger bigIntegerShiftRight2 = bigIntegerB.add(BigInteger.ONE).shiftRight(1);
                            BigInteger bigInteger3 = BigInteger.ONE;
                            int iBitLength = bigIntegerShiftRight2.bitLength() - 2;
                            BigInteger bigInteger4 = bigIntegerAdd;
                            while (iBitLength >= 0) {
                                BigInteger bigIntegerMultiply = bigInteger4.multiply(bigInteger3);
                                BigInteger bigIntegerMod5 = bigInteger4.multiply(bigInteger4).add(bigInteger3.multiply(bigInteger3).mod(bigIntegerB).multiply(bigIntegerMod4)).mod(bigIntegerB);
                                BigInteger bigIntegerMod6 = bigIntegerMultiply.add(bigIntegerMultiply).mod(bigIntegerB);
                                if (bigIntegerShiftRight2.testBit(iBitLength)) {
                                    bigIntegerMod = bigIntegerMod5.multiply(bigIntegerAdd).add(bigIntegerMod6.multiply(bigIntegerMod4)).mod(bigIntegerB);
                                    bigIntegerMod6 = bigIntegerAdd.multiply(bigIntegerMod6).add(bigIntegerMod5).mod(bigIntegerB);
                                } else {
                                    bigIntegerMod = bigIntegerMod5;
                                }
                                iBitLength--;
                                BigInteger bigInteger5 = bigIntegerMod6;
                                bigInteger4 = bigIntegerMod;
                                bigInteger3 = bigInteger5;
                            }
                            bigIntegerAdd = bigInteger4;
                        } else {
                            if (!bigIntegerModPow.equals(BigInteger.ONE)) {
                                throw new InvalidAlgorithmParameterException("p is not prime");
                            }
                            bigIntegerAdd = bigIntegerAdd.add(BigInteger.ONE);
                            i++;
                            if (i == 128 && !bigIntegerB.isProbablePrime(80)) {
                                throw new InvalidAlgorithmParameterException("p is not prime");
                            }
                        }
                    }
                }
            } else {
                bigIntegerAdd = bigIntegerMod3.modPow(bigIntegerB.add(BigInteger.ONE).shiftRight(2), bigIntegerB);
            }
            if (bigIntegerAdd != null && bigIntegerAdd.multiply(bigIntegerAdd).mod(bigIntegerB).compareTo(bigIntegerMod3) != 0) {
                throw new GeneralSecurityException("Could not find a modular square root");
            }
        }
        if (true != bigIntegerAdd.testBit(0)) {
            bigIntegerB.subtract(bigIntegerAdd).mod(bigIntegerB);
        }
        return bArrGenerateSecret;
    }

    private static BigInteger b(EllipticCurve ellipticCurve) throws GeneralSecurityException {
        ECField field = ellipticCurve.getField();
        if (field instanceof ECFieldFp) {
            return ((ECFieldFp) field).getP();
        }
        throw new GeneralSecurityException("Only curves over prime order fields are supported");
    }
}
