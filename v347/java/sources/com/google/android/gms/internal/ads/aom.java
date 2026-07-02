package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class aom implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final avg f4342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bbg f4343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f4344c;

    public aom(amq amqVar, avg avgVar, bbg bbgVar, Runnable runnable) {
        this.f4342a = avgVar;
        this.f4343b = bbgVar;
        this.f4344c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4342a.g();
        if (this.f4343b.f4751c == null) {
            this.f4342a.a(this.f4343b.f4749a);
        } else {
            this.f4342a.a(this.f4343b.f4751c);
        }
        if (this.f4343b.f4752d) {
            this.f4342a.b("intermediate-response");
        } else {
            this.f4342a.c("done");
        }
        if (this.f4344c != null) {
            this.f4344c.run();
        }
    }
}
