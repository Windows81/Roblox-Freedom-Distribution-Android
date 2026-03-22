package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class axf extends app {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ awv f4578a;

    axf(awv awvVar) {
        this.f4578a = awvVar;
    }

    @Override // com.google.android.gms.internal.ads.apo
    public final void a(String str, String str2) throws RemoteException {
        this.f4578a.f4573a.add(new axg(this, str, str2));
    }
}
