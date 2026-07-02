package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class ua implements tn<yu> {
    ua() {
    }

    private static void a(ve veVar) throws GeneralSecurityException {
        if (veVar.a() < 12 || veVar.a() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.tn
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final xs a(zv zvVar) throws GeneralSecurityException {
        try {
            va vaVarA = va.a(zvVar);
            if (!(vaVarA instanceof va)) {
                throw new GeneralSecurityException("expected AesCtrKey proto");
            }
            va vaVar = vaVarA;
            zc.a(vaVar.a(), 0);
            zc.a(vaVar.c().a());
            a(vaVar.b());
            return new xs(vaVar.c().b(), vaVar.b().a());
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized AesCtrKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ yu a(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof va)) {
            throw new GeneralSecurityException("expected AesCtrKey proto");
        }
        va vaVar = (va) ackVar;
        zc.a(vaVar.a(), 0);
        zc.a(vaVar.c().a());
        a(vaVar.b());
        return new xs(vaVar.c().b(), vaVar.b().a());
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof vc)) {
            throw new GeneralSecurityException("expected AesCtrKeyFormat proto");
        }
        vc vcVar = (vc) ackVar;
        zc.a(vcVar.b());
        a(vcVar.a());
        return va.d().a(vcVar.a()).a(zv.a(yx.a(vcVar.b()))).a(0).c();
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(zv zvVar) throws GeneralSecurityException {
        try {
            return b(vc.a(zvVar));
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized AesCtrKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ws c(zv zvVar) throws GeneralSecurityException {
        return ws.d().a("type.googleapis.com/google.crypto.tink.AesCtrKey").a(((va) b(zvVar)).h()).a(ws.b.SYMMETRIC).c();
    }
}
