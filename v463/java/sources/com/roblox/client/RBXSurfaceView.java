package com.roblox.client;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.SurfaceView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RBXSurfaceView extends SurfaceView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected com.roblox.client.components.l f5570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f5571b;

    public RBXSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5571b = null;
        a();
        this.f5571b = context;
    }

    protected void a() {
        com.roblox.client.components.l lVar = new com.roblox.client.components.l();
        this.f5570a = lVar;
        lVar.a(b.bL());
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        return PointerIcon.getSystemIcon(this.f5571b, 0);
    }

    @Override // android.view.View
    public boolean onFilterTouchEventForSecurity(MotionEvent motionEvent) {
        return this.f5570a.a(motionEvent) && super.onFilterTouchEventForSecurity(motionEvent);
    }
}
