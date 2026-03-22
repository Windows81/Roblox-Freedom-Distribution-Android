package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class afq extends android.support.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<afr> f3933a;

    public afq(afr afrVar) {
        this.f3933a = new WeakReference<>(afrVar);
    }

    @Override // android.support.b.d
    public final void a(ComponentName componentName, android.support.b.b bVar) {
        afr afrVar = this.f3933a.get();
        if (afrVar != null) {
            afrVar.a(bVar);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        afr afrVar = this.f3933a.get();
        if (afrVar != null) {
            afrVar.a();
        }
    }
}
