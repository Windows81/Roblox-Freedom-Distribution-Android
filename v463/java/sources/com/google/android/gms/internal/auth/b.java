package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b implements com.google.android.gms.auth.api.credentials.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Status f3969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Credential f3970b;

    public b(Status status, Credential credential) {
        this.f3969a = status;
        this.f3970b = credential;
    }

    public static b a(Status status) {
        return new b(status, null);
    }

    @Override // com.google.android.gms.auth.api.credentials.b
    public final Credential a() {
        return this.f3970b;
    }

    @Override // com.google.android.gms.common.api.l
    public final Status b() {
        return this.f3969a;
    }
}
