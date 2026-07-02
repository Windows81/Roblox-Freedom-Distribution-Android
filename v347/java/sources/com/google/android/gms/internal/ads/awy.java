package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class awy implements axv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ int f4575a;

    awy(aww awwVar, int i) {
        this.f4575a = i;
    }

    @Override // com.google.android.gms.internal.ads.axv
    public final void a(axw axwVar) throws RemoteException {
        if (axwVar.f4589a != null) {
            axwVar.f4589a.a(this.f4575a);
        }
    }
}
