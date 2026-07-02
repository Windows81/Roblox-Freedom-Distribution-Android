package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public class abr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final aaq f3769a = aaq.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zv f3770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile ack f3771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile zv f3772d;

    private final ack b(ack ackVar) {
        if (this.f3771c == null) {
            synchronized (this) {
                if (this.f3771c == null) {
                    try {
                        this.f3771c = ackVar;
                        this.f3772d = zv.f5750a;
                    } catch (abj e) {
                        this.f3771c = ackVar;
                        this.f3772d = zv.f5750a;
                    }
                }
            }
        }
        return this.f3771c;
    }

    public final ack a(ack ackVar) {
        ack ackVar2 = this.f3771c;
        this.f3770b = null;
        this.f3772d = null;
        this.f3771c = ackVar;
        return ackVar2;
    }

    public final int b() {
        if (this.f3772d != null) {
            return this.f3772d.a();
        }
        if (this.f3771c != null) {
            return this.f3771c.l();
        }
        return 0;
    }

    public final zv c() {
        if (this.f3772d != null) {
            return this.f3772d;
        }
        synchronized (this) {
            if (this.f3772d != null) {
                return this.f3772d;
            }
            if (this.f3771c == null) {
                this.f3772d = zv.f5750a;
            } else {
                this.f3772d = this.f3771c.h();
            }
            return this.f3772d;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof abr)) {
            return false;
        }
        abr abrVar = (abr) obj;
        ack ackVar = this.f3771c;
        ack ackVar2 = abrVar.f3771c;
        return (ackVar == null && ackVar2 == null) ? c().equals(abrVar.c()) : (ackVar == null || ackVar2 == null) ? ackVar != null ? ackVar.equals(abrVar.b(ackVar.p())) : b(ackVar2.p()).equals(ackVar2) : ackVar.equals(ackVar2);
    }

    public int hashCode() {
        return 1;
    }
}
