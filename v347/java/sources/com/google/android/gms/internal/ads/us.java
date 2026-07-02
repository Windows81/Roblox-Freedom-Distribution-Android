package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
final class us implements tn<tr> {
    us() {
    }

    private static void a(wq wqVar) throws GeneralSecurityException {
        if (wqVar.b() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        switch (wqVar.a()) {
            case SHA1:
                if (wqVar.b() > 20) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            case SHA256:
                if (wqVar.b() > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            case SHA512:
                if (wqVar.b() > 64) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            default:
                throw new GeneralSecurityException("unknown hash type");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.tn
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final tr a(zv zvVar) throws GeneralSecurityException {
        yv yvVar;
        try {
            wm wmVarA = wm.a(zvVar);
            if (!(wmVarA instanceof wm)) {
                throw new GeneralSecurityException("expected HmacKey proto");
            }
            wm wmVar = wmVarA;
            zc.a(wmVar.a(), 0);
            if (wmVar.c().a() < 16) {
                throw new GeneralSecurityException("key too short");
            }
            a(wmVar.b());
            wk wkVarA = wmVar.b().a();
            SecretKeySpec secretKeySpec = new SecretKeySpec(wmVar.c().b(), "HMAC");
            int iB = wmVar.b().b();
            switch (wkVarA) {
                case SHA1:
                    yvVar = new yv("HMACSHA1", secretKeySpec, iB);
                    break;
                case SHA256:
                    yvVar = new yv("HMACSHA256", secretKeySpec, iB);
                    break;
                case SHA512:
                    yvVar = new yv("HMACSHA512", secretKeySpec, iB);
                    break;
                default:
                    throw new GeneralSecurityException("unknown hash");
            }
            return yvVar;
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized HmacKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ tr a(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof wm)) {
            throw new GeneralSecurityException("expected HmacKey proto");
        }
        wm wmVar = (wm) ackVar;
        zc.a(wmVar.a(), 0);
        if (wmVar.c().a() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        a(wmVar.b());
        wk wkVarA = wmVar.b().a();
        SecretKeySpec secretKeySpec = new SecretKeySpec(wmVar.c().b(), "HMAC");
        int iB = wmVar.b().b();
        switch (wkVarA) {
            case SHA1:
                return new yv("HMACSHA1", secretKeySpec, iB);
            case SHA256:
                return new yv("HMACSHA256", secretKeySpec, iB);
            case SHA512:
                return new yv("HMACSHA512", secretKeySpec, iB);
            default:
                throw new GeneralSecurityException("unknown hash");
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof wo)) {
            throw new GeneralSecurityException("expected HmacKeyFormat proto");
        }
        wo woVar = (wo) ackVar;
        if (woVar.b() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        a(woVar.a());
        return wm.d().a(0).a(woVar.a()).a(zv.a(yx.a(woVar.b()))).c();
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(zv zvVar) throws GeneralSecurityException {
        try {
            return b(wo.a(zvVar));
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized HmacKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ws c(zv zvVar) throws GeneralSecurityException {
        return ws.d().a("type.googleapis.com/google.crypto.tink.HmacKey").a(((wm) b(zvVar)).h()).a(ws.b.SYMMETRIC).c();
    }
}
