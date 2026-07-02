package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class atd extends atj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private bcg f4473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private bck f4474d;
    private bcn e;
    private final atg f;
    private ate g;
    private boolean h;
    private Object i;

    private atd(Context context, atg atgVar, agv agvVar, ath athVar) {
        super(context, atgVar, null, agvVar, null, athVar, null, null);
        this.h = false;
        this.i = new Object();
        this.f = atgVar;
    }

    public atd(Context context, atg atgVar, agv agvVar, bcg bcgVar, ath athVar) {
        this(context, atgVar, agvVar, athVar);
        this.f4473c = bcgVar;
    }

    public atd(Context context, atg atgVar, agv agvVar, bck bckVar, ath athVar) {
        this(context, atgVar, agvVar, athVar);
        this.f4474d = bckVar;
    }

    public atd(Context context, atg atgVar, agv agvVar, bcn bcnVar, ath athVar) {
        this(context, atgVar, agvVar, athVar);
        this.e = bcnVar;
    }

    private static HashMap<String, View> b(Map<String, WeakReference<View>> map) {
        HashMap<String, View> map2 = new HashMap<>();
        if (map == null) {
            return map2;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    map2.put(entry.getKey(), view);
                }
            }
        }
        return map2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x001a, code lost:
    
        r0 = null;
     */
    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View a(android.view.View.OnClickListener r5, boolean r6) {
        /*
            r4 = this;
            r1 = 0
            java.lang.Object r2 = r4.i
            monitor-enter(r2)
            com.google.android.gms.internal.ads.ate r0 = r4.g     // Catch: java.lang.Throwable -> L24
            if (r0 == 0) goto L10
            com.google.android.gms.internal.ads.ate r0 = r4.g     // Catch: java.lang.Throwable -> L24
            android.view.View r0 = r0.a(r5, r6)     // Catch: java.lang.Throwable -> L24
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L24
        Lf:
            return r0
        L10:
            com.google.android.gms.internal.ads.bcn r0 = r4.e     // Catch: java.lang.Throwable -> L24 android.os.RemoteException -> L3d
            if (r0 == 0) goto L27
            com.google.android.gms.internal.ads.bcn r0 = r4.e     // Catch: java.lang.Throwable -> L24 android.os.RemoteException -> L3d
            com.google.android.gms.b.a r0 = r0.l()     // Catch: java.lang.Throwable -> L24 android.os.RemoteException -> L3d
        L1a:
            if (r0 == 0) goto L45
            java.lang.Object r0 = com.google.android.gms.b.b.a(r0)     // Catch: java.lang.Throwable -> L24
            android.view.View r0 = (android.view.View) r0     // Catch: java.lang.Throwable -> L24
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L24
            goto Lf
        L24:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L24
            throw r0
        L27:
            com.google.android.gms.internal.ads.bcg r0 = r4.f4473c     // Catch: java.lang.Throwable -> L24 android.os.RemoteException -> L3d
            if (r0 == 0) goto L32
            com.google.android.gms.internal.ads.bcg r0 = r4.f4473c     // Catch: java.lang.Throwable -> L24 android.os.RemoteException -> L3d
            com.google.android.gms.b.a r0 = r0.n()     // Catch: java.lang.Throwable -> L24 android.os.RemoteException -> L3d
            goto L1a
        L32:
            com.google.android.gms.internal.ads.bck r0 = r4.f4474d     // Catch: java.lang.Throwable -> L24 android.os.RemoteException -> L3d
            if (r0 == 0) goto L43
            com.google.android.gms.internal.ads.bck r0 = r4.f4474d     // Catch: java.lang.Throwable -> L24 android.os.RemoteException -> L3d
            com.google.android.gms.b.a r0 = r0.k()     // Catch: java.lang.Throwable -> L24 android.os.RemoteException -> L3d
            goto L1a
        L3d:
            r0 = move-exception
            java.lang.String r3 = "Failed to call getAdChoicesContent"
            com.google.android.gms.internal.ads.jd.c(r3, r0)     // Catch: java.lang.Throwable -> L24
        L43:
            r0 = r1
            goto L1a
        L45:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L24
            r0 = r1
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.atd.a(android.view.View$OnClickListener, boolean):android.view.View");
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void a(View view) {
        synchronized (this.i) {
            if (this.g != null) {
                this.g.a(view);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void a(View view, Map<String, WeakReference<View>> map) {
        com.google.android.gms.common.internal.w.b("recordImpression must be called on the main UI thread.");
        synchronized (this.i) {
            this.f4479a = true;
            if (this.g != null) {
                this.g.a(view, map);
                this.f.ab();
            } else {
                try {
                    if (this.e != null && !this.e.p()) {
                        this.e.r();
                        this.f.ab();
                    } else if (this.f4473c != null && !this.f4473c.j()) {
                        this.f4473c.i();
                        this.f.ab();
                    } else if (this.f4474d != null && !this.f4474d.h()) {
                        this.f4474d.g();
                        this.f.ab();
                    }
                } catch (RemoteException e) {
                    jd.c("Failed to call recordImpression", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void a(View view, Map<String, WeakReference<View>> map, Bundle bundle, View view2) {
        com.google.android.gms.common.internal.w.b("performClick must be called on the main UI thread.");
        synchronized (this.i) {
            if (this.g != null) {
                this.g.a(view, map, bundle, view2);
                this.f.onAdClicked();
            } else {
                try {
                    if (this.e != null && !this.e.q()) {
                        this.e.a(com.google.android.gms.b.b.a(view));
                        this.f.onAdClicked();
                    } else if (this.f4473c != null && !this.f4473c.k()) {
                        this.f4473c.a(com.google.android.gms.b.b.a(view));
                        this.f.onAdClicked();
                    } else if (this.f4474d != null && !this.f4474d.i()) {
                        this.f4474d.a(com.google.android.gms.b.b.a(view));
                        this.f.onAdClicked();
                    }
                } catch (RemoteException e) {
                    jd.c("Failed to call performClick", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atj
    public final void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        synchronized (this.i) {
            this.h = true;
            HashMap<String, View> mapB = b(map);
            HashMap<String, View> mapB2 = b(map2);
            try {
                if (this.e != null) {
                    this.e.a(com.google.android.gms.b.b.a(view), com.google.android.gms.b.b.a(mapB), com.google.android.gms.b.b.a(mapB2));
                } else if (this.f4473c != null) {
                    this.f4473c.a(com.google.android.gms.b.b.a(view), com.google.android.gms.b.b.a(mapB), com.google.android.gms.b.b.a(mapB2));
                    this.f4473c.b(com.google.android.gms.b.b.a(view));
                } else if (this.f4474d != null) {
                    this.f4474d.a(com.google.android.gms.b.b.a(view), com.google.android.gms.b.b.a(mapB), com.google.android.gms.b.b.a(mapB2));
                    this.f4474d.b(com.google.android.gms.b.b.a(view));
                }
            } catch (RemoteException e) {
                jd.c("Failed to call prepareAd", e);
            }
            this.h = false;
        }
    }

    public final void a(ate ateVar) {
        synchronized (this.i) {
            this.g = ateVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void a(avv avvVar) {
        synchronized (this.i) {
            if (this.g != null) {
                this.g.a(avvVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final boolean a() {
        boolean zA;
        synchronized (this.i) {
            zA = this.g != null ? this.g.a() : this.f.R();
        }
        return zA;
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void b(View view, Map<String, WeakReference<View>> map) {
        synchronized (this.i) {
            try {
                if (this.e != null) {
                    this.e.b(com.google.android.gms.b.b.a(view));
                } else if (this.f4473c != null) {
                    this.f4473c.c(com.google.android.gms.b.b.a(view));
                } else if (this.f4474d != null) {
                    this.f4474d.c(com.google.android.gms.b.b.a(view));
                }
            } catch (RemoteException e) {
                jd.c("Failed to call untrackView", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final boolean b() {
        boolean zB;
        synchronized (this.i) {
            zB = this.g != null ? this.g.b() : this.f.S();
        }
        return zB;
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void c() {
        synchronized (this.i) {
            if (this.g != null) {
                this.g.c();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void d() {
        com.google.android.gms.common.internal.w.b("recordDownloadedImpression must be called on main UI thread.");
        synchronized (this.i) {
            this.f4480b = true;
            if (this.g != null) {
                this.g.d();
            }
        }
    }

    public final boolean e() {
        boolean z;
        synchronized (this.i) {
            z = this.h;
        }
        return z;
    }

    public final ate f() {
        ate ateVar;
        synchronized (this.i) {
            ateVar = this.g;
        }
        return ateVar;
    }

    @Override // com.google.android.gms.internal.ads.atj
    public final qd g() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void h() {
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void i() {
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void j() {
        if (this.g != null) {
            this.g.j();
        }
    }

    @Override // com.google.android.gms.internal.ads.atj, com.google.android.gms.internal.ads.ate
    public final void k() {
        if (this.g != null) {
            this.g.k();
        }
    }
}
