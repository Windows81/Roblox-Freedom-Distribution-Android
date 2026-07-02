package com.google.ads.interactivemedia.v3.impl;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.google.ads.interactivemedia.v3.impl.data.a;
import com.google.ads.interactivemedia.v3.impl.w;
import com.google.ads.interactivemedia.v3.impl.x;

/* JADX INFO: loaded from: classes.dex */
public class a implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f2781a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f2783c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f2784d;
    private C0058a e;
    private Activity f;
    private boolean g;

    public interface b {
        long a();
    }

    private static class c implements b {
        private c() {
        }

        @Override // com.google.ads.interactivemedia.v3.impl.a.b
        public long a() {
            return System.currentTimeMillis();
        }
    }

    /* JADX INFO: renamed from: com.google.ads.interactivemedia.v3.impl.a$a, reason: collision with other inner class name */
    @TargetApi(14)
    protected class C0058a implements Application.ActivityLifecycleCallbacks {
        protected C0058a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (a.this.f == activity) {
                a.this.f2781a.b(new w(w.b.activityMonitor, w.c.appStateChanged, a.this.f2782b, a.this.a("", "", "", "active")));
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (a.this.f == null || a.this.f == activity) {
                a.this.f = activity;
                a.this.f2781a.b(new w(w.b.activityMonitor, w.c.appStateChanged, a.this.f2782b, a.this.a("", "", "", "inactive")));
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (a.this.f == activity) {
                a.this.f = null;
                Application applicationI = a.this.i();
                if (applicationI != null) {
                    applicationI.unregisterActivityLifecycleCallbacks(a.this.e);
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }
    }

    public a(String str, x xVar, View view) {
        this(str, xVar, view, new c());
    }

    protected a(String str, x xVar, View view, b bVar) {
        this.f2782b = str;
        this.f2781a = xVar;
        this.f2783c = view;
        this.f2784d = bVar;
        this.f = null;
        this.e = null;
        this.g = false;
    }

    protected void a(boolean z) {
        this.g = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Application i() {
        Context applicationContext = this.f2783c.getContext().getApplicationContext();
        if (applicationContext instanceof Application) {
            return (Application) applicationContext;
        }
        return null;
    }

    public void a() {
        this.f2781a.a(this, this.f2782b);
    }

    public void b() {
        this.f2781a.b(this.f2782b);
    }

    @TargetApi(14)
    public void c() {
        Application applicationI;
        if (Build.VERSION.SDK_INT >= 14 && this.g && (applicationI = i()) != null) {
            this.e = new C0058a();
            applicationI.registerActivityLifecycleCallbacks(this.e);
        }
    }

    @TargetApi(14)
    public void d() {
        Application applicationI;
        if (Build.VERSION.SDK_INT >= 14 && (applicationI = i()) != null && this.e != null) {
            applicationI.unregisterActivityLifecycleCallbacks(this.e);
        }
    }

    public double e() {
        AudioManager audioManager = (AudioManager) this.f2783c.getContext().getSystemService("audio");
        if (audioManager == null) {
            return 0.0d;
        }
        return ((double) audioManager.getStreamVolume(3)) / ((double) audioManager.getStreamMaxVolume(3));
    }

    public boolean f() {
        return (this.f2783c.getGlobalVisibleRect(new Rect()) && this.f2783c.isShown()) ? false : true;
    }

    public a.AbstractC0060a g() {
        int[] iArr = new int[2];
        this.f2783c.getLocationOnScreen(iArr);
        return a.AbstractC0060a.create(iArr[0], iArr[1], this.f2783c.getHeight(), this.f2783c.getWidth());
    }

    public a.AbstractC0060a h() {
        Rect rect = new Rect();
        boolean globalVisibleRect = this.f2783c.getGlobalVisibleRect(rect);
        boolean z = this.f2783c.getWindowToken() != null;
        if (!globalVisibleRect || !z || !this.f2783c.isShown()) {
            rect.set(0, 0, 0, 0);
        }
        return a.AbstractC0060a.create(rect.left, rect.top, rect.height(), rect.width());
    }

    public com.google.ads.interactivemedia.v3.impl.data.a a(String str, String str2, String str3, String str4) {
        a.AbstractC0060a abstractC0060aG = g();
        return com.google.ads.interactivemedia.v3.impl.data.a.builder().queryId(str).eventId(str2).vastEvent(str3).appState(str4).nativeTime(this.f2784d.a()).nativeVolume(e()).nativeViewHidden(f()).nativeViewBounds(abstractC0060aG).nativeViewVisibleBounds(h()).build();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.x.a
    public void a(String str, String str2) {
        this.f2781a.b(new w(w.b.activityMonitor, w.c.viewability, this.f2782b, a(str, str2, "", "")));
    }

    @Override // com.google.ads.interactivemedia.v3.impl.x.a
    public void a(String str, String str2, String str3) {
        this.f2781a.b(new w(w.b.activityMonitor, w.c.viewability, this.f2782b, a(str, str2, str3, "")));
    }
}
