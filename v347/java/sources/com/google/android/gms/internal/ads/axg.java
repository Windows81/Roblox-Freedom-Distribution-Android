package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class axg implements axv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f4579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4580b;

    axg(axf axfVar, String str, String str2) {
        this.f4579a = str;
        this.f4580b = str2;
    }

    @Override // com.google.android.gms.internal.ads.axv
    public final void a(axw axwVar) throws RemoteException {
        if (axwVar.f4591c != null) {
            axwVar.f4591c.a(this.f4579a, this.f4580b);
        }
    }
}
