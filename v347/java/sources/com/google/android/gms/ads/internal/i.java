package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aou;
import com.google.android.gms.internal.ads.aoy;
import com.google.android.gms.internal.ads.apu;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.avc;
import com.google.android.gms.internal.ads.avf;
import com.google.android.gms.internal.ads.avj;
import com.google.android.gms.internal.ads.avm;
import com.google.android.gms.internal.ads.avp;
import com.google.android.gms.internal.ads.avs;
import com.google.android.gms.internal.ads.bbu;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjj;
import com.google.android.gms.internal.ads.zzjn;
import com.google.android.gms.internal.ads.zzpl;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class i extends aoy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final aou f3136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final bbu f3137c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final avc f3138d;
    private final avs e;
    private final avf f;
    private final avp g;
    private final zzjn h;
    private final PublisherAdViewOptions i;
    private final android.support.v4.g.m<String, avm> j;
    private final android.support.v4.g.m<String, avj> k;
    private final zzpl l;
    private final apu n;
    private final String o;
    private final zzang p;
    private WeakReference<ba> q;
    private final bt r;
    private final Object s = new Object();
    private final List<String> m = f();

    i(Context context, String str, bbu bbuVar, zzang zzangVar, aou aouVar, avc avcVar, avs avsVar, avf avfVar, android.support.v4.g.m<String, avm> mVar, android.support.v4.g.m<String, avj> mVar2, zzpl zzplVar, apu apuVar, bt btVar, avp avpVar, zzjn zzjnVar, PublisherAdViewOptions publisherAdViewOptions) {
        this.f3135a = context;
        this.o = str;
        this.f3137c = bbuVar;
        this.p = zzangVar;
        this.f3136b = aouVar;
        this.f = avfVar;
        this.f3138d = avcVar;
        this.e = avsVar;
        this.j = mVar;
        this.k = mVar2;
        this.l = zzplVar;
        this.n = apuVar;
        this.r = btVar;
        this.g = avpVar;
        this.h = zzjnVar;
        this.i = publisherAdViewOptions;
        aro.a(this.f3135a);
    }

    private final void a(int i) {
        if (this.f3136b != null) {
            try {
                this.f3136b.a(0);
            } catch (RemoteException e) {
                jd.c("Failed calling onAdFailedToLoad.", e);
            }
        }
    }

    private static void a(Runnable runnable) {
        jm.f5184a.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(zzjj zzjjVar) {
        if (!((Boolean) aoo.f().a(aro.cl)).booleanValue() && this.e != null) {
            a(0);
            return;
        }
        bn bnVar = new bn(this.f3135a, this.r, this.h, this.o, this.f3137c, this.p);
        this.q = new WeakReference<>(bnVar);
        avp avpVar = this.g;
        com.google.android.gms.common.internal.w.b("setOnPublisherAdViewLoadedListener must be called on the main UI thread.");
        bnVar.e.z = avpVar;
        if (this.i != null) {
            if (this.i.b() != null) {
                bnVar.a(this.i.b());
            }
            bnVar.b(this.i.a());
        }
        avc avcVar = this.f3138d;
        com.google.android.gms.common.internal.w.b("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        bnVar.e.r = avcVar;
        avs avsVar = this.e;
        com.google.android.gms.common.internal.w.b("setOnUnifiedNativeAdLoadedListener must be called on the main UI thread.");
        bnVar.e.t = avsVar;
        avf avfVar = this.f;
        com.google.android.gms.common.internal.w.b("setOnContentAdLoadedListener must be called on the main UI thread.");
        bnVar.e.s = avfVar;
        android.support.v4.g.m<String, avm> mVar = this.j;
        com.google.android.gms.common.internal.w.b("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        bnVar.e.v = mVar;
        android.support.v4.g.m<String, avj> mVar2 = this.k;
        com.google.android.gms.common.internal.w.b("setOnCustomClickListener must be called on the main UI thread.");
        bnVar.e.u = mVar2;
        zzpl zzplVar = this.l;
        com.google.android.gms.common.internal.w.b("setNativeAdOptions must be called on the main UI thread.");
        bnVar.e.w = zzplVar;
        bnVar.c(f());
        bnVar.a(this.f3136b);
        bnVar.a(this.n);
        ArrayList arrayList = new ArrayList();
        if (e()) {
            arrayList.add(1);
        }
        if (this.g != null) {
            arrayList.add(2);
        }
        bnVar.d(arrayList);
        if (e()) {
            zzjjVar.f5801c.putBoolean("ina", true);
        }
        if (this.g != null) {
            zzjjVar.f5801c.putBoolean("iba", true);
        }
        bnVar.b(zzjjVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(zzjj zzjjVar, int i) {
        if (!((Boolean) aoo.f().a(aro.cl)).booleanValue() && this.e != null) {
            a(0);
            return;
        }
        ad adVar = new ad(this.f3135a, this.r, zzjn.a(this.f3135a), this.o, this.f3137c, this.p);
        this.q = new WeakReference<>(adVar);
        avc avcVar = this.f3138d;
        com.google.android.gms.common.internal.w.b("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        adVar.e.r = avcVar;
        avs avsVar = this.e;
        com.google.android.gms.common.internal.w.b("setOnUnifiedNativeAdLoadedListener must be called on the main UI thread.");
        adVar.e.t = avsVar;
        avf avfVar = this.f;
        com.google.android.gms.common.internal.w.b("setOnContentAdLoadedListener must be called on the main UI thread.");
        adVar.e.s = avfVar;
        android.support.v4.g.m<String, avm> mVar = this.j;
        com.google.android.gms.common.internal.w.b("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        adVar.e.v = mVar;
        adVar.a(this.f3136b);
        android.support.v4.g.m<String, avj> mVar2 = this.k;
        com.google.android.gms.common.internal.w.b("setOnCustomClickListener must be called on the main UI thread.");
        adVar.e.u = mVar2;
        adVar.c(f());
        zzpl zzplVar = this.l;
        com.google.android.gms.common.internal.w.b("setNativeAdOptions must be called on the main UI thread.");
        adVar.e.w = zzplVar;
        adVar.a(this.n);
        adVar.b(i);
        adVar.b(zzjjVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean d() {
        return ((Boolean) aoo.f().a(aro.aM)).booleanValue() && this.g != null;
    }

    private final boolean e() {
        return (this.f3138d == null && this.f == null && this.e == null && (this.j == null || this.j.size() <= 0)) ? false : true;
    }

    private final List<String> f() {
        ArrayList arrayList = new ArrayList();
        if (this.f != null) {
            arrayList.add("1");
        }
        if (this.f3138d != null) {
            arrayList.add("2");
        }
        if (this.e != null) {
            arrayList.add("6");
        }
        if (this.j.size() > 0) {
            arrayList.add("3");
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final String a() {
        synchronized (this.s) {
            if (this.q == null) {
                return null;
            }
            ba baVar = this.q.get();
            return baVar != null ? baVar.a() : null;
        }
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final void a(zzjj zzjjVar) {
        a(new j(this, zzjjVar));
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final void a(zzjj zzjjVar, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Number of ads has to be more than 0");
        }
        a(new k(this, zzjjVar, i));
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final String b() {
        synchronized (this.s) {
            if (this.q == null) {
                return null;
            }
            ba baVar = this.q.get();
            return baVar != null ? baVar.p_() : null;
        }
    }

    @Override // com.google.android.gms.internal.ads.aox
    public final boolean c() {
        synchronized (this.s) {
            if (this.q == null) {
                return false;
            }
            ba baVar = this.q.get();
            return baVar != null ? baVar.r() : false;
        }
    }
}
