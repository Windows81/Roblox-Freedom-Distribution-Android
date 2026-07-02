package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
@TargetApi(19)
public final class at extends aq {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f4467d;

    @GuardedBy("mPopupWindowLock")
    private PopupWindow e;

    @GuardedBy("mPopupWindowLock")
    private boolean f;

    at(Context context, ij ijVar, qd qdVar, ap apVar) {
        super(context, ijVar, qdVar, apVar);
        this.f4467d = new Object();
        this.f = false;
    }

    private final void e() {
        synchronized (this.f4467d) {
            this.f = true;
            if ((this.f4034a instanceof Activity) && ((Activity) this.f4034a).isDestroyed()) {
                this.e = null;
            }
            if (this.e != null) {
                if (this.e.isShowing()) {
                    this.e.dismiss();
                }
                this.e = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ai
    protected final void a(int i) {
        e();
        super.a(i);
    }

    @Override // com.google.android.gms.internal.ads.ai, com.google.android.gms.internal.ads.kf
    public final void b() {
        e();
        super.b();
    }

    @Override // com.google.android.gms.internal.ads.aq
    protected final void d() {
        Window window = this.f4034a instanceof Activity ? ((Activity) this.f4034a).getWindow() : null;
        if (window == null || window.getDecorView() == null || ((Activity) this.f4034a).isDestroyed()) {
            return;
        }
        FrameLayout frameLayout = new FrameLayout(this.f4034a);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.addView(this.f4035b.getView(), -1, -1);
        synchronized (this.f4467d) {
            if (this.f) {
                return;
            }
            this.e = new PopupWindow((View) frameLayout, 1, 1, false);
            this.e.setOutsideTouchable(true);
            this.e.setClippingEnabled(false);
            jd.b("Displaying the 1x1 popup off the screen.");
            try {
                this.e.showAtLocation(window.getDecorView(), 0, -1, -1);
            } catch (Exception e) {
                this.e = null;
            }
        }
    }
}
