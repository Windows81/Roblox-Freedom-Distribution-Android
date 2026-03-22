package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.zzjj;
import java.lang.ref.WeakReference;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class am {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ao f3011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Runnable f3012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzjj f3013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3014d;
    private boolean e;
    private long f;

    public am(a aVar) {
        this(aVar, new ao(jm.f5184a));
    }

    private am(a aVar, ao aoVar) {
        this.f3014d = false;
        this.e = false;
        this.f = 0L;
        this.f3011a = aoVar;
        this.f3012b = new an(this, new WeakReference(aVar));
    }

    static /* synthetic */ boolean a(am amVar, boolean z) {
        amVar.f3014d = false;
        return false;
    }

    public final void a() {
        this.f3014d = false;
        this.f3011a.a(this.f3012b);
    }

    public final void a(zzjj zzjjVar) {
        this.f3013c = zzjjVar;
    }

    public final void a(zzjj zzjjVar, long j) {
        if (this.f3014d) {
            jd.e("An ad refresh is already scheduled.");
            return;
        }
        this.f3013c = zzjjVar;
        this.f3014d = true;
        this.f = j;
        if (this.e) {
            return;
        }
        jd.d(new StringBuilder(65).append("Scheduling ad refresh ").append(j).append(" milliseconds from now.").toString());
        this.f3011a.a(this.f3012b, j);
    }

    public final void b() {
        this.e = true;
        if (this.f3014d) {
            this.f3011a.a(this.f3012b);
        }
    }

    public final void b(zzjj zzjjVar) {
        a(zzjjVar, 60000L);
    }

    public final void c() {
        this.e = false;
        if (this.f3014d) {
            this.f3014d = false;
            a(this.f3013c, this.f);
        }
    }

    public final void d() {
        this.e = false;
        this.f3014d = false;
        if (this.f3013c != null && this.f3013c.f5801c != null) {
            this.f3013c.f5801c.remove("_ad");
        }
        a(this.f3013c, 0L);
    }

    public final boolean e() {
        return this.f3014d;
    }
}
