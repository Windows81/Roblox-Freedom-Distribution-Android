package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class en {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final amd f4969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final id f4970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final arc f4971d;
    public final fj e;
    public final bba f;
    public final fk g;
    public final fl h;
    public final x i;
    public final ih j;
    public final es l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ez f4968a = null;
    public final boolean k = true;

    private en(ez ezVar, amd amdVar, id idVar, arc arcVar, fj fjVar, bba bbaVar, fk fkVar, fl flVar, x xVar, ih ihVar, boolean z, es esVar) {
        this.f4969b = amdVar;
        this.f4970c = idVar;
        this.f4971d = arcVar;
        this.e = fjVar;
        this.f = bbaVar;
        this.g = fkVar;
        this.h = flVar;
        this.i = xVar;
        this.j = ihVar;
        this.l = esVar;
    }

    public static en a(Context context) {
        com.google.android.gms.ads.internal.aw.C().a(context);
        fp fpVar = new fp(context);
        return new en(null, new amg(), new ie(), new arb(), new fh(context, fpVar.b()), new bbb(), new fn(), new fo(), new w(), new Cif(), true, fpVar);
    }
}
