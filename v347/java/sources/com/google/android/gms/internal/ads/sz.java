package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class sz implements d.a, d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ta f5570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5572c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedBlockingQueue<zn> f5573d;
    private final HandlerThread e = new HandlerThread("GassClient");

    public sz(Context context, String str, String str2) {
        this.f5571b = str;
        this.f5572c = str2;
        this.e.start();
        this.f5570a = new ta(context, this.e.getLooper(), this, this);
        this.f5573d = new LinkedBlockingQueue<>();
        this.f5570a.o();
    }

    private final td a() {
        try {
            return this.f5570a.A();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }

    private final void b() {
        if (this.f5570a != null) {
            if (this.f5570a.b() || this.f5570a.c()) {
                this.f5570a.a();
            }
        }
    }

    private static zn c() {
        zn znVar = new zn();
        znVar.k = 32768L;
        return znVar;
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
        try {
            this.f5573d.put(c());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(Bundle bundle) {
        td tdVarA = a();
        try {
            if (tdVarA != null) {
                try {
                    this.f5573d.put(tdVarA.a(new zzatt(this.f5571b, this.f5572c)).a());
                } catch (Throwable th) {
                    try {
                        this.f5573d.put(c());
                    } catch (InterruptedException e) {
                    }
                }
            }
        } finally {
            b();
            this.e.quit();
        }
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        try {
            this.f5573d.put(c());
        } catch (InterruptedException e) {
        }
    }

    public final zn b(int i) {
        zn znVarPoll;
        try {
            znVarPoll = this.f5573d.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            znVarPoll = null;
        }
        return znVarPoll == null ? c() : znVarPoll;
    }
}
