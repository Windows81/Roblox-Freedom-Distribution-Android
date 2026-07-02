package com.roblox.client;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.roblox.engine.jni.NativeGLInterface;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class f extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Vector<com.roblox.engine.a.c> f6921a = new Vector<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Vector<com.roblox.engine.a.c> f6922b = new Vector<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6923c;

    @Override // com.roblox.client.FragmentGlView, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (isVisible()) {
            a(new com.roblox.engine.a.a(false));
        }
    }

    @Override // com.roblox.client.FragmentGlView, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (isVisible()) {
            a(new com.roblox.engine.a.a(true));
        }
    }

    @Override // com.roblox.client.e, com.roblox.client.FragmentGlView
    protected FrameLayout initLoadingView(LayoutInflater layoutInflater, View view) {
        FrameLayout frameLayoutInitLoadingView = super.initLoadingView(layoutInflater, view);
        View viewInflate = layoutInflater.inflate(R.layout.toolbar_include, (ViewGroup) frameLayoutInitLoadingView, false);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewInflate.getLayoutParams();
        layoutParams.gravity = 48;
        layoutParams.topMargin = getStatusBarHeight();
        viewInflate.setLayoutParams(layoutParams);
        frameLayoutInitLoadingView.addView(viewInflate);
        return frameLayoutInitLoadingView;
    }

    @Override // com.roblox.client.FragmentGlView
    protected boolean hideLoadingViewOnSettingsRetrieved() {
        return false;
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        if (!z) {
            c();
        }
        a(new com.roblox.engine.a.a(!z));
    }

    private void c() {
        if (a("AvatarEditor")) {
            b();
        }
    }

    private boolean a(String str) {
        if (this.f6923c != null) {
            return this.f6923c.equals(str);
        }
        return false;
    }

    @Override // com.roblox.client.e, com.roblox.client.FragmentGlView
    public void onGameLoaded(long j) {
        super.onGameLoaded(j);
        a(this.f6921a);
    }

    public void a(com.roblox.engine.a.c cVar) {
        if (cVar != null) {
            this.f6921a.add(cVar);
            if (isGameLoaded()) {
                a(this.f6921a);
            }
        }
    }

    @Override // com.roblox.client.FragmentGlView
    public void onAppReady(String str) {
        super.onAppReady(str);
        a(this.f6922b);
        a(500L);
    }

    public void b(com.roblox.engine.a.c cVar) {
        if (cVar != null) {
            this.f6922b.add(cVar);
            if (isAppReady()) {
                a(this.f6922b);
            }
        }
    }

    public void a(Vector<com.roblox.engine.a.c> vector) {
        while (!vector.isEmpty()) {
            com.roblox.engine.a.c cVarRemove = vector.remove(0);
            com.roblox.client.util.g.a("rbx.glview", "publishPendingEvents() " + cVarRemove.f7935b + ", " + cVarRemove.f7936c + ", " + cVarRemove.f7937d);
            NativeGLInterface.nativeBroadcastEventWithNamespace(cVarRemove.f7935b, cVarRemove.f7936c, cVarRemove.f7937d);
            if (cVarRemove instanceof com.roblox.engine.a.d) {
                this.f6923c = ((com.roblox.engine.a.d) cVarRemove).f7938a;
                c();
            }
        }
    }
}
