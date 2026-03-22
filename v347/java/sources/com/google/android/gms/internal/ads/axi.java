package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class axi implements axv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ asf f4582a;

    axi(axh axhVar, asf asfVar) {
        this.f4582a = asfVar;
    }

    @Override // com.google.android.gms.internal.ads.axv
    public final void a(axw axwVar) throws RemoteException {
        if (axwVar.f4592d != null) {
            axwVar.f4592d.a(this.f4582a);
        }
    }
}
