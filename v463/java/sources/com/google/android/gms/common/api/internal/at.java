package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.e;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class at extends e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<am> f3510a;

    at(am amVar) {
        this.f3510a = new WeakReference<>(amVar);
    }

    @Override // com.google.android.gms.common.api.internal.e.a
    public final void a() {
        am amVar = this.f3510a.get();
        if (amVar == null) {
            return;
        }
        amVar.p();
    }
}
