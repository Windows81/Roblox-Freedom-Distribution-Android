package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class j extends l<Status> {
    j(com.google.android.gms.common.api.f fVar) {
        super(fVar);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected final /* synthetic */ com.google.android.gms.common.api.l a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.c.a
    protected final /* synthetic */ void a(a.b bVar) throws RemoteException {
        h hVar = (h) bVar;
        ((r) hVar.A()).a(new k(this), hVar.e());
    }
}
