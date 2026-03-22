package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.api.l;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class i<R extends com.google.android.gms.common.api.l> extends c.a<R, k> {
    i(com.google.android.gms.common.api.f fVar) {
        super(com.google.android.gms.auth.api.a.f3307d, fVar);
    }

    protected abstract void a(Context context, o oVar) throws RemoteException;

    @Override // com.google.android.gms.common.api.internal.c.a
    protected /* synthetic */ void a(a.b bVar) throws RemoteException {
        k kVar = (k) bVar;
        a(kVar.t(), (o) kVar.A());
    }
}
