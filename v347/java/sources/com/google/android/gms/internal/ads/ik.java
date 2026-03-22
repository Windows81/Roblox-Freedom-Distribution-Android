package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class ik {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final iw f5121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private final LinkedList<il> f5122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f5123c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5124d;
    private final String e;

    @GuardedBy("mLock")
    private long f;

    @GuardedBy("mLock")
    private long g;

    @GuardedBy("mLock")
    private boolean h;

    @GuardedBy("mLock")
    private long i;

    @GuardedBy("mLock")
    private long j;

    @GuardedBy("mLock")
    private long k;

    @GuardedBy("mLock")
    private long l;

    private ik(iw iwVar, String str, String str2) {
        this.f5123c = new Object();
        this.f = -1L;
        this.g = -1L;
        this.h = false;
        this.i = -1L;
        this.j = 0L;
        this.k = -1L;
        this.l = -1L;
        this.f5121a = iwVar;
        this.f5124d = str;
        this.e = str2;
        this.f5122b = new LinkedList<>();
    }

    public ik(String str, String str2) {
        this(com.google.android.gms.ads.internal.aw.j(), str, str2);
    }

    public final void a() {
        synchronized (this.f5123c) {
            if (this.l != -1 && this.g == -1) {
                this.g = SystemClock.elapsedRealtime();
                this.f5121a.a(this);
            }
            this.f5121a.b();
        }
    }

    public final void a(long j) {
        synchronized (this.f5123c) {
            this.l = j;
            if (this.l != -1) {
                this.f5121a.a(this);
            }
        }
    }

    public final void a(zzjj zzjjVar) {
        synchronized (this.f5123c) {
            this.k = SystemClock.elapsedRealtime();
            this.f5121a.a(zzjjVar, this.k);
        }
    }

    public final void a(boolean z) {
        synchronized (this.f5123c) {
            if (this.l != -1) {
                this.i = SystemClock.elapsedRealtime();
                if (!z) {
                    this.g = this.i;
                    this.f5121a.a(this);
                }
            }
        }
    }

    public final void b() {
        synchronized (this.f5123c) {
            if (this.l != -1) {
                il ilVar = new il();
                ilVar.c();
                this.f5122b.add(ilVar);
                this.j++;
                this.f5121a.a();
                this.f5121a.a(this);
            }
        }
    }

    public final void b(long j) {
        synchronized (this.f5123c) {
            if (this.l != -1) {
                this.f = j;
                this.f5121a.a(this);
            }
        }
    }

    public final void b(boolean z) {
        synchronized (this.f5123c) {
            if (this.l != -1) {
                this.h = z;
                this.f5121a.a(this);
            }
        }
    }

    public final void c() {
        synchronized (this.f5123c) {
            if (this.l != -1 && !this.f5122b.isEmpty()) {
                il last = this.f5122b.getLast();
                if (last.a() == -1) {
                    last.b();
                    this.f5121a.a(this);
                }
            }
        }
    }

    public final Bundle d() {
        Bundle bundle;
        synchronized (this.f5123c) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.f5124d);
            bundle.putString("slotid", this.e);
            bundle.putBoolean("ismediation", this.h);
            bundle.putLong("treq", this.k);
            bundle.putLong("tresponse", this.l);
            bundle.putLong("timp", this.g);
            bundle.putLong("tload", this.i);
            bundle.putLong("pcc", this.j);
            bundle.putLong("tfetch", this.f);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<il> it = this.f5122b.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().d());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }
}
