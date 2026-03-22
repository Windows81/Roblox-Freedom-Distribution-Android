package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ce<ResultT> extends ar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o<a.b, ResultT> f3584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.f.h<ResultT> f3585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m f3586c;

    public ce(int i, o<a.b, ResultT> oVar, com.google.android.gms.f.h<ResultT> hVar, m mVar) {
        super(i);
        this.f3585b = hVar;
        this.f3584a = oVar;
        this.f3586c = mVar;
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public final void a(Status status) {
        this.f3585b.b(this.f3586c.a(status));
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public final void a(d.a<?> aVar) throws DeadObjectException {
        try {
            this.f3584a.a(aVar.b(), this.f3585b);
        } catch (DeadObjectException e2) {
            throw e2;
        } catch (RemoteException e3) {
            a(ar.b(e3));
        } catch (RuntimeException e4) {
            a(e4);
        }
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public final void a(r rVar, boolean z) {
        rVar.a(this.f3585b, z);
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public final void a(RuntimeException runtimeException) {
        this.f3585b.b(runtimeException);
    }

    public final Feature[] a() {
        return this.f3584a.a();
    }

    public final boolean b() {
        return this.f3584a.b();
    }
}
