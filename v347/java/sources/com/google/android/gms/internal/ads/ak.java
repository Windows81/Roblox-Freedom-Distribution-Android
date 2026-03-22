package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.SystemClock;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public abstract class ak extends iy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final ap f4105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Context f4106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final Object f4107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final Object f4108d;
    protected final ij e;

    @GuardedBy("mLock")
    protected zzaej f;

    protected ak(Context context, ij ijVar, ap apVar) {
        super(true);
        this.f4107c = new Object();
        this.f4108d = new Object();
        this.f4106b = context;
        this.e = ijVar;
        this.f = ijVar.f5118b;
        this.f4105a = apVar;
    }

    protected abstract ii a(int i);

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        synchronized (this.f4107c) {
            jd.b("AdRendererBackgroundTask started.");
            int i = this.e.e;
            try {
                a(SystemClock.elapsedRealtime());
            } catch (an e) {
                int iA = e.a();
                if (iA == 3 || iA == -1) {
                    jd.d(e.getMessage());
                } else {
                    jd.e(e.getMessage());
                }
                if (this.f == null) {
                    this.f = new zzaej(iA);
                } else {
                    this.f = new zzaej(iA, this.f.j);
                }
                jm.f5184a.post(new al(this));
                i = iA;
            }
            jm.f5184a.post(new am(this, a(i)));
        }
    }

    protected abstract void a(long j) throws an;

    @Override // com.google.android.gms.internal.ads.iy
    public void b_() {
    }
}
