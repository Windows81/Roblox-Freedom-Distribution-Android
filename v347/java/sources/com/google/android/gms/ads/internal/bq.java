package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.ast;
import com.google.android.gms.internal.ads.jd;

/* JADX INFO: loaded from: classes.dex */
final class bq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ast f3063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ bn f3064b;

    bq(bn bnVar, ast astVar) {
        this.f3064b = bnVar;
        this.f3063a = astVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f3064b.e.r != null) {
                this.f3064b.e.r.a(this.f3063a);
                this.f3064b.a(this.f3063a.j());
            }
        } catch (RemoteException e) {
            jd.d("#007 Could not call remote method.", e);
        }
    }
}
