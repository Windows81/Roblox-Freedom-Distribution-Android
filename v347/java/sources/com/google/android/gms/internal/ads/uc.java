package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class uc implements tn<tf> {
    uc() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.tn
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final tf a(zv zvVar) throws GeneralSecurityException {
        try {
            vn vnVarA = vn.a(zvVar);
            if (!(vnVarA instanceof vn)) {
                throw new GeneralSecurityException("expected AesGcmKey proto");
            }
            vn vnVar = vnVarA;
            zc.a(vnVar.a(), 0);
            zc.a(vnVar.b().a());
            return new xu(vnVar.b().b());
        } catch (abj e) {
            throw new GeneralSecurityException("expected AesGcmKey proto");
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ tf a(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof vn)) {
            throw new GeneralSecurityException("expected AesGcmKey proto");
        }
        vn vnVar = (vn) ackVar;
        zc.a(vnVar.a(), 0);
        zc.a(vnVar.b().a());
        return new xu(vnVar.b().b());
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof vp)) {
            throw new GeneralSecurityException("expected AesGcmKeyFormat proto");
        }
        vp vpVar = (vp) ackVar;
        zc.a(vpVar.a());
        return vn.c().a(zv.a(yx.a(vpVar.a()))).a(0).c();
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(zv zvVar) throws GeneralSecurityException {
        try {
            return b(vp.a(zvVar));
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized AesGcmKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ws c(zv zvVar) throws GeneralSecurityException {
        return ws.d().a("type.googleapis.com/google.crypto.tink.AesGcmKey").a(((vn) b(zvVar)).h()).a(ws.b.SYMMETRIC).c();
    }
}
