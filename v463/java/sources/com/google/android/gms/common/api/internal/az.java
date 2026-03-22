package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class az implements b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ d f3519a;

    az(d dVar) {
        this.f3519a = dVar;
    }

    @Override // com.google.android.gms.common.api.internal.b.a
    public final void a(boolean z) {
        this.f3519a.q.sendMessage(this.f3519a.q.obtainMessage(1, Boolean.valueOf(z)));
    }
}
