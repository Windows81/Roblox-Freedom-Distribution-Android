package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class bay implements nr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ no f4733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ azx f4734b;

    bay(baw bawVar, no noVar, azx azxVar) {
        this.f4733a = noVar;
        this.f4734b = azxVar;
    }

    @Override // com.google.android.gms.internal.ads.nr
    public final void a() {
        this.f4733a.a(new bak("Unable to obtain a JavascriptEngine."));
        this.f4734b.c();
    }
}
