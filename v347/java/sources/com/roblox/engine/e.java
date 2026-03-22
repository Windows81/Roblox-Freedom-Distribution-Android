package com.roblox.engine;

import android.content.Context;
import android.graphics.Point;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f7975a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f7976b = 0.0f;

    private boolean a() {
        return a.b();
    }

    private int b() {
        return a.c();
    }

    private boolean c() {
        return a.a();
    }

    private boolean a(double d2, double d3) {
        double dAbs = Math.abs(d2 % d3);
        return dAbs < 9.999999747378752E-6d || Math.abs(d3 - dAbs) < 9.999999747378752E-6d;
    }

    private double a(double d2, int i) {
        return Math.round(d2 * r0) / Math.pow(10.0d, i);
    }

    private boolean a(double d2, double d3, double d4) {
        return a(d2, d4) && a(d3, d4);
    }

    private double b(double d2, double d3, double d4) {
        double dA = a(d4, 1);
        if (!a() || d4 > b()) {
            if (a(d2, d3, dA)) {
                return dA;
            }
            for (int i = 1; i < 10.0d; i++) {
                double d5 = dA - (0.1d * ((double) i));
                if (a(d2, d3, d5)) {
                    return d5;
                }
                double d6 = dA + (0.1d * ((double) i));
                if (a(d2, d3, d6)) {
                    return d6;
                }
            }
            return d4;
        }
        return d4;
    }

    public float a(Context context) {
        if (!c()) {
            return context.getResources().getDisplayMetrics().density;
        }
        if (this.f7975a != context.getResources().getDisplayMetrics().density) {
            this.f7975a = context.getResources().getDisplayMetrics().density;
            Point point = new Point();
            point.x = context.getResources().getDisplayMetrics().widthPixels;
            point.y = context.getResources().getDisplayMetrics().heightPixels;
            this.f7976b = (float) b(point.x, point.y, this.f7975a);
        }
        return this.f7976b;
    }
}
