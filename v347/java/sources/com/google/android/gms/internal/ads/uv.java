package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class uv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final xq f5611a = xq.b().a("TINK_MAC_1_0_0").a(ti.a("TinkMac", "Mac", "HmacKey", 0, true)).c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final xq f5612b = xq.b().a(f5611a).a("TINK_MAC_1_1_0").c();

    static {
        try {
            a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void a() throws GeneralSecurityException {
        tv.a("TinkMac", new uu());
    }
}
