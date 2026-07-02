package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class ud implements tn<tf> {
    ud() {
    }

    private static vr b() throws GeneralSecurityException {
        return vr.c().a(0).a(zv.a(yx.a(32))).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.tn
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final tf a(zv zvVar) throws GeneralSecurityException {
        try {
            vr vrVarA = vr.a(zvVar);
            if (!(vrVarA instanceof vr)) {
                throw new GeneralSecurityException("expected ChaCha20Poly1305Key proto");
            }
            vr vrVar = vrVarA;
            zc.a(vrVar.a(), 0);
            if (vrVar.b().a() != 32) {
                throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
            }
            return new xx(vrVar.b().b());
        } catch (abj e) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305 key", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ tf a(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof vr)) {
            throw new GeneralSecurityException("expected ChaCha20Poly1305Key proto");
        }
        vr vrVar = (vr) ackVar;
        zc.a(vrVar.a(), 0);
        if (vrVar.b().a() != 32) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
        }
        return new xx(vrVar.b().b());
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(ack ackVar) throws GeneralSecurityException {
        return b();
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(zv zvVar) throws GeneralSecurityException {
        return b();
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ws c(zv zvVar) throws GeneralSecurityException {
        return ws.d().a("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key").a(b().h()).a(ws.b.SYMMETRIC).c();
    }
}
