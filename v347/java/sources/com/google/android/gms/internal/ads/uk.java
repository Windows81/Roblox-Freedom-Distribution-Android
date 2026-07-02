package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class uk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final xq f5599a = xq.b().a(ty.f5591a).a(ti.a("TinkHybridDecrypt", "HybridDecrypt", "EciesAeadHkdfPrivateKey", 0, true)).a(ti.a("TinkHybridEncrypt", "HybridEncrypt", "EciesAeadHkdfPublicKey", 0, true)).a("TINK_HYBRID_1_0_0").c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final xq f5600b = xq.b().a(f5599a).a("TINK_HYBRID_1_1_0").c();

    static {
        try {
            tv.a("TinkHybridEncrypt", new um());
            tv.a("TinkHybridDecrypt", new ul());
            ty.a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }
}
