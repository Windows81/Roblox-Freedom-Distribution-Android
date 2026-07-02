package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class ur implements xy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private vn f5608c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private uw f5609d;
    private int e;

    ur(wx wxVar) throws GeneralSecurityException {
        this.f5606a = wxVar.a();
        if (this.f5606a.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                vp vpVarA = vp.a(wxVar.b());
                this.f5608c = (vn) tv.b(wxVar);
                this.f5607b = vpVarA.a();
                return;
            } catch (abj e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        }
        if (!this.f5606a.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            String strValueOf = String.valueOf(this.f5606a);
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(strValueOf) : new String("unsupported AEAD DEM key type: "));
        }
        try {
            uy uyVarA = uy.a(wxVar.b());
            this.f5609d = (uw) tv.b(wxVar);
            this.e = uyVarA.a().b();
            this.f5607b = uyVarA.b().b() + this.e;
        } catch (abj e2) {
            throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.xy
    public final int a() {
        return this.f5607b;
    }

    @Override // com.google.android.gms.internal.ads.xy
    public final tf a(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length != this.f5607b) {
            throw new GeneralSecurityException("Symmetric key has incorrect length");
        }
        if (this.f5606a.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            return (tf) tv.b(this.f5606a, vn.c().a(this.f5608c).a(zv.a(bArr, 0, this.f5607b)).c());
        }
        if (!this.f5606a.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            throw new GeneralSecurityException("unknown DEM key type");
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, this.e);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, this.e, this.f5607b);
        va vaVarC = va.d().a(this.f5609d.b()).a(zv.a(bArrCopyOfRange)).c();
        return (tf) tv.b(this.f5606a, uw.d().a(this.f5609d.a()).a(vaVarC).a(wm.d().a(this.f5609d.c()).a(zv.a(bArrCopyOfRange2)).c()).c());
    }
}
