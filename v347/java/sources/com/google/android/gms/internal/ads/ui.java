package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;

/* JADX INFO: loaded from: classes.dex */
final class ui implements tn<tl> {
    ui() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.tn
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final tl a(zv zvVar) throws GeneralSecurityException {
        try {
            wb wbVarA = wb.a(zvVar);
            if (!(wbVarA instanceof wb)) {
                throw new GeneralSecurityException("expected EciesAeadHkdfPrivateKey proto");
            }
            wb wbVar = wbVarA;
            zc.a(wbVar.a(), 0);
            up.a(wbVar.b().b());
            vz vzVarB = wbVar.b().b();
            wf wfVarA = vzVarB.a();
            yg ygVarA = up.a(wfVarA.a());
            byte[] bArrB = wbVar.c().b();
            return new xz((ECPrivateKey) yj.e.a("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, bArrB), ye.a(ygVarA))), wfVarA.c().b(), up.a(wfVarA.b()), up.a(vzVarB.c()), new ur(vzVarB.b().a()));
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized EciesAeadHkdfPrivateKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ tl a(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof wb)) {
            throw new GeneralSecurityException("expected EciesAeadHkdfPrivateKey proto");
        }
        wb wbVar = (wb) ackVar;
        zc.a(wbVar.a(), 0);
        up.a(wbVar.b().b());
        vz vzVarB = wbVar.b().b();
        wf wfVarA = vzVarB.a();
        yg ygVarA = up.a(wfVarA.a());
        byte[] bArrB = wbVar.c().b();
        return new xz((ECPrivateKey) yj.e.a("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, bArrB), ye.a(ygVarA))), wfVarA.c().b(), up.a(wfVarA.b()), up.a(vzVarB.c()), new ur(vzVarB.b().a()));
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof vx)) {
            throw new GeneralSecurityException("expected EciesAeadHkdfKeyFormat proto");
        }
        vx vxVar = (vx) ackVar;
        up.a(vxVar.a());
        KeyPair keyPairA = ye.a(ye.a(up.a(vxVar.a().a().a())));
        ECPublicKey eCPublicKey = (ECPublicKey) keyPairA.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) keyPairA.getPrivate();
        ECPoint w = eCPublicKey.getW();
        return wb.d().a(0).a(wd.e().a(0).a(vxVar.a()).a(zv.a(w.getAffineX().toByteArray())).b(zv.a(w.getAffineY().toByteArray())).c()).a(zv.a(eCPrivateKey.getS().toByteArray())).c();
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(zv zvVar) throws GeneralSecurityException {
        try {
            return b(vx.a(zvVar));
        } catch (abj e) {
            throw new GeneralSecurityException("invalid EciesAeadHkdf key format", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ws c(zv zvVar) throws GeneralSecurityException {
        return ws.d().a("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey").a(((wb) b(zvVar)).h()).a(ws.b.ASYMMETRIC_PRIVATE).c();
    }
}
