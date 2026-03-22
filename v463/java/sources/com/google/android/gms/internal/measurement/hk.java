package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hk implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f4487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ String f4489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f4490d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f4491e;
    private final /* synthetic */ zzdz f;
    private final /* synthetic */ gz g;

    hk(gz gzVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z, zzdz zzdzVar) {
        this.g = gzVar;
        this.f4487a = atomicReference;
        this.f4488b = str;
        this.f4489c = str2;
        this.f4490d = str3;
        this.f4491e = z;
        this.f = zzdzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        dp dpVar;
        AtomicReference atomicReference2;
        List<zzjx> listA;
        synchronized (this.f4487a) {
            try {
                try {
                    dpVar = this.g.f4453b;
                } catch (RemoteException e2) {
                    this.g.q().v().a("Failed to get user properties", dx.a(this.f4488b), this.f4489c, e2);
                    this.f4487a.set(Collections.emptyList());
                    atomicReference = this.f4487a;
                }
                if (dpVar == null) {
                    this.g.q().v().a("Failed to get user properties", dx.a(this.f4488b), this.f4489c, this.f4490d);
                    this.f4487a.set(Collections.emptyList());
                    return;
                }
                if (TextUtils.isEmpty(this.f4488b)) {
                    atomicReference2 = this.f4487a;
                    listA = dpVar.a(this.f4489c, this.f4490d, this.f4491e, this.f);
                } else {
                    atomicReference2 = this.f4487a;
                    listA = dpVar.a(this.f4488b, this.f4489c, this.f4490d, this.f4491e);
                }
                atomicReference2.set(listA);
                this.g.C();
                atomicReference = this.f4487a;
                atomicReference.notify();
            } finally {
                this.f4487a.notify();
            }
        }
    }
}
