package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class axq implements axv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ fw f4585a;

    axq(axl axlVar, fw fwVar) {
        this.f4585a = fwVar;
    }

    @Override // com.google.android.gms.internal.ads.axv
    public final void a(axw axwVar) throws RemoteException {
        if (axwVar.f != null) {
            axwVar.f.a(this.f4585a);
        }
    }
}
