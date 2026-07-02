package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import java.security.GeneralSecurityException;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
class tz implements tn<tf> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f5593a = Logger.getLogger(tz.class.getName());

    tz() throws GeneralSecurityException {
        tv.a("type.googleapis.com/google.crypto.tink.AesCtrKey", new ua());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.tn
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final tf a(zv zvVar) throws GeneralSecurityException {
        try {
            uw uwVarA = uw.a(zvVar);
            if (!(uwVarA instanceof uw)) {
                throw new GeneralSecurityException("expected AesCtrHmacAeadKey proto");
            }
            uw uwVar = uwVarA;
            zc.a(uwVar.a(), 0);
            return new yi((yu) tv.b("type.googleapis.com/google.crypto.tink.AesCtrKey", uwVar.b()), (tr) tv.b("type.googleapis.com/google.crypto.tink.HmacKey", uwVar.c()), uwVar.c().b().b());
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized AesCtrHmacAeadKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ tf a(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof uw)) {
            throw new GeneralSecurityException("expected AesCtrHmacAeadKey proto");
        }
        uw uwVar = (uw) ackVar;
        zc.a(uwVar.a(), 0);
        return new yi((yu) tv.b("type.googleapis.com/google.crypto.tink.AesCtrKey", uwVar.b()), (tr) tv.b("type.googleapis.com/google.crypto.tink.HmacKey", uwVar.c()), uwVar.c().b().b());
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof uy)) {
            throw new GeneralSecurityException("expected AesCtrHmacAeadKeyFormat proto");
        }
        uy uyVar = (uy) ackVar;
        va vaVar = (va) tv.a("type.googleapis.com/google.crypto.tink.AesCtrKey", uyVar.a());
        return uw.d().a(vaVar).a((wm) tv.a("type.googleapis.com/google.crypto.tink.HmacKey", uyVar.b())).a(0).c();
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(zv zvVar) throws GeneralSecurityException {
        try {
            return b(uy.a(zvVar));
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized AesCtrHmacAeadKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ws c(zv zvVar) throws GeneralSecurityException {
        return ws.d().a("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey").a(((uw) b(zvVar)).h()).a(ws.b.SYMMETRIC).c();
    }
}
