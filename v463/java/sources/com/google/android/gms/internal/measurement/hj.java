package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hj implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f4485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzdz f4486e;
    private final /* synthetic */ gz f;

    hj(gz gzVar, AtomicReference atomicReference, String str, String str2, String str3, zzdz zzdzVar) {
        this.f = gzVar;
        this.f4482a = atomicReference;
        this.f4483b = str;
        this.f4484c = str2;
        this.f4485d = str3;
        this.f4486e = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        dp dpVar;
        AtomicReference atomicReference2;
        List<zzed> listA;
        synchronized (this.f4482a) {
            try {
                try {
                    dpVar = this.f.f4453b;
                } catch (RemoteException e2) {
                    this.f.q().v().a("Failed to get conditional properties", dx.a(this.f4483b), this.f4484c, e2);
                    this.f4482a.set(Collections.emptyList());
                    atomicReference = this.f4482a;
                }
                if (dpVar == null) {
                    this.f.q().v().a("Failed to get conditional properties", dx.a(this.f4483b), this.f4484c, this.f4485d);
                    this.f4482a.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(this.f4483b)) {
                    atomicReference2 = this.f4482a;
                    listA = dpVar.a(this.f4484c, this.f4485d, this.f4486e);
                } else {
                    atomicReference2 = this.f4482a;
                    listA = dpVar.a(this.f4483b, this.f4484c, this.f4485d);
                }
                atomicReference2.set(listA);
                this.f.C();
                atomicReference = this.f4482a;
                atomicReference.notify();
            } finally {
                this.f4482a.notify();
            }
        }
    }
}
