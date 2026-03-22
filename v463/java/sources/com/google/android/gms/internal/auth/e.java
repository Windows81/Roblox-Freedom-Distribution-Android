package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class e extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ d f3972a;

    e(d dVar) {
        this.f3972a = dVar;
    }

    @Override // com.google.android.gms.internal.auth.a, com.google.android.gms.internal.auth.m
    public final void a(Status status) {
        this.f3972a.b(b.a(status));
    }

    @Override // com.google.android.gms.internal.auth.a, com.google.android.gms.internal.auth.m
    public final void a(Status status, Credential credential) {
        this.f3972a.b(new b(status, credential));
    }
}
