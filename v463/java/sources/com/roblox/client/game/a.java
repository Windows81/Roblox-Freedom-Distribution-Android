package com.roblox.client.game;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.roblox.client.RbxKeyboard;
import com.roblox.client.game.b;
import com.roblox.client.game.d;
import com.roblox.client.o;
import com.roblox.client.q;
import com.roblox.client.r;
import com.roblox.client.s;
import com.roblox.engine.a.a;
import com.roblox.engine.b;
import com.roblox.engine.jni.OnAppBridgeNotificationListener;
import com.roblox.engine.jni.RunOnMainEngineJavaCallback;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends s implements SurfaceHolder.Callback, View.OnClickListener, com.roblox.client.purchase.a, b.a {
    private com.roblox.engine.b aB;
    private o aC;
    private boolean aD;
    private com.roblox.client.e aE;
    private com.roblox.client.purchase.b aF;
    private d at;
    private SurfaceView au;
    private View av;
    private View aw;
    private com.roblox.engine.a.a ay;
    private ViewTreeObserver.OnGlobalLayoutListener az;
    public final String as = "rbx.appshell";
    private com.roblox.engine.e ax = new com.roblox.engine.e();
    private Handler aA = new Handler(Looper.getMainLooper());

    public interface d {
        void b(String str);

        void w();
    }

    public a() {
        com.roblox.client.game.b.a().a(new RunOnMainEngineJavaCallback(this.aA, new b()));
        this.aE = new com.roblox.client.e(this);
        this.aF = new com.roblox.client.purchase.b(this, true);
    }

    @Override // com.roblox.client.purchase.a
    public r aq() {
        return (r) r();
    }

    @Override // com.roblox.engine.b.a
    public float o() {
        return this.ax.a(p());
    }

    @Override // com.roblox.engine.b.a
    public boolean j_() {
        return this.aD;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        com.roblox.client.ae.k.b("rbx.appshell", "onCreate:");
        com.roblox.client.game.b.a().a(p());
        com.roblox.client.game.b.a().a(e.a(p()));
    }

    @Override // androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        com.roblox.client.ae.k.b("rbx.appshell", "onCreateView:");
        View viewInflate = layoutInflater.inflate(o.g.fragment_appshell, viewGroup, false);
        c(viewInflate);
        b(viewInflate);
        at();
        View viewFindViewById = viewInflate.findViewById(o.f.retry_layout);
        this.aw = viewFindViewById;
        viewFindViewById.findViewById(o.f.reconnect_button).setOnClickListener(this);
        if (!com.roblox.client.game.b.a().e()) {
            this.aw.setVisibility(0);
        } else {
            this.au.setVisibility(0);
        }
        return viewInflate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != o.f.reconnect_button || ap()) {
            return;
        }
        as();
    }

    private void as() {
        com.roblox.client.ae.k.c("rbx.appshell", "loadSettings()");
        this.aw.setVisibility(8);
        com.roblox.client.game.b.a().b(new b.g() { // from class: com.roblox.client.game.a.1
            @Override // com.roblox.client.game.b.g
            public void a(int i) {
                if (i != 0) {
                    a.this.aw.setVisibility(0);
                    return;
                }
                com.roblox.client.game.b.a().a(e.a(a.this.p()));
                a.this.au.setVisibility(0);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void F() {
        super.F();
        com.roblox.engine.b bVar = this.aB;
        if (bVar != null) {
            bVar.a(false);
        }
        if (com.roblox.client.b.bS() && this.aw.getVisibility() == 0) {
            as();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void G() {
        super.G();
        com.roblox.engine.b bVar = this.aB;
        if (bVar != null) {
            bVar.a();
        }
    }

    private void b(View view) {
        RbxKeyboard rbxKeyboard = (RbxKeyboard) view.findViewById(o.f.gl_edit_text);
        rbxKeyboard.setLayoutParams((FrameLayout.LayoutParams) rbxKeyboard.getLayoutParams());
        rbxKeyboard.setBackgroundColor(0);
        com.roblox.client.components.h.a(rbxKeyboard, p(), "SourceSansPro-Regular.ttf");
        this.aC = new l(rbxKeyboard);
    }

    @Override // androidx.fragment.app.Fragment
    public void d(boolean z) {
        super.d(z);
        com.roblox.client.ae.k.c("rbx.appshell", "onHiddenChanged() hidden:" + z);
        if (z) {
            com.roblox.client.game.b.a().c();
            return;
        }
        if (com.roblox.client.b.bM() && !this.aD) {
            if (com.roblox.client.game.b.a().e()) {
                com.roblox.client.ae.k.c("rbx.appshell", "onHiddenChanged() surface not yet created - show surface");
                this.au.setVisibility(0);
                this.aw.setVisibility(8);
                return;
            } else {
                com.roblox.client.ae.k.c("rbx.appshell", "onHiddenChanged() surface not yet created - initializing");
                as();
                return;
            }
        }
        com.roblox.client.game.b.a().a(this.au.getHolder().getSurface());
    }

    private void c(View view) {
        com.roblox.client.ae.k.c("rbx.appshell", "initSurfaceView()");
        SurfaceView surfaceView = (SurfaceView) view.findViewById(o.f.surfaceview);
        this.au = surfaceView;
        surfaceView.setFocusable(true);
        this.au.setFocusableInTouchMode(true);
        this.au.getHolder().addCallback(this);
        com.roblox.engine.b bVar = new com.roblox.engine.b(r(), this.au, this);
        this.aB = bVar;
        this.au.setOnTouchListener(bVar);
    }

    private void at() {
        this.ay = new com.roblox.engine.a.a(p(), au()) { // from class: com.roblox.client.game.a.2
            @Override // com.roblox.engine.a.a
            public com.roblox.engine.a.b a() {
                androidx.fragment.app.c cVarR = a.this.r();
                if (cVarR != null) {
                    return com.roblox.engine.a.b.a(a.this.au.getRootView(), cVarR.getWindowManager(), a.this.av, ((q) a.this.r()).L().b());
                }
                return null;
            }
        };
        this.az = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.roblox.client.game.a.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (a.this.x()) {
                    a.this.ay.a(false);
                } else {
                    com.roblox.client.ae.k.d("rbx.appshell", "onGlobalLayout() fragment not attached");
                }
            }
        };
        this.au.getViewTreeObserver().addOnGlobalLayoutListener(this.az);
    }

    private a.C0183a au() {
        a.C0183a c0183a = new a.C0183a();
        TypedValue typedValue = new TypedValue();
        s().getValue(o.d.mainToolbarHeight, typedValue, true);
        c0183a.f7583a = (int) TypedValue.complexToFloat(typedValue.data);
        return c0183a;
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void d(Bundle bundle) {
        super.d(bundle);
        this.av = E().getRootView().findViewById(o.f.content_main);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        com.roblox.client.ae.k.c("rbx.appshell", "surfaceCreated()");
        this.aD = true;
        if (B()) {
            return;
        }
        com.roblox.client.game.b.a().a(this.au.getHolder().getSurface());
        d dVar = this.at;
        if (dVar != null) {
            dVar.w();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        com.roblox.client.ae.k.c("rbx.appshell", "surfaceChanged()");
        if (B()) {
            return;
        }
        com.roblox.client.game.b.a().a(surfaceHolder.getSurface(), o());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        com.roblox.client.ae.k.c("rbx.appshell", "surfaceDestroyed()");
        this.aD = false;
        com.roblox.client.game.b.a().b();
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void j() {
        super.j();
        com.roblox.client.ae.k.c("rbx.appshell", "onDestroyView()");
        this.au.getViewTreeObserver().removeOnGlobalLayoutListener(this.az);
    }

    @Override // androidx.fragment.app.Fragment
    public void H() {
        super.H();
        com.roblox.client.ae.k.c("rbx.appshell", "onDestroy()");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof d) {
            this.at = (d) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    public Surface ar() {
        if (this.aD) {
            return this.au.getHolder().getSurface();
        }
        return null;
    }

    /* JADX INFO: renamed from: com.roblox.client.game.a$a, reason: collision with other inner class name */
    private class C0147a implements d.a {
        private C0147a() {
        }

        @Override // com.roblox.client.game.d.a
        public void a(String str) {
            com.roblox.client.ae.k.c("rbx.appshell", "onAppReady() " + str);
            if ("AvatarEditor".equals(str)) {
                com.roblox.client.ae.k.c("rbx.appshell", "onAppReady() check catalog promo");
                a.this.aE.a();
            }
            if (a.this.at != null) {
                a.this.at.b(str);
            }
        }
    }

    private class c implements d.b {
        private c() {
        }

        @Override // com.roblox.client.game.d.b
        public s a() {
            return a.this;
        }
    }

    private class b extends com.roblox.client.game.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private OnAppBridgeNotificationListener f6234b;

        private b() {
        }

        @Override // com.roblox.client.game.c
        public o a() {
            return a.this.aC;
        }

        @Override // com.roblox.engine.jni.EngineJavaCallback2
        public void a(long j, String str, String str2) {
            if (com.roblox.client.m.c.a().cR()) {
                a.this.aF.a(j, str, str2);
            }
        }

        @Override // com.roblox.engine.jni.EngineJavaCallback2
        public void a(String str) {
            a.this.aB.a(true);
        }

        @Override // com.roblox.engine.jni.EngineJavaCallback2
        public void a(String str, String str2) {
            com.roblox.client.a.a(a.this.r(), str2, str);
        }

        @Override // com.roblox.engine.jni.EngineJavaCallback2
        public void b(String str, String str2) {
            if (this.f6234b == null) {
                this.f6234b = com.roblox.client.l.a().a(new C0147a(), new c());
            }
            this.f6234b.a(str, str2);
        }

        @Override // com.roblox.engine.jni.EngineJavaCallback2
        public void a(long j) {
            if (a.this.ay != null) {
                a.this.ay.a(true);
            }
        }
    }
}
