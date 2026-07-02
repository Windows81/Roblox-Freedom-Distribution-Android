package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
final class gq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bbx f5051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzjj f5052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ gw f5053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ go f5054d;

    gq(go goVar, bbx bbxVar, zzjj zzjjVar, gw gwVar) {
        this.f5054d = goVar;
        this.f5051a = bbxVar;
        this.f5052b = zzjjVar;
        this.f5053c = gwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f5051a.a(com.google.android.gms.b.b.a(this.f5054d.f5046c), this.f5052b, (String) null, this.f5053c, this.f5054d.g);
        } catch (RemoteException e) {
            String strValueOf = String.valueOf(this.f5054d.f5044a);
            jd.c(strValueOf.length() != 0 ? "Fail to initialize adapter ".concat(strValueOf) : new String("Fail to initialize adapter "), e);
            this.f5054d.a(this.f5054d.f5044a, 0);
        }
    }
}
