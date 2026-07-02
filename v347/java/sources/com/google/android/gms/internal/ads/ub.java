package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class ub implements tn<tf> {
    ub() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.tn
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final tf a(zv zvVar) throws GeneralSecurityException {
        try {
            vg vgVarA = vg.a(zvVar);
            if (!(vgVarA instanceof vg)) {
                throw new GeneralSecurityException("expected AesEaxKey proto");
            }
            vg vgVar = vgVarA;
            zc.a(vgVar.a(), 0);
            zc.a(vgVar.c().a());
            if (vgVar.b().a() == 12 || vgVar.b().a() == 16) {
                return new xt(vgVar.c().b(), vgVar.b().a());
            }
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized AesEaxKey proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final /* synthetic */ tf a(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof vg)) {
            throw new GeneralSecurityException("expected AesEaxKey proto");
        }
        vg vgVar = (vg) ackVar;
        zc.a(vgVar.a(), 0);
        zc.a(vgVar.c().a());
        if (vgVar.b().a() == 12 || vgVar.b().a() == 16) {
            return new xt(vgVar.c().b(), vgVar.b().a());
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(ack ackVar) throws GeneralSecurityException {
        if (!(ackVar instanceof vj)) {
            throw new GeneralSecurityException("expected AesEaxKeyFormat proto");
        }
        vj vjVar = (vj) ackVar;
        zc.a(vjVar.b());
        if (vjVar.a().a() == 12 || vjVar.a().a() == 16) {
            return vg.d().a(zv.a(yx.a(vjVar.b()))).a(vjVar.a()).a(0).c();
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ack b(zv zvVar) throws GeneralSecurityException {
        try {
            return b(vj.a(zvVar));
        } catch (abj e) {
            throw new GeneralSecurityException("expected serialized AesEaxKeyFormat proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.tn
    public final ws c(zv zvVar) throws GeneralSecurityException {
        return ws.d().a("type.googleapis.com/google.crypto.tink.AesEaxKey").a(((vg) b(zvVar)).h()).a(ws.b.SYMMETRIC).c();
    }
}
