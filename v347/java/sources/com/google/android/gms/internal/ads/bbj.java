package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class bbj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bbh f4760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bbi f4761b;

    bbj(bbi bbiVar, bbh bbhVar) {
        this.f4761b = bbiVar;
        this.f4760a = bbhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4761b.i) {
            if (this.f4761b.s != -2) {
                return;
            }
            this.f4761b.r = this.f4761b.d();
            if (this.f4761b.r == null) {
                this.f4761b.a(4);
                return;
            }
            if (!this.f4761b.e() || this.f4761b.b(1)) {
                this.f4760a.a(this.f4761b);
                this.f4761b.a(this.f4760a);
            } else {
                String str = this.f4761b.f4756a;
                jd.e(new StringBuilder(String.valueOf(str).length() + 56).append("Ignoring adapter ").append(str).append(" as delayed impression is not supported").toString());
                this.f4761b.a(2);
            }
        }
    }
}
