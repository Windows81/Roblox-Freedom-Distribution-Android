package com.roblox.client.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CustomSwipeRefreshLayout extends androidx.j.a.c {
    private int n;
    private float o;

    public CustomSwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.n = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override // androidx.j.a.c, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.o = MotionEvent.obtain(motionEvent).getX();
        } else if (action == 2 && Math.abs(motionEvent.getX() - this.o) > this.n) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
