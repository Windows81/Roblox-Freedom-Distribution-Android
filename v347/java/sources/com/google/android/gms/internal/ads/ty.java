package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class ty {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final xq f5591a = xq.b().a(uv.f5611a).a(ti.a("TinkAead", "Aead", "AesCtrHmacAeadKey", 0, true)).a(ti.a("TinkAead", "Aead", "AesEaxKey", 0, true)).a(ti.a("TinkAead", "Aead", "AesGcmKey", 0, true)).a(ti.a("TinkAead", "Aead", "ChaCha20Poly1305Key", 0, true)).a(ti.a("TinkAead", "Aead", "KmsAeadKey", 0, true)).a(ti.a("TinkAead", "Aead", "KmsEnvelopeAeadKey", 0, true)).a("TINK_AEAD_1_0_0").c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final xq f5592b = xq.b().a(f5591a).a("TINK_AEAD_1_1_0").c();

    static {
        try {
            a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void a() throws GeneralSecurityException {
        tv.a("TinkAead", new tx());
        uv.a();
    }
}
