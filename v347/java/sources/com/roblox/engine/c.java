package com.roblox.engine;

import android.graphics.Point;
import android.view.MotionEvent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {
    private a h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Point f7957a = new Point();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Point f7958b = new Point();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Point f7959c = new Point();
    private float f = 0.0f;
    private int g = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7960d = -1;
    private int e = -1;

    public interface a {
        void a(c cVar);
    }

    public float a() {
        return this.f;
    }

    public int b() {
        return this.g;
    }

    public Point c() {
        return this.f7960d != -1 ? this.f7957a : new Point();
    }

    public Point d() {
        return this.e != -1 ? this.f7958b : new Point();
    }

    public c(a aVar) {
        this.h = aVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean a(MotionEvent motionEvent) {
        float y;
        float f;
        float y2;
        float x;
        switch (motionEvent.getActionMasked()) {
            case 0:
                if (this.f7960d == -1) {
                    this.f7960d = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.e = -1;
                    this.g = 0;
                    this.f = 0.0f;
                }
                return true;
            case 1:
                this.g = 2;
                if (this.f7960d != -1 && this.e != -1) {
                    this.h.a(this);
                }
                this.f = 0.0f;
                this.f7960d = -1;
                return true;
            case 2:
                if (this.f7960d != -1 && this.e != -1) {
                    this.g = 1;
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f7960d);
                    int iFindPointerIndex2 = motionEvent.findPointerIndex(this.e);
                    if (iFindPointerIndex == -1 || iFindPointerIndex >= motionEvent.getPointerCount()) {
                        y = -1.0f;
                        f = -1.0f;
                    } else {
                        float x2 = motionEvent.getX(motionEvent.findPointerIndex(this.f7960d));
                        y = motionEvent.getY(motionEvent.findPointerIndex(this.f7960d));
                        f = x2;
                    }
                    if (iFindPointerIndex2 == -1 || iFindPointerIndex2 >= motionEvent.getPointerCount()) {
                        y2 = -1.0f;
                        x = -1.0f;
                    } else {
                        x = motionEvent.getX(motionEvent.findPointerIndex(this.e));
                        y2 = motionEvent.getY(motionEvent.findPointerIndex(this.e));
                    }
                    if (x != -1.0f && y2 != -1.0f && f != -1.0f && y != -1.0f) {
                        a(x, y2, f, y);
                    }
                    if (this.h != null) {
                        this.h.a(this);
                    }
                }
                return true;
            case 3:
            case 4:
            default:
                return true;
            case 5:
                if (this.e == -1) {
                    this.e = motionEvent.getPointerId(motionEvent.getActionIndex());
                    int iFindPointerIndex3 = motionEvent.findPointerIndex(this.f7960d);
                    int iFindPointerIndex4 = motionEvent.findPointerIndex(this.e);
                    if (iFindPointerIndex3 != -1 && iFindPointerIndex3 < motionEvent.getPointerCount()) {
                        this.f7957a.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f7960d));
                        this.f7957a.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f7960d));
                    }
                    if (iFindPointerIndex4 != -1 && iFindPointerIndex4 < motionEvent.getPointerCount()) {
                        this.f7958b.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.e));
                        this.f7958b.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.e));
                    }
                    this.f7959c.x = this.f7958b.x - this.f7957a.x;
                    this.f7959c.y = this.f7958b.y - this.f7957a.y;
                    if (this.f7960d != -1) {
                        this.h.a(this);
                    }
                }
                return true;
            case 6:
                this.g = 2;
                if (this.f7960d != -1 && this.e != -1) {
                    this.h.a(this);
                }
                this.f = 0.0f;
                this.e = -1;
                return true;
        }
    }

    private void a(float f, float f2, float f3, float f4) {
        Point point = new Point();
        point.x = (int) (f - f3);
        point.y = (int) (f2 - f4);
        this.f7959c.x = this.f7958b.x - this.f7957a.x;
        this.f7959c.y = this.f7958b.y - this.f7957a.y;
        double dAtan2 = Math.atan2((point.x * this.f7959c.y) - (point.y * this.f7959c.x), (this.f7959c.x * point.x) + (this.f7959c.y * point.y));
        this.f7958b.x = (int) f;
        this.f7958b.y = (int) f2;
        this.f7957a.x = (int) f3;
        this.f7957a.y = (int) f4;
        this.f -= (float) dAtan2;
    }
}
