package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
@cm
public abstract class ai implements kf<Void>, rm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Context f4034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final qd f4035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected zzaej f4036c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ap f4037d;
    private final ij e;
    private Runnable f;
    private final Object g = new Object();
    private AtomicBoolean h = new AtomicBoolean(true);

    protected ai(Context context, ij ijVar, qd qdVar, ap apVar) {
        this.f4034a = context;
        this.e = ijVar;
        this.f4036c = this.e.f5118b;
        this.f4035b = qdVar;
        this.f4037d = apVar;
    }

    protected abstract void a();

    protected void a(int i) {
        if (i != -2) {
            this.f4036c = new zzaej(i, this.f4036c.j);
        }
        this.f4035b.p();
        ap apVar = this.f4037d;
        zzaef zzaefVar = this.e.f5117a;
        apVar.b(new ii(zzaefVar.f5760c, this.f4035b, this.f4036c.f5764c, i, this.f4036c.e, this.f4036c.i, this.f4036c.k, this.f4036c.j, zzaefVar.i, this.f4036c.g, null, null, null, null, null, this.f4036c.h, this.e.f5120d, this.f4036c.f, this.e.f, this.f4036c.m, this.f4036c.n, this.e.h, null, this.f4036c.A, this.f4036c.B, this.f4036c.C, this.f4036c.D, this.f4036c.E, null, this.f4036c.H, this.f4036c.L, this.e.i, this.e.f5118b.O, this.e.j, this.e.f5118b.Q, this.f4036c.R, this.e.f5118b.S, this.e.f5118b.T));
    }

    @Override // com.google.android.gms.internal.ads.rm
    public final void a(boolean z) {
        jd.b("WebView finished loading.");
        if (this.h.getAndSet(false)) {
            a(z ? -2 : 0);
            jm.f5184a.removeCallbacks(this.f);
        }
    }

    @Override // com.google.android.gms.internal.ads.kf
    public void b() {
        if (this.h.getAndSet(false)) {
            this.f4035b.stopLoading();
            com.google.android.gms.ads.internal.aw.g();
            js.a(this.f4035b);
            a(-1);
            jm.f5184a.removeCallbacks(this.f);
        }
    }

    @Override // com.google.android.gms.internal.ads.kf
    public final /* synthetic */ Void c() {
        com.google.android.gms.common.internal.w.b("Webview render task needs to be called on UI thread.");
        this.f = new aj(this);
        jm.f5184a.postDelayed(this.f, ((Long) aoo.f().a(aro.bB)).longValue());
        a();
        return null;
    }
}
