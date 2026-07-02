package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class baw<I, O> implements bal<I, O> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ban<O> f4725a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bao<I> f4726b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final azk f4727c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f4728d;

    baw(azk azkVar, String str, bao<I> baoVar, ban<O> banVar) {
        this.f4727c = azkVar;
        this.f4728d = str;
        this.f4726b = baoVar;
        this.f4725a = banVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(azx azxVar, bah bahVar, I i, no<O> noVar) {
        try {
            com.google.android.gms.ads.internal.aw.e();
            String strA = jm.a();
            com.google.android.gms.ads.internal.gmsg.o.o.a(strA, new baz(this, azxVar, noVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", strA);
            jSONObject.put("args", this.f4726b.a(i));
            bahVar.b(this.f4728d, jSONObject);
        } catch (Exception e) {
            try {
                noVar.a(e);
                jd.b("Unable to invokeJavaScript", e);
            } finally {
                azxVar.c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.mn
    public final nd<O> a(@Nullable I i) throws Exception {
        return b(i);
    }

    @Override // com.google.android.gms.internal.ads.bal
    public final nd<O> b(I i) {
        no noVar = new no();
        azx azxVarB = this.f4727c.b((agv) null);
        azxVarB.a(new bax(this, azxVarB, i, noVar), new bay(this, noVar, azxVarB));
        return noVar;
    }
}
