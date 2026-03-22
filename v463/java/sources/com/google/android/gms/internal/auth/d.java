package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class d extends i<com.google.android.gms.auth.api.credentials.b> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ CredentialRequest f3971b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d(c cVar, com.google.android.gms.common.api.f fVar, CredentialRequest credentialRequest) {
        super(fVar);
        this.f3971b = credentialRequest;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    protected final /* synthetic */ com.google.android.gms.common.api.l a(Status status) {
        return b.a(status);
    }

    @Override // com.google.android.gms.internal.auth.i
    protected final void a(Context context, o oVar) throws RemoteException {
        oVar.a(new e(this), this.f3971b);
    }
}
