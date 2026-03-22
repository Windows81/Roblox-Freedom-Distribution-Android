package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import javax.annotation.ParametersAreNonnullByDefault;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class alq extends alh {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MessageDigest f4180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4182d;

    public alq(int i) {
        int i2 = i / 8;
        this.f4181c = i % 8 > 0 ? i2 + 1 : i2;
        this.f4182d = i;
    }

    @Override // com.google.android.gms.internal.ads.alh
    public final byte[] a(String str) {
        byte[] bArr;
        synchronized (this.f4169a) {
            this.f4180b = a();
            if (this.f4180b == null) {
                bArr = new byte[0];
            } else {
                this.f4180b.reset();
                this.f4180b.update(str.getBytes(Charset.forName(Constants.UTF8_NAME)));
                byte[] bArrDigest = this.f4180b.digest();
                bArr = new byte[bArrDigest.length > this.f4181c ? this.f4181c : bArrDigest.length];
                System.arraycopy(bArrDigest, 0, bArr, 0, bArr.length);
                if (this.f4182d % 8 > 0) {
                    long j = 0;
                    for (int i = 0; i < bArr.length; i++) {
                        if (i > 0) {
                            j <<= 8;
                        }
                        j += (long) (bArr[i] & 255);
                    }
                    long j2 = j >>> (8 - (this.f4182d % 8));
                    for (int i2 = this.f4181c - 1; i2 >= 0; i2--) {
                        bArr[i2] = (byte) (255 & j2);
                        j2 >>>= 8;
                    }
                }
            }
        }
        return bArr;
    }
}
