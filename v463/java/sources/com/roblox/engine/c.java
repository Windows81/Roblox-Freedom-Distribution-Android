package com.roblox.engine;

import android.graphics.Point;
import android.view.MotionEvent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {
    private a h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Point f7615a = new Point();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Point f7616b = new Point();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Point f7617c = new Point();
    private float f = 0.0f;
    private int g = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7618d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7619e = -1;

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
        if (this.f7618d != -1) {
            return this.f7615a;
        }
        return new Point();
    }

    public Point d() {
        if (this.f7619e != -1) {
            return this.f7616b;
        }
        return new Point();
    }

    public c(a aVar) {
        this.h = aVar;
    }

    public boolean a(MotionEvent motionEvent) {
        float x;
        float y;
        float y2;
        float x2;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.g = 2;
                if (this.f7618d != -1 && this.f7619e != -1) {
                    this.h.a(this);
                }
                this.f = 0.0f;
                this.f7618d = -1;
            } else if (actionMasked == 2) {
                int i = this.f7618d;
                if (i != -1 && this.f7619e != -1) {
                    this.g = 1;
                    int iFindPointerIndex = motionEvent.findPointerIndex(i);
                    int iFindPointerIndex2 = motionEvent.findPointerIndex(this.f7619e);
                    if (iFindPointerIndex == -1 || iFindPointerIndex >= motionEvent.getPointerCount()) {
                        x = -1.0f;
                        y = -1.0f;
                    } else {
                        x = motionEvent.getX(motionEvent.findPointerIndex(this.f7618d));
                        y = motionEvent.getY(motionEvent.findPointerIndex(this.f7618d));
                    }
                    if (iFindPointerIndex2 == -1 || iFindPointerIndex2 >= motionEvent.getPointerCount()) {
                        y2 = -1.0f;
                        x2 = -1.0f;
                    } else {
                        x2 = motionEvent.getX(motionEvent.findPointerIndex(this.f7619e));
                        y2 = motionEvent.getY(motionEvent.findPointerIndex(this.f7619e));
                    }
                    if (x2 != -1.0f && y2 != -1.0f && x != -1.0f && y != -1.0f) {
                        a(x2, y2, x, y);
                    }
                    a aVar = this.h;
                    if (aVar != null) {
                        aVar.a(this);
                    }
                }
            } else if (actionMasked != 5) {
                if (actionMasked == 6) {
                    this.g = 2;
                    if (this.f7618d != -1 && this.f7619e != -1) {
                        this.h.a(this);
                    }
                    this.f = 0.0f;
                    this.f7619e = -1;
                }
            } else if (this.f7619e == -1) {
                this.f7619e = motionEvent.getPointerId(motionEvent.getActionIndex());
                int iFindPointerIndex3 = motionEvent.findPointerIndex(this.f7618d);
                int iFindPointerIndex4 = motionEvent.findPointerIndex(this.f7619e);
                if (iFindPointerIndex3 != -1 && iFindPointerIndex3 < motionEvent.getPointerCount()) {
                    this.f7615a.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f7618d));
                    this.f7615a.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f7618d));
                }
                if (iFindPointerIndex4 != -1 && iFindPointerIndex4 < motionEvent.getPointerCount()) {
                    this.f7616b.x = (int) motionEvent.getX(motionEvent.findPointerIndex(this.f7619e));
                    this.f7616b.y = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f7619e));
                }
                this.f7617c.x = this.f7616b.x - this.f7615a.x;
                this.f7617c.y = this.f7616b.y - this.f7615a.y;
                if (this.f7618d != -1) {
                    this.h.a(this);
                }
            }
        } else if (this.f7618d == -1) {
            this.f7618d = motionEvent.getPointerId(motionEvent.getActionIndex());
            this.f7619e = -1;
            this.g = 0;
            this.f = 0.0f;
        }
        return true;
    }

    private void a(float f, float f2, float f3, float f4) {
        Point point = new Point();
        point.x = (int) (f - f3);
        point.y = (int) (f2 - f4);
        this.f7617c.x = this.f7616b.x - this.f7615a.x;
        this.f7617c.y = this.f7616b.y - this.f7615a.y;
        double dAtan2 = Math.atan2((point.x * this.f7617c.y) - (point.y * this.f7617c.x), (this.f7617c.x * point.x) + (this.f7617c.y * point.y));
        this.f7616b.x = (int) f;
        this.f7616b.y = (int) f2;
        this.f7615a.x = (int) f3;
        this.f7615a.y = (int) f4;
        this.f -= (float) dAtan2;
    }
}
