package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class qt extends aqd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final pc f5494a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f5496c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f5497d;
    private final float e;

    @GuardedBy("lock")
    private int f;

    @GuardedBy("lock")
    private aqf g;

    @GuardedBy("lock")
    private boolean h;

    @GuardedBy("lock")
    private float j;

    @GuardedBy("lock")
    private float k;

    @GuardedBy("lock")
    private boolean m;

    @GuardedBy("lock")
    private boolean n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5495b = new Object();

    @GuardedBy("lock")
    private boolean i = true;

    @GuardedBy("lock")
    private boolean l = true;

    public qt(pc pcVar, float f, boolean z, boolean z2) {
        this.f5494a = pcVar;
        this.e = f;
        this.f5496c = z;
        this.f5497d = z2;
    }

    private final void a(String str, Map<String, String> map) {
        final HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        map2.put("action", str);
        nj.f5346a.execute(new Runnable(this, map2) { // from class: com.google.android.gms.internal.ads.qu

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final qt f5498a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Map f5499b;

            {
                this.f5498a = this;
                this.f5499b = map2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5498a.a(this.f5499b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void a() {
        a("play", null);
    }

    public final void a(float f, final int i, final boolean z, float f2) {
        final boolean z2;
        final int i2;
        synchronized (this.f5495b) {
            this.j = f;
            z2 = this.i;
            this.i = z;
            i2 = this.f;
            this.f = i;
            float f3 = this.k;
            this.k = f2;
            if (Math.abs(this.k - f3) > 1.0E-4f) {
                this.f5494a.getView().invalidate();
            }
        }
        nj.f5346a.execute(new Runnable(this, i2, i, z2, z) { // from class: com.google.android.gms.internal.ads.qv

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final qt f5500a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final int f5501b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final int f5502c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final boolean f5503d;
            private final boolean e;

            {
                this.f5500a = this;
                this.f5501b = i2;
                this.f5502c = i;
                this.f5503d = z2;
                this.e = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5500a.a(this.f5501b, this.f5502c, this.f5503d, this.e);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ void a(int r10, int r11, boolean r12, boolean r13) {
        /*
            r9 = this;
            r0 = 0
            r1 = 1
            java.lang.Object r7 = r9.f5495b
            monitor-enter(r7)
            if (r10 == r11) goto L32
            r2 = r1
        L8:
            boolean r3 = r9.h     // Catch: java.lang.Throwable -> L63
            if (r3 != 0) goto L34
            if (r11 != r1) goto L34
            r6 = r1
        Lf:
            if (r2 == 0) goto L36
            if (r11 != r1) goto L36
            r5 = r1
        L14:
            if (r2 == 0) goto L38
            r3 = 2
            if (r11 != r3) goto L38
            r4 = r1
        L1a:
            if (r2 == 0) goto L3a
            r2 = 3
            if (r11 != r2) goto L3a
            r3 = r1
        L20:
            if (r12 == r13) goto L3c
            r2 = r1
        L23:
            boolean r8 = r9.h     // Catch: java.lang.Throwable -> L63
            if (r8 != 0) goto L29
            if (r6 == 0) goto L2a
        L29:
            r0 = r1
        L2a:
            r9.h = r0     // Catch: java.lang.Throwable -> L63
            com.google.android.gms.internal.ads.aqf r0 = r9.g     // Catch: java.lang.Throwable -> L63
            if (r0 != 0) goto L3e
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L63
        L31:
            return
        L32:
            r2 = r0
            goto L8
        L34:
            r6 = r0
            goto Lf
        L36:
            r5 = r0
            goto L14
        L38:
            r4 = r0
            goto L1a
        L3a:
            r3 = r0
            goto L20
        L3c:
            r2 = r0
            goto L23
        L3e:
            if (r6 == 0) goto L45
            com.google.android.gms.internal.ads.aqf r0 = r9.g     // Catch: java.lang.Throwable -> L63 android.os.RemoteException -> L66
            r0.a()     // Catch: java.lang.Throwable -> L63 android.os.RemoteException -> L66
        L45:
            if (r5 == 0) goto L4c
            com.google.android.gms.internal.ads.aqf r0 = r9.g     // Catch: java.lang.Throwable -> L63 android.os.RemoteException -> L6d
            r0.b()     // Catch: java.lang.Throwable -> L63 android.os.RemoteException -> L6d
        L4c:
            if (r4 == 0) goto L53
            com.google.android.gms.internal.ads.aqf r0 = r9.g     // Catch: java.lang.Throwable -> L63 android.os.RemoteException -> L74
            r0.c()     // Catch: java.lang.Throwable -> L63 android.os.RemoteException -> L74
        L53:
            if (r3 == 0) goto L5a
            com.google.android.gms.internal.ads.aqf r0 = r9.g     // Catch: java.lang.Throwable -> L63 android.os.RemoteException -> L7b
            r0.d()     // Catch: java.lang.Throwable -> L63 android.os.RemoteException -> L7b
        L5a:
            if (r2 == 0) goto L61
            com.google.android.gms.internal.ads.aqf r0 = r9.g     // Catch: java.lang.Throwable -> L63 android.os.RemoteException -> L82
            r0.a(r13)     // Catch: java.lang.Throwable -> L63 android.os.RemoteException -> L82
        L61:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L63
            goto L31
        L63:
            r0 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L63
            throw r0
        L66:
            r0 = move-exception
            java.lang.String r1 = "Unable to call onVideoStart()"
            com.google.android.gms.internal.ads.jd.c(r1, r0)     // Catch: java.lang.Throwable -> L63
            goto L45
        L6d:
            r0 = move-exception
            java.lang.String r1 = "Unable to call onVideoPlay()"
            com.google.android.gms.internal.ads.jd.c(r1, r0)     // Catch: java.lang.Throwable -> L63
            goto L4c
        L74:
            r0 = move-exception
            java.lang.String r1 = "Unable to call onVideoPause()"
            com.google.android.gms.internal.ads.jd.c(r1, r0)     // Catch: java.lang.Throwable -> L63
            goto L53
        L7b:
            r0 = move-exception
            java.lang.String r1 = "Unable to call onVideoEnd()"
            com.google.android.gms.internal.ads.jd.c(r1, r0)     // Catch: java.lang.Throwable -> L63
            goto L5a
        L82:
            r0 = move-exception
            java.lang.String r1 = "Unable to call onVideoMute()"
            com.google.android.gms.internal.ads.jd.c(r1, r0)     // Catch: java.lang.Throwable -> L63
            goto L61
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qt.a(int, int, boolean, boolean):void");
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void a(aqf aqfVar) {
        synchronized (this.f5495b) {
            this.g = aqfVar;
        }
    }

    public final void a(zzmu zzmuVar) {
        synchronized (this.f5495b) {
            this.l = zzmuVar.f5809a;
            this.m = zzmuVar.f5810b;
            this.n = zzmuVar.f5811c;
        }
        a("initialState", com.google.android.gms.common.util.e.a("muteStart", zzmuVar.f5809a ? "1" : "0", "customControlsRequested", zzmuVar.f5810b ? "1" : "0", "clickToExpandRequested", zzmuVar.f5811c ? "1" : "0"));
    }

    final /* synthetic */ void a(Map map) {
        this.f5494a.a("pubVideoCmd", (Map<String, ?>) map);
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void a(boolean z) {
        a(z ? "mute" : "unmute", null);
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final void b() {
        a("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final boolean c() {
        boolean z;
        synchronized (this.f5495b) {
            z = this.i;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final int d() {
        int i;
        synchronized (this.f5495b) {
            i = this.f;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final float e() {
        float f;
        synchronized (this.f5495b) {
            f = this.k;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final float f() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final float g() {
        float f;
        synchronized (this.f5495b) {
            f = this.j;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final aqf h() throws RemoteException {
        aqf aqfVar;
        synchronized (this.f5495b) {
            aqfVar = this.g;
        }
        return aqfVar;
    }

    @Override // com.google.android.gms.internal.ads.aqc
    public final boolean i() {
        boolean z;
        synchronized (this.f5495b) {
            z = this.f5496c && this.m;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0014  */
    @Override // com.google.android.gms.internal.ads.aqc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean j() {
        /*
            r2 = this;
            boolean r0 = r2.i()
            java.lang.Object r1 = r2.f5495b
            monitor-enter(r1)
            if (r0 != 0) goto L14
            boolean r0 = r2.n     // Catch: java.lang.Throwable -> L16
            if (r0 == 0) goto L14
            boolean r0 = r2.f5497d     // Catch: java.lang.Throwable -> L16
            if (r0 == 0) goto L14
            r0 = 1
        L12:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L16
            return r0
        L14:
            r0 = 0
            goto L12
        L16:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L16
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qt.j():boolean");
    }
}
