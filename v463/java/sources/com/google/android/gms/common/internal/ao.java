package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.z;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ao implements g.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.common.api.g f3761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.f.h f3762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ z.a f3763c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ z.b f3764d;

    ao(com.google.android.gms.common.api.g gVar, com.google.android.gms.f.h hVar, z.a aVar, z.b bVar) {
        this.f3761a = gVar;
        this.f3762b = hVar;
        this.f3763c = aVar;
        this.f3764d = bVar;
    }

    @Override // com.google.android.gms.common.api.g.a
    public final void a(Status status) {
        if (!status.d()) {
            this.f3762b.a((Exception) this.f3764d.a(status));
        } else {
            this.f3762b.a(this.f3763c.a(this.f3761a.a(0L, TimeUnit.MILLISECONDS)));
        }
    }
}
