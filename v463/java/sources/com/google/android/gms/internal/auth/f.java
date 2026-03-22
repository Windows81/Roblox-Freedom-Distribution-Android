package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class f extends i<Status> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Credential f3973b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    f(c cVar, com.google.android.gms.common.api.f fVar, Credential credential) {
        super(fVar);
        this.f3973b = credential;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected final /* synthetic */ com.google.android.gms.common.api.l a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.internal.auth.i
    protected final void a(Context context, o oVar) throws RemoteException {
        oVar.a(new h(this), new zzbe(this.f3973b));
    }
}
