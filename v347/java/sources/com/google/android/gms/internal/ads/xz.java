package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class xz implements tl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f5684a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ECPrivateKey f5685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final yb f5686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5687d;
    private final byte[] e;
    private final yh f;
    private final xy g;

    public xz(ECPrivateKey eCPrivateKey, byte[] bArr, String str, yh yhVar, xy xyVar) throws GeneralSecurityException {
        this.f5685b = eCPrivateKey;
        this.f5686c = new yb(eCPrivateKey);
        this.e = bArr;
        this.f5687d = str;
        this.f = yhVar;
        this.g = xyVar;
    }
}
