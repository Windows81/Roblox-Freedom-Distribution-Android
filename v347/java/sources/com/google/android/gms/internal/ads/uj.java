package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class uj implements tn<tm> {
    uj() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.tn
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final tm a(zv zvVar) throws GeneralSecurityException {
        try {
            wd wdVarA = wd.a(zvVar);
            if (!(wdVarA instanceof wd)) {
                throw new GeneralSecurityException("expected EciesAeadHkdfPublicKey proto");
            }
            wd wdVar = wdVarA;
            zc.a(wdVar.a(), 0);
            up.a(wdVar.b());
            vz vzVarB = wdVar.b();
            wf wfVarA = vzVarB.a();
            return new ya(ye.a(up.a(wfVarA.a()), wdVar.c().b(), wdVar.d().b()), wfVarA.c().b(), up.a(wfVarA.b()), up.a(vzVarB.c()), new ur(vzVarB.b().a()));
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized EciesAeadHkdfPublicKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ tm a(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof wd)) {
            throw new GeneralSecurityException("expected EciesAeadHkdfPublicKey proto");
        }
        wd wdVar = (wd) ackVar;
        zc.a(wdVar.a(), 0);
        up.a(wdVar.b());
        vz vzVarB = wdVar.b();
        wf wfVarA = vzVarB.a();
        return new ya(ye.a(up.a(wfVarA.a()), wdVar.c().b(), wdVar.d().b()), wfVarA.c().b(), up.a(wfVarA.b()), up.a(vzVarB.c()), new ur(vzVarB.b().a()));
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(ack ackVar) throws GeneralSecurityException {
        throw new GeneralSecurityException("Not implemented.");
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(zv zvVar) throws GeneralSecurityException {
        throw new GeneralSecurityException("Not implemented.");
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ws c(zv zvVar) throws GeneralSecurityException {
        throw new GeneralSecurityException("Not implemented.");
    }
}
