package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class iw implements ala {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final is f5154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashSet<ik> f5155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<iv> f5156d;

    public iw() {
        this(aoo.c());
    }

    private iw(String str) {
        this.f5153a = new Object();
        this.f5155c = new HashSet<>();
        this.f5156d = new HashSet<>();
        this.f5154b = new is(str);
    }

    public final Bundle a(Context context, it itVar, String str) {
        Bundle bundle;
        synchronized (this.f5153a) {
            bundle = new Bundle();
            bundle.putBundle("app", this.f5154b.a(context, str));
            Bundle bundle2 = new Bundle();
            for (iv ivVar : this.f5156d) {
                bundle2.putBundle(ivVar.a(), ivVar.b());
            }
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<ik> it = this.f5155c.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().d());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            itVar.a(this.f5155c);
            this.f5155c.clear();
        }
        return bundle;
    }

    public final void a() {
        synchronized (this.f5153a) {
            this.f5154b.a();
        }
    }

    public final void a(ik ikVar) {
        synchronized (this.f5153a) {
            this.f5155c.add(ikVar);
        }
    }

    public final void a(iv ivVar) {
        synchronized (this.f5153a) {
            this.f5156d.add(ivVar);
        }
    }

    public final void a(zzjj zzjjVar, long j) {
        synchronized (this.f5153a) {
            this.f5154b.a(zzjjVar, j);
        }
    }

    public final void a(HashSet<ik> hashSet) {
        synchronized (this.f5153a) {
            this.f5155c.addAll(hashSet);
        }
    }

    @Override // com.google.android.gms.internal.ads.ala
    public final void a(boolean z) {
        long jA = com.google.android.gms.ads.internal.aw.l().a();
        if (!z) {
            com.google.android.gms.ads.internal.aw.i().l().a(jA);
            com.google.android.gms.ads.internal.aw.i().l().b(this.f5154b.f5144a);
            return;
        }
        if (jA - com.google.android.gms.ads.internal.aw.i().l().i() > ((Long) aoo.f().a(aro.aI)).longValue()) {
            this.f5154b.f5144a = -1;
        } else {
            this.f5154b.f5144a = com.google.android.gms.ads.internal.aw.i().l().j();
        }
    }

    public final void b() {
        synchronized (this.f5153a) {
            this.f5154b.b();
        }
    }
}
