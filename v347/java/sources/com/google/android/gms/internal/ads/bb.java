package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class bb implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ no f4738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ ay f4740c;

    bb(ay ayVar, no noVar, String str) {
        this.f4740c = ayVar;
        this.f4738a = noVar;
        this.f4739b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4738a.b(this.f4740c.f4601d.N().get(this.f4739b));
    }
}
