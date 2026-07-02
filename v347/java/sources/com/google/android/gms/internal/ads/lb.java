package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class lb extends uh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ byte[] f5246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Map f5247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ mc f5248c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    lb(kw kwVar, int i, String str, bdi bdiVar, bch bchVar, byte[] bArr, Map map, mc mcVar) {
        super(i, str, bdiVar, bchVar);
        this.f5246a = bArr;
        this.f5247b = map;
        this.f5248c = mcVar;
    }

    @Override // com.google.android.gms.internal.ads.uh, com.google.android.gms.internal.ads.avg
    protected final /* synthetic */ void a(String str) {
        a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.uh
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    public final void a2(String str) {
        this.f5248c.a(str);
        super.a(str);
    }

    @Override // com.google.android.gms.internal.ads.avg
    public final byte[] a() throws a {
        return this.f5246a == null ? super.a() : this.f5246a;
    }

    @Override // com.google.android.gms.internal.ads.avg
    public final Map<String, String> b() throws a {
        return this.f5247b == null ? super.b() : this.f5247b;
    }
}
