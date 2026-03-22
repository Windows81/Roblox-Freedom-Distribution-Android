package com.roblox.client;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.SurfaceView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RBXSurfaceView extends SurfaceView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6420a;

    public RBXSurfaceView(Context context) {
        super(context);
        this.f6420a = null;
        this.f6420a = context;
    }

    public RBXSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6420a = null;
        this.f6420a = context;
    }

    public RBXSurfaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6420a = null;
        this.f6420a = context;
    }

    @Override // android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        return PointerIcon.getSystemIcon(this.f6420a, 0);
    }
}
