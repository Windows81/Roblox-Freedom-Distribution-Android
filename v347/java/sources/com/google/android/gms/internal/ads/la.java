package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class la implements bch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f5244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ le f5245b;

    la(kw kwVar, String str, le leVar) {
        this.f5244a = str;
        this.f5245b = leVar;
    }

    @Override // com.google.android.gms.internal.ads.bch
    public final void a(df dfVar) {
        String str = this.f5244a;
        String string = dfVar.toString();
        jd.e(new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(string).length()).append("Failed to load URL: ").append(str).append("\n").append(string).toString());
        this.f5245b.a((Object) null);
    }
}
