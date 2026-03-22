package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class axh extends asj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ awv f4581a;

    axh(awv awvVar) {
        this.f4581a = awvVar;
    }

    @Override // com.google.android.gms.internal.ads.asi
    public final void a(asf asfVar) throws RemoteException {
        this.f4581a.f4573a.add(new axi(this, asfVar));
    }
}
