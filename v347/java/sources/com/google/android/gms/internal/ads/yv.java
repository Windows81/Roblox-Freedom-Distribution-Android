package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class yv implements tr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Mac f5713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Key f5716d;

    public yv(String str, Key key, int i) throws GeneralSecurityException {
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        switch (str) {
            case "HMACSHA1":
                if (i > 20) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
                break;
            case "HMACSHA256":
                if (i > 32) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
                break;
            case "HMACSHA512":
                if (i > 64) {
                    throw new InvalidAlgorithmParameterException("tag size too big");
                }
                break;
            default:
                String strValueOf = String.valueOf(str);
                throw new NoSuchAlgorithmException(strValueOf.length() != 0 ? "unknown Hmac algorithm: ".concat(strValueOf) : new String("unknown Hmac algorithm: "));
        }
        this.f5715c = str;
        this.f5714b = i;
        this.f5716d = key;
        this.f5713a = yj.f5709b.a(str);
        this.f5713a.init(key);
    }

    @Override // com.google.android.gms.internal.ads.tr
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        Mac macA;
        try {
            macA = (Mac) this.f5713a.clone();
        } catch (CloneNotSupportedException e) {
            macA = yj.f5709b.a(this.f5715c);
            macA.init(this.f5716d);
        }
        macA.update(bArr);
        byte[] bArr2 = new byte[this.f5714b];
        System.arraycopy(macA.doFinal(), 0, bArr2, 0, this.f5714b);
        return bArr2;
    }
}
