package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hc implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzdz f4463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ gz f4464c;

    hc(gz gzVar, AtomicReference atomicReference, zzdz zzdzVar) {
        this.f4464c = gzVar;
        this.f4462a = atomicReference;
        this.f4463b = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        dp dpVar;
        synchronized (this.f4462a) {
            try {
                try {
                    dpVar = this.f4464c.f4453b;
                } catch (RemoteException e2) {
                    this.f4464c.q().v().a("Failed to get app instance id", e2);
                    atomicReference = this.f4462a;
                }
                if (dpVar == null) {
                    this.f4464c.q().v().a("Failed to get app instance id");
                    return;
                }
                this.f4462a.set(dpVar.c(this.f4463b));
                String str = (String) this.f4462a.get();
                if (str != null) {
                    this.f4464c.e().a(str);
                    this.f4464c.r().j.a(str);
                }
                this.f4464c.C();
                atomicReference = this.f4462a;
                atomicReference.notify();
            } finally {
                this.f4462a.notify();
            }
        }
    }
}
