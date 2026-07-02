package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class ue implements tn<tf> {
    ue() {
    }

    private static tf c(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof xf)) {
            throw new GeneralSecurityException("expected KmsAeadKey proto");
        }
        xf xfVar = (xf) ackVar;
        zc.a(xfVar.a(), 0);
        String strA = xfVar.b().a();
        return tq.a(strA).b(strA);
    }

    private static tf d(zv zvVar) throws GeneralSecurityException {
        try {
            return c(xf.a(zvVar));
        } catch (abj e) {
            throw new GeneralSecurityException("expected KmsAeadKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ tf a(ack ackVar) throws GeneralSecurityException {
        return c(ackVar);
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ tf a(zv zvVar) throws GeneralSecurityException {
        return d(zvVar);
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof xh)) {
            throw new GeneralSecurityException("expected KmsAeadKeyFormat proto");
        }
        return xf.c().a((xh) ackVar).a(0).c();
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(zv zvVar) throws GeneralSecurityException {
        try {
            return b(xh.a(zvVar));
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized KmsAeadKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ws c(zv zvVar) throws GeneralSecurityException {
        return ws.d().a("type.googleapis.com/google.crypto.tink.KmsAeadKey").a(((xf) b(zvVar)).h()).a(ws.b.REMOTE).c();
    }
}
