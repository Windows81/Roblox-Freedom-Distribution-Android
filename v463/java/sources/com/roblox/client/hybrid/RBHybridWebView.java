package com.roblox.client.hybrid;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.roblox.a.d;
import com.roblox.client.b;
import com.roblox.client.components.l;
import com.roblox.client.hybrid.a.c;
import com.roblox.client.hybrid.a.e;
import com.roblox.client.hybrid.a.f;
import com.roblox.client.hybrid.a.g;
import com.roblox.client.hybrid.a.h;
import com.roblox.client.hybrid.a.i;
import com.roblox.client.hybrid.a.j;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RBHybridWebView extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected l f6365a;

    public void a() {
    }

    public void b() {
    }

    public RBHybridWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.roblox.a.d
    protected void b(Context context) {
        super.b(context);
        l lVar = new l();
        this.f6365a = lVar;
        lVar.a(b.bL());
    }

    public RBHybridWebView(Context context) {
        super(context);
    }

    @Override // com.roblox.a.d
    protected void a(Context context) {
        a(new j());
        a(new c());
        a(new com.roblox.client.hybrid.a.a());
        a(new com.roblox.client.hybrid.a.d());
        a(new com.roblox.client.hybrid.a.b());
        a(new i());
        a(new h(context));
        a(new f());
        a(new g());
        a(new e());
    }

    @Override // android.view.View
    public boolean onFilterTouchEventForSecurity(MotionEvent motionEvent) {
        return this.f6365a.a(motionEvent) && super.onFilterTouchEventForSecurity(motionEvent);
    }
}
