package com.roblox.engine;

import android.graphics.Point;
import android.view.MotionEvent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Point f7620a = new Point();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Point f7621b = new Point();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Point f7622c = new Point();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Point f7623d = new Point();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7624e = -1;
    private int f = -1;
    private int g;
    private float h;
    private a i;

    public interface a {
        void a(d dVar);
    }

    public int a() {
        return this.g;
    }

    public float b() {
        return this.h;
    }

    public Point c() {
        if (this.f7624e != -1) {
            return this.f7622c;
        }
        return new Point();
    }

    public Point d() {
        if (this.f != -1) {
            return this.f7623d;
        }
        return new Point();
    }

    public d(a aVar) {
        this.g = -1;
        this.h = 1.0f;
        this.i = aVar;
        this.g = -1;
        this.h = 1.0f;
    }

    public boolean a(MotionEvent motionEvent) {
        try {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1) {
                    this.g = 2;
                    if (this.f7624e != -1 && this.f != -1) {
                        this.i.a(this);
                    }
                    this.h = 1.0f;
                    this.f7624e = -1;
                } else if (actionMasked != 2) {
                    if (actionMasked != 5) {
                        if (actionMasked == 6) {
                            this.g = 2;
                            if (this.f7624e != -1 && this.f != -1) {
                                this.i.a(this);
                            }
                            this.h = 1.0f;
                            this.f = -1;
                        }
                    } else if (this.f == -1) {
                        this.f = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.f7620a.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f7624e));
                        this.f7620a.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f7624e));
                        this.f7621b.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f));
                        this.f7621b.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f));
                        this.f7622c.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f7624e));
                        this.f7622c.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f7624e));
                        this.f7623d.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f));
                        this.f7623d.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f));
                        this.g = 0;
                        if (this.f7624e != -1) {
                            this.i.a(this);
                        }
                    }
                } else if (this.f7624e != -1 && this.f != -1) {
                    this.g = 1;
                    this.f7622c.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f7624e));
                    this.f7622c.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f7624e));
                    this.f7623d.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f));
                    this.f7623d.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f));
                    e();
                    if (this.i != null) {
                        this.i.a(this);
                    }
                }
            } else if (this.f7624e == -1) {
                this.f7624e = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.f = -1;
                this.g = 0;
            }
        } catch (IllegalArgumentException unused) {
        }
        return true;
    }

    private void e() {
        double dSqrt = Math.sqrt(Math.pow(this.f7621b.x - this.f7620a.x, 2.0d) + Math.pow(this.f7621b.y - this.f7620a.y, 2.0d));
        double dSqrt2 = Math.sqrt(Math.pow(this.f7623d.x - this.f7622c.x, 2.0d) + Math.pow(this.f7623d.y - this.f7622c.y, 2.0d));
        if (dSqrt != 0.0d) {
            this.h = (float) (dSqrt2 / dSqrt);
        } else {
            this.h = 1.0f;
        }
    }
}
