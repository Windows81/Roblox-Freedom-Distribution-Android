package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class ug implements tn<tf> {
    ug() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.tn
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final tf a(zv zvVar) throws GeneralSecurityException {
        try {
            xj xjVarA = xj.a(zvVar);
            if (!(xjVarA instanceof xj)) {
                throw new GeneralSecurityException("expected KmsEnvelopeAeadKey proto");
            }
            xj xjVar = xjVarA;
            zc.a(xjVar.a(), 0);
            String strA = xjVar.b().a();
            return new uf(xjVar.b().b(), tq.a(strA).b(strA));
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized KmSEnvelopeAeadKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ tf a(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof xj)) {
            throw new GeneralSecurityException("expected KmsEnvelopeAeadKey proto");
        }
        xj xjVar = (xj) ackVar;
        zc.a(xjVar.a(), 0);
        String strA = xjVar.b().a();
        return new uf(xjVar.b().b(), tq.a(strA).b(strA));
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof xm)) {
            throw new GeneralSecurityException("expected KmsEnvelopeAeadKeyFormat proto");
        }
        return xj.c().a((xm) ackVar).a(0).c();
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(zv zvVar) throws GeneralSecurityException {
        try {
            return b(xm.a(zvVar));
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized KmsEnvelopeAeadKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ws c(zv zvVar) throws GeneralSecurityException {
        return ws.d().a("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey").a(((xj) b(zvVar)).h()).a(ws.b.REMOTE).c();
    }
}
