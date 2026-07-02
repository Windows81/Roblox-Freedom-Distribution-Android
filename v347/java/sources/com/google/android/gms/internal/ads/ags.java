package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public abstract class ags implements agr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static volatile ahm f3972a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected MotionEvent f3973b;
    protected double k;
    protected float l;
    protected float m;
    protected float n;
    protected float o;
    protected DisplayMetrics q;
    private double r;
    private double s;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected LinkedList<MotionEvent> f3974c = new LinkedList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected long f3975d = 0;
    protected long e = 0;
    protected long f = 0;
    protected long g = 0;
    protected long h = 0;
    protected long i = 0;
    protected long j = 0;
    private boolean t = false;
    protected boolean p = false;

    protected ags(Context context) {
        try {
            if (((Boolean) aoo.f().a(aro.bL)).booleanValue()) {
                afw.a();
            } else {
                ahs.a(f3972a);
            }
            this.q = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
        }
    }

    private final String a(Context context, String str, boolean z, View view, Activity activity, byte[] bArr) {
        zn znVarA;
        try {
            if (z) {
                znVarA = a(context, view, activity);
                this.t = true;
            } else {
                znVarA = a(context, null);
            }
            return (znVarA == null || znVarA.d() == 0) ? Integer.toString(5) : afw.a(znVarA, str);
        } catch (UnsupportedEncodingException e) {
            return Integer.toString(7);
        } catch (GeneralSecurityException e2) {
            return Integer.toString(7);
        } catch (Throwable th) {
            return Integer.toString(3);
        }
    }

    protected abstract long a(StackTraceElement[] stackTraceElementArr) throws ahj;

    protected abstract zn a(Context context, View view, Activity activity);

    protected abstract zn a(Context context, wj wjVar);

    @Override // com.google.android.gms.internal.ads.agr
    public final String a(Context context) {
        if (ahu.a()) {
            if (((Boolean) aoo.f().a(aro.bN)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return a(context, null, false, null, null, null);
    }

    @Override // com.google.android.gms.internal.ads.agr
    public final String a(Context context, String str, View view) {
        return a(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.agr
    public final String a(Context context, String str, View view, Activity activity) {
        return a(context, str, true, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.agr
    public final void a(int i, int i2, int i3) {
        if (this.f3973b != null) {
            this.f3973b.recycle();
        }
        if (this.q != null) {
            this.f3973b = MotionEvent.obtain(0L, i3, 1, i * this.q.density, i2 * this.q.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            this.f3973b = null;
        }
        this.p = false;
    }

    @Override // com.google.android.gms.internal.ads.agr
    public final void a(MotionEvent motionEvent) {
        if (this.t) {
            this.g = 0L;
            this.f = 0L;
            this.e = 0L;
            this.f3975d = 0L;
            this.h = 0L;
            this.j = 0L;
            this.i = 0L;
            Iterator<MotionEvent> it = this.f3974c.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.f3974c.clear();
            this.f3973b = null;
            this.t = false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.k = 0.0d;
                this.r = motionEvent.getRawX();
                this.s = motionEvent.getRawY();
                break;
            case 1:
            case 2:
                double rawX = motionEvent.getRawX();
                double rawY = motionEvent.getRawY();
                double d2 = rawX - this.r;
                double d3 = rawY - this.s;
                this.k = Math.sqrt((d2 * d2) + (d3 * d3)) + this.k;
                this.r = rawX;
                this.s = rawY;
                break;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.l = motionEvent.getX();
                this.m = motionEvent.getY();
                this.n = motionEvent.getRawX();
                this.o = motionEvent.getRawY();
                this.f3975d++;
                break;
            case 1:
                this.f3973b = MotionEvent.obtain(motionEvent);
                this.f3974c.add(this.f3973b);
                if (this.f3974c.size() > 6) {
                    this.f3974c.remove().recycle();
                }
                this.f++;
                try {
                    this.h = a(new Throwable().getStackTrace());
                } catch (ahj e) {
                }
                break;
            case 2:
                this.e += (long) (motionEvent.getHistorySize() + 1);
                try {
                    aht ahtVarB = b(motionEvent);
                    if ((ahtVarB == null || ahtVarB.f4022d == null || ahtVarB.g == null) ? false : true) {
                        this.i += ahtVarB.f4022d.longValue() + ahtVarB.g.longValue();
                    }
                    if ((this.q == null || ahtVarB == null || ahtVarB.e == null || ahtVarB.h == null) ? false : true) {
                        this.j = ahtVarB.h.longValue() + ahtVarB.e.longValue() + this.j;
                    }
                } catch (ahj e2) {
                }
                break;
            case 3:
                this.g++;
                break;
        }
        this.p = true;
    }

    @Override // com.google.android.gms.internal.ads.agr
    public void a(View view) {
    }

    protected abstract aht b(MotionEvent motionEvent) throws ahj;
}
