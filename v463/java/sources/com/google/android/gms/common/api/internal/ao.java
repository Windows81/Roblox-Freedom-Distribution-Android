package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.f;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ao implements f.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f3500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ n f3501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ am f3502c;

    ao(am amVar, AtomicReference atomicReference, n nVar) {
        this.f3502c = amVar;
        this.f3500a = atomicReference;
        this.f3501b = nVar;
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(int i) {
    }

    @Override // com.google.android.gms.common.api.f.b
    public final void a(Bundle bundle) {
        this.f3502c.a((com.google.android.gms.common.api.f) this.f3500a.get(), this.f3501b, true);
    }
}
