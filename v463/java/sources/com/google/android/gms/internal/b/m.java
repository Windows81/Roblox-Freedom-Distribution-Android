package com.google.android.gms.internal.b;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.o;
import com.google.android.gms.common.api.internal.p;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class m extends o<i, Void> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.android.gms.f.h<Void> f3989a;

    private m() {
    }

    /* synthetic */ m(k kVar) {
        this();
    }

    protected final void a(Status status) {
        p.a(status, this.f3989a);
    }

    @Override // com.google.android.gms.common.api.internal.o
    protected /* synthetic */ void a(a.b bVar, com.google.android.gms.f.h<Void> hVar) throws RemoteException {
        this.f3989a = hVar;
        a((e) ((i) bVar).A());
    }

    protected abstract void a(e eVar) throws RemoteException;
}
