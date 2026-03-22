package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class h extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c.b<Status> f3975a;

    h(c.b<Status> bVar) {
        this.f3975a = bVar;
    }

    @Override // com.google.android.gms.internal.auth.a, com.google.android.gms.internal.auth.m
    public final void a(Status status) {
        this.f3975a.a(status);
    }
}
