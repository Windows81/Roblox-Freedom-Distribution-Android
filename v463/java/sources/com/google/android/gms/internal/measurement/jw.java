package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class jw extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ jv f4644a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    jw(jv jvVar, Handler handler) {
        super(null);
        this.f4644a = jvVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f4644a.b();
        this.f4644a.d();
    }
}
