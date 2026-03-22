package com.google.android.gms.auth.api.credentials;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface d {
    PendingIntent a(com.google.android.gms.common.api.f fVar, HintRequest hintRequest);

    com.google.android.gms.common.api.g<Status> a(com.google.android.gms.common.api.f fVar, Credential credential);

    com.google.android.gms.common.api.g<b> a(com.google.android.gms.common.api.f fVar, CredentialRequest credentialRequest);

    com.google.android.gms.common.api.g<Status> b(com.google.android.gms.common.api.f fVar, Credential credential);
}
