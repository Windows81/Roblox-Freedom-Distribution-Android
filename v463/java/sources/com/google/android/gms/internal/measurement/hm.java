package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hm implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzdz f4497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ boolean f4498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ gz f4499d;

    hm(gz gzVar, AtomicReference atomicReference, zzdz zzdzVar, boolean z) {
        this.f4499d = gzVar;
        this.f4496a = atomicReference;
        this.f4497b = zzdzVar;
        this.f4498c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        dp dpVar;
        synchronized (this.f4496a) {
            try {
                try {
                    dpVar = this.f4499d.f4453b;
                } catch (RemoteException e2) {
                    this.f4499d.q().v().a("Failed to get user properties", e2);
                    atomicReference = this.f4496a;
                }
                if (dpVar == null) {
                    this.f4499d.q().v().a("Failed to get user properties");
                    return;
                }
                this.f4496a.set(dpVar.a(this.f4497b, this.f4498c));
                this.f4499d.C();
                atomicReference = this.f4496a;
                atomicReference.notify();
            } finally {
                this.f4496a.notify();
            }
        }
    }
}
