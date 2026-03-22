package com.google.android.gms.ads;

import android.os.RemoteException;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.ads.aqc;
import com.google.android.gms.internal.ads.aqx;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.mj;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3209a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private aqc f3210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private a f3211c;

    public static abstract class a {
        public void a() {
        }

        public void a(boolean z) {
        }

        public void b() {
        }

        public void c() {
        }

        public void d() {
        }
    }

    public final aqc a() {
        aqc aqcVar;
        synchronized (this.f3209a) {
            aqcVar = this.f3210b;
        }
        return aqcVar;
    }

    public final void a(a aVar) {
        w.a(aVar, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.f3209a) {
            this.f3211c = aVar;
            if (this.f3210b == null) {
                return;
            }
            try {
                this.f3210b.a(new aqx(aVar));
            } catch (RemoteException e) {
                mj.b("Unable to call setVideoLifecycleCallbacks on video controller.", e);
            }
        }
    }

    public final void a(aqc aqcVar) {
        synchronized (this.f3209a) {
            this.f3210b = aqcVar;
            if (this.f3211c != null) {
                a(this.f3211c);
            }
        }
    }
}
