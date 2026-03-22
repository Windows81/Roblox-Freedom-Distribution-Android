package com.roblox.engine;

import android.content.Context;
import android.graphics.Point;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f7625a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f7626b = 0.0f;

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
        double dPow = Math.pow(10.0d, i);
        double dRound = Math.round(d2 * dPow);
        Double.isNaN(dRound);
        return dRound / dPow;
    }

    private boolean a(double d2, double d3, double d4) {
        return a(d2, d4) && a(d3, d4);
    }

    private double b(double d2, double d3, double d4) {
        int i = 1;
        double dA = a(d4, 1);
        if (a() && d4 <= b()) {
            return d4;
        }
        if (a(d2, d3, dA)) {
            return dA;
        }
        while (true) {
            double d5 = i;
            if (d5 >= 10.0d) {
                return d4;
            }
            Double.isNaN(d5);
            double d6 = d5 * 0.1d;
            double d7 = dA - d6;
            if (a(d2, d3, d7)) {
                return d7;
            }
            double d8 = d6 + dA;
            if (a(d2, d3, d8)) {
                return d8;
            }
            i++;
        }
    }

    public float a(Context context) {
        if (c()) {
            if (this.f7625a != context.getResources().getDisplayMetrics().density) {
                this.f7625a = context.getResources().getDisplayMetrics().density;
                Point point = new Point();
                point.x = context.getResources().getDisplayMetrics().widthPixels;
                point.y = context.getResources().getDisplayMetrics().heightPixels;
                this.f7626b = (float) b(point.x, point.y, this.f7625a);
            }
            return this.f7626b;
        }
        return context.getResources().getDisplayMetrics().density;
    }
}
