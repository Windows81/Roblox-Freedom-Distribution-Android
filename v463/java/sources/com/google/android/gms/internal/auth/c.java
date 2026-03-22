package com.google.android.gms.internal.auth;

import android.app.PendingIntent;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.aa;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c implements com.google.android.gms.auth.api.credentials.d {
    @Override // com.google.android.gms.auth.api.credentials.d
    public final PendingIntent a(com.google.android.gms.common.api.f fVar, HintRequest hintRequest) {
        aa.a(fVar, "client must not be null");
        aa.a(hintRequest, "request must not be null");
        return j.a(fVar.b(), ((k) fVar.a(com.google.android.gms.auth.api.a.f3304a)).e(), hintRequest);
    }

    @Override // com.google.android.gms.auth.api.credentials.d
    public final com.google.android.gms.common.api.g<Status> a(com.google.android.gms.common.api.f fVar, Credential credential) {
        aa.a(fVar, "client must not be null");
        aa.a(credential, "credential must not be null");
        return fVar.b(new f(this, fVar, credential));
    }

    @Override // com.google.android.gms.auth.api.credentials.d
    public final com.google.android.gms.common.api.g<com.google.android.gms.auth.api.credentials.b> a(com.google.android.gms.common.api.f fVar, CredentialRequest credentialRequest) {
        aa.a(fVar, "client must not be null");
        aa.a(credentialRequest, "request must not be null");
        return fVar.a(new d(this, fVar, credentialRequest));
    }

    @Override // com.google.android.gms.auth.api.credentials.d
    public final com.google.android.gms.common.api.g<Status> b(com.google.android.gms.common.api.f fVar, Credential credential) {
        aa.a(fVar, "client must not be null");
        aa.a(credential, "credential must not be null");
        return fVar.b(new g(this, fVar, credential));
    }
}
