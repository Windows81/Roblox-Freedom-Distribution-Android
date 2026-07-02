package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: classes.dex */
final class aly implements d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ alv f4199a;

    aly(alv alvVar) {
        this.f4199a = alvVar;
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
        synchronized (this.f4199a.f4194b) {
            this.f4199a.e = null;
            this.f4199a.f4194b.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(Bundle bundle) {
        synchronized (this.f4199a.f4194b) {
            try {
            } catch (DeadObjectException e) {
                jd.b("Unable to obtain a cache service instance.", e);
                this.f4199a.c();
            }
            if (this.f4199a.f4195c != null) {
                this.f4199a.e = this.f4199a.f4195c.A();
                this.f4199a.f4194b.notifyAll();
            } else {
                this.f4199a.f4194b.notifyAll();
            }
        }
    }
}
