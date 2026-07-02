package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.b;

/* JADX INFO: loaded from: classes.dex */
public final class ae<ResultT> extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i<a.b, ResultT> f3347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.d.g<ResultT> f3348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f3349c;

    @Override // com.google.android.gms.common.api.internal.o
    public final void a(Status status) {
        this.f3348b.b(this.f3349c.a(status));
    }

    @Override // com.google.android.gms.common.api.internal.o
    public final void a(b.a<?> aVar) throws DeadObjectException {
        try {
            this.f3347a.a(aVar.b(), this.f3348b);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            a(o.b(e2));
        } catch (RuntimeException e3) {
            a(e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.o
    public final void a(k kVar, boolean z) {
        kVar.a(this.f3348b, z);
    }

    @Override // com.google.android.gms.common.api.internal.o
    public final void a(RuntimeException runtimeException) {
        this.f3348b.b(runtimeException);
    }

    public final Feature[] a() {
        return this.f3347a.a();
    }

    public final boolean b() {
        return this.f3347a.b();
    }
}
