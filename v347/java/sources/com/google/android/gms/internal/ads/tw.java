package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import com.google.android.gms.internal.ads.xb;
import com.google.android.gms.internal.ads.xd;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
final class tw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f5590a = Charset.forName(Constants.UTF8_NAME);

    public static xd a(xb xbVar) {
        xd.a aVarA = xd.a().a(xbVar.a());
        for (xb.b bVar : xbVar.b()) {
            aVarA.a(xd.b.a().a(bVar.b().a()).a(bVar.c()).a(bVar.e()).a(bVar.d()).c());
        }
        return aVarA.c();
    }

    public static void b(xb xbVar) throws GeneralSecurityException {
        if (xbVar.c() == 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        int iA = xbVar.a();
        boolean z = true;
        boolean z2 = false;
        for (xb.b bVar : xbVar.b()) {
            if (!bVar.a()) {
                throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(bVar.d())));
            }
            if (bVar.e() == xo.UNKNOWN_PREFIX) {
                throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(bVar.d())));
            }
            if (bVar.c() == wv.UNKNOWN_STATUS) {
                throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(bVar.d())));
            }
            if (bVar.c() == wv.ENABLED && bVar.d() == iA) {
                if (z2) {
                    throw new GeneralSecurityException("keyset contains multiple primary keys");
                }
                z2 = true;
            }
            z = bVar.b().c() != ws.b.ASYMMETRIC_PUBLIC ? false : z;
        }
        if (!z2 && !z) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }
}
