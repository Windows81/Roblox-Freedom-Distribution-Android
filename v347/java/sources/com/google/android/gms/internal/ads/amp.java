package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class amp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f4213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4215c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ amn f4216d;

    private amp(amn amnVar, byte[] bArr) {
        this.f4216d = amnVar;
        this.f4213a = bArr;
    }

    public final amp a(int i) {
        this.f4214b = i;
        return this;
    }

    public final synchronized void a() {
        try {
            if (this.f4216d.f4212b) {
                this.f4216d.f4211a.a(this.f4213a);
                this.f4216d.f4211a.a(this.f4214b);
                this.f4216d.f4211a.b(this.f4215c);
                this.f4216d.f4211a.a((int[]) null);
                this.f4216d.f4211a.a();
            }
        } catch (RemoteException e) {
            mj.a("Clearcut log failed", e);
        }
    }

    public final amp b(int i) {
        this.f4215c = i;
        return this;
    }
}
