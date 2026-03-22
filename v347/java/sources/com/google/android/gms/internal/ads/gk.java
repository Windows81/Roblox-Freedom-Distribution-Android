package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class gk implements com.google.android.gms.ads.reward.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final fw f5042a;

    public gk(fw fwVar) {
        this.f5042a = fwVar;
    }

    @Override // com.google.android.gms.ads.reward.a
    public final String a() {
        if (this.f5042a == null) {
            return null;
        }
        try {
            return this.f5042a.a();
        } catch (RemoteException e) {
            mj.c("Could not forward getType to RewardItem", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.a
    public final int b() {
        if (this.f5042a == null) {
            return 0;
        }
        try {
            return this.f5042a.b();
        } catch (RemoteException e) {
            mj.c("Could not forward getAmount to RewardItem", e);
            return 0;
        }
    }
}
