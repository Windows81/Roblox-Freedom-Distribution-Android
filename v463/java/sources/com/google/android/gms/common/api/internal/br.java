package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class br<T> extends ar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final com.google.android.gms.f.h<T> f3554a;

    public br(int i, com.google.android.gms.f.h<T> hVar) {
        super(i);
        this.f3554a = hVar;
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public void a(Status status) {
        this.f3554a.b(new com.google.android.gms.common.api.b(status));
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public final void a(d.a<?> aVar) throws DeadObjectException {
        try {
            b(aVar);
        } catch (DeadObjectException e2) {
            a(ar.b(e2));
            throw e2;
        } catch (RemoteException e3) {
            a(ar.b(e3));
        } catch (RuntimeException e4) {
            a(e4);
        }
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public void a(r rVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public void a(RuntimeException runtimeException) {
        this.f3554a.b(runtimeException);
    }

    protected abstract void b(d.a<?> aVar) throws RemoteException;
}
