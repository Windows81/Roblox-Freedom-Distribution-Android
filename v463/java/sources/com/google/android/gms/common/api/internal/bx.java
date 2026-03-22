package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bx implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.common.api.l f3569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bw f3570b;

    bx(bw bwVar, com.google.android.gms.common.api.l lVar) {
        this.f3570b = bwVar;
        this.f3569a = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            try {
                BasePendingResult.f3465a.set(true);
                this.f3570b.h.sendMessage(this.f3570b.h.obtainMessage(0, this.f3570b.f3564a.a(this.f3569a)));
                BasePendingResult.f3465a.set(false);
                bw bwVar = this.f3570b;
                bw.b(this.f3569a);
                com.google.android.gms.common.api.f fVar = (com.google.android.gms.common.api.f) this.f3570b.g.get();
                if (fVar != null) {
                    fVar.b(this.f3570b);
                }
            } catch (RuntimeException e2) {
                this.f3570b.h.sendMessage(this.f3570b.h.obtainMessage(1, e2));
                BasePendingResult.f3465a.set(false);
                bw bwVar2 = this.f3570b;
                bw.b(this.f3569a);
                com.google.android.gms.common.api.f fVar2 = (com.google.android.gms.common.api.f) this.f3570b.g.get();
                if (fVar2 != null) {
                    fVar2.b(this.f3570b);
                }
            }
        } catch (Throwable th) {
            BasePendingResult.f3465a.set(false);
            bw bwVar3 = this.f3570b;
            bw.b(this.f3569a);
            com.google.android.gms.common.api.f fVar3 = (com.google.android.gms.common.api.f) this.f3570b.g.get();
            if (fVar3 != null) {
                fVar3.b(this.f3570b);
            }
            throw th;
        }
    }
}
