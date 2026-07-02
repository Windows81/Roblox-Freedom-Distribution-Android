package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.agr;
import com.google.android.gms.internal.ads.agu;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jk;
import com.google.android.gms.internal.ads.ly;
import com.google.android.gms.internal.ads.zzang;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class h implements agr, Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Object[]> f3131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicReference<agr> f3132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f3133c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzang f3134d;
    private CountDownLatch e;

    private h(Context context, zzang zzangVar) {
        this.f3131a = new Vector();
        this.f3132b = new AtomicReference<>();
        this.e = new CountDownLatch(1);
        this.f3133c = context;
        this.f3134d = zzangVar;
        aoo.a();
        if (ly.b()) {
            jk.a(this);
        } else {
            run();
        }
    }

    public h(ax axVar) {
        this(axVar.f3036c, axVar.e);
    }

    private final boolean a() {
        try {
            this.e.await();
            return true;
        } catch (InterruptedException e) {
            jd.c("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    private static Context b(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    private final void b() {
        if (this.f3131a.isEmpty()) {
            return;
        }
        for (Object[] objArr : this.f3131a) {
            if (objArr.length == 1) {
                this.f3132b.get().a((MotionEvent) objArr[0]);
            } else if (objArr.length == 3) {
                this.f3132b.get().a(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.f3131a.clear();
    }

    @Override // com.google.android.gms.internal.ads.agr
    public final String a(Context context) {
        agr agrVar;
        if (!a() || (agrVar = this.f3132b.get()) == null) {
            return "";
        }
        b();
        return agrVar.a(b(context));
    }

    @Override // com.google.android.gms.internal.ads.agr
    public final String a(Context context, String str, View view) {
        return a(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.agr
    public final String a(Context context, String str, View view, Activity activity) {
        agr agrVar;
        if (!a() || (agrVar = this.f3132b.get()) == null) {
            return "";
        }
        b();
        return agrVar.a(b(context), str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.agr
    public final void a(int i, int i2, int i3) {
        agr agrVar = this.f3132b.get();
        if (agrVar == null) {
            this.f3131a.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
        } else {
            b();
            agrVar.a(i, i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.agr
    public final void a(MotionEvent motionEvent) {
        agr agrVar = this.f3132b.get();
        if (agrVar == null) {
            this.f3131a.add(new Object[]{motionEvent});
        } else {
            b();
            agrVar.a(motionEvent);
        }
    }

    @Override // com.google.android.gms.internal.ads.agr
    public final void a(View view) {
        agr agrVar = this.f3132b.get();
        if (agrVar != null) {
            agrVar.a(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f3132b.set(agu.a(this.f3134d.f5784a, b(this.f3133c), !((Boolean) aoo.f().a(aro.aL)).booleanValue() && (this.f3134d.f5787d) == true));
        } finally {
            this.e.countDown();
            this.f3133c = null;
            this.f3134d = null;
        }
    }
}
