package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class axs implements axv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ int f4586a;

    axs(axl axlVar, int i) {
        this.f4586a = i;
    }

    @Override // com.google.android.gms.internal.ads.axv
    public final void a(axw axwVar) throws RemoteException {
        if (axwVar.f != null) {
            axwVar.f.a(this.f4586a);
        }
    }
}
