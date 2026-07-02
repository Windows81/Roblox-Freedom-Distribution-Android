package com.google.android.gms.internal.ads;

import java.util.Map;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
public final class lf extends avg<atf> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final no<atf> f5253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, String> f5254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final mc f5255c;

    public lf(String str, no<atf> noVar) {
        this(str, null, noVar);
    }

    private lf(String str, Map<String, String> map, no<atf> noVar) {
        super(0, str, new lg(noVar));
        this.f5254b = null;
        this.f5253a = noVar;
        this.f5255c = new mc();
        this.f5255c.a(str, Constants.HTTP_GET, null, null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.avg
    protected final bbg<atf> a(atf atfVar) {
        return bbg.a(atfVar, of.a(atfVar));
    }

    @Override // com.google.android.gms.internal.ads.avg
    protected final /* synthetic */ void a(atf atfVar) {
        atf atfVar2 = atfVar;
        this.f5255c.a(atfVar2.f4477c, atfVar2.f4475a);
        mc mcVar = this.f5255c;
        byte[] bArr = atfVar2.f4476b;
        if (mc.c() && bArr != null) {
            mcVar.a(bArr);
        }
        this.f5253a.b(atfVar2);
    }
}
