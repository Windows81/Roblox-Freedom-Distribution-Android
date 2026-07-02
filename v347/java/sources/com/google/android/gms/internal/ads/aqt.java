package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class aqt implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aqs f4375a;

    aqt(aqs aqsVar) {
        this.f4375a = aqsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4375a.f4374a.f4373a != null) {
            try {
                this.f4375a.f4374a.f4373a.a(1);
            } catch (RemoteException e) {
                mj.c("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
