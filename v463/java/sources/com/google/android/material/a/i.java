package com.google.android.material.a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f4789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f4790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TimeInterpolator f4791c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4792d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4793e;

    public i(long j, long j2) {
        this.f4789a = 0L;
        this.f4790b = 300L;
        this.f4791c = null;
        this.f4792d = 0;
        this.f4793e = 1;
        this.f4789a = j;
        this.f4790b = j2;
    }

    public i(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f4789a = 0L;
        this.f4790b = 300L;
        this.f4791c = null;
        this.f4792d = 0;
        this.f4793e = 1;
        this.f4789a = j;
        this.f4790b = j2;
        this.f4791c = timeInterpolator;
    }

    public void a(Animator animator) {
        animator.setStartDelay(a());
        animator.setDuration(b());
        animator.setInterpolator(c());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(d());
            valueAnimator.setRepeatMode(e());
        }
    }

    public long a() {
        return this.f4789a;
    }

    public long b() {
        return this.f4790b;
    }

    public TimeInterpolator c() {
        TimeInterpolator timeInterpolator = this.f4791c;
        return timeInterpolator != null ? timeInterpolator : a.f4776b;
    }

    public int d() {
        return this.f4792d;
    }

    public int e() {
        return this.f4793e;
    }

    static i a(ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), b(valueAnimator));
        iVar.f4792d = valueAnimator.getRepeatCount();
        iVar.f4793e = valueAnimator.getRepeatMode();
        return iVar;
    }

    private static TimeInterpolator b(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return a.f4776b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return a.f4777c;
        }
        return interpolator instanceof DecelerateInterpolator ? a.f4778d : interpolator;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (a() == iVar.a() && b() == iVar.b() && d() == iVar.d() && e() == iVar.e()) {
            return c().getClass().equals(iVar.c().getClass());
        }
        return false;
    }

    public int hashCode() {
        return (((((((((int) (a() ^ (a() >>> 32))) * 31) + ((int) (b() ^ (b() >>> 32)))) * 31) + c().getClass().hashCode()) * 31) + d()) * 31) + e();
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + a() + " duration: " + b() + " interpolator: " + c().getClass() + " repeatCount: " + d() + " repeatMode: " + e() + "}\n";
    }
}
