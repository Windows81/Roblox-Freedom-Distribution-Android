package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.b;

/* JADX INFO: loaded from: classes.dex */
abstract class z<T> extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final com.google.android.gms.d.g<T> f3414a;

    public z(int i, com.google.android.gms.d.g<T> gVar) {
        super(i);
        this.f3414a = gVar;
    }

    @Override // com.google.android.gms.common.api.internal.o
    public void a(Status status) {
        this.f3414a.b(new com.google.android.gms.common.api.b(status));
    }

    @Override // com.google.android.gms.common.api.internal.o
    public final void a(b.a<?> aVar) throws DeadObjectException {
        try {
            b(aVar);
        } catch (DeadObjectException e) {
            a(o.b(e));
            throw e;
        } catch (RemoteException e2) {
            a(o.b(e2));
        } catch (RuntimeException e3) {
            a(e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.o
    public void a(k kVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.o
    public void a(RuntimeException runtimeException) {
        this.f3414a.b(runtimeException);
    }

    protected abstract void b(b.a<?> aVar) throws RemoteException;
}
