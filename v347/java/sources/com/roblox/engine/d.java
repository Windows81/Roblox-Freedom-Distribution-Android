package com.roblox.engine;

import android.graphics.Point;
import android.view.MotionEvent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Point f7971a = new Point();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Point f7972b = new Point();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Point f7973c = new Point();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Point f7974d = new Point();
    private int e = -1;
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
        return this.e != -1 ? this.f7973c : new Point();
    }

    public Point d() {
        return this.f != -1 ? this.f7974d : new Point();
    }

    public d(a aVar) {
        this.g = -1;
        this.h = 1.0f;
        this.i = aVar;
        this.g = -1;
        this.h = 1.0f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean a(MotionEvent motionEvent) {
        try {
            switch (motionEvent.getActionMasked()) {
                case 0:
                    if (this.e == -1) {
                        this.e = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.f = -1;
                        this.g = 0;
                    }
                    break;
                case 1:
                    this.g = 2;
                    if (this.e != -1 && this.f != -1) {
                        this.i.a(this);
                    }
                    this.h = 1.0f;
                    this.e = -1;
                    break;
                case 2:
                    if (this.e != -1 && this.f != -1) {
                        this.g = 1;
                        this.f7973c.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.e));
                        this.f7973c.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.e));
                        this.f7974d.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f));
                        this.f7974d.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f));
                        e();
                        if (this.i != null) {
                            this.i.a(this);
                        }
                    }
                    break;
                case 5:
                    if (this.f == -1) {
                        this.f = motionEvent.getPointerId(motionEvent.getActionIndex());
                        this.f7971a.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.e));
                        this.f7971a.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.e));
                        this.f7972b.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f));
                        this.f7972b.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f));
                        this.f7973c.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.e));
                        this.f7973c.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.e));
                        this.f7974d.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f));
                        this.f7974d.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f));
                        this.g = 0;
                        if (this.e != -1) {
                            this.i.a(this);
                        }
                    }
                    break;
                case 6:
                    this.g = 2;
                    if (this.e != -1 && this.f != -1) {
                        this.i.a(this);
                    }
                    this.h = 1.0f;
                    this.f = -1;
                    break;
            }
        } catch (IllegalArgumentException e) {
        }
        return true;
    }

    private void e() {
        float f = this.f7972b.x - this.f7971a.x;
        double dSqrt = Math.sqrt(Math.pow(this.f7972b.y - this.f7971a.y, 2.0d) + Math.pow(f, 2.0d));
        float f2 = this.f7974d.x - this.f7973c.x;
        double dSqrt2 = Math.sqrt(Math.pow(this.f7974d.y - this.f7973c.y, 2.0d) + Math.pow(f2, 2.0d));
        if (dSqrt != 0.0d) {
            this.h = (float) (dSqrt2 / dSqrt);
        } else {
            this.h = 1.0f;
        }
    }
}
