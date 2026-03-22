package android.support.v7.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class aa implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {
    private static aa i;
    private static aa j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f1606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CharSequence f1607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f1608c = new Runnable() { // from class: android.support.v7.widget.aa.1
        @Override // java.lang.Runnable
        public void run() {
            aa.this.a(false);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f1609d = new Runnable() { // from class: android.support.v7.widget.aa.2
        @Override // java.lang.Runnable
        public void run() {
            aa.this.a();
        }
    };
    private int e;
    private int f;
    private ab g;
    private boolean h;

    public static void a(View view, CharSequence charSequence) {
        if (i != null && i.f1606a == view) {
            b(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            if (j != null && j.f1606a == view) {
                j.a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new aa(view, charSequence);
    }

    private aa(View view, CharSequence charSequence) {
        this.f1606a = view;
        this.f1607b = charSequence;
        this.f1606a.setOnLongClickListener(this);
        this.f1606a.setOnHoverListener(this);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.e = view.getWidth() / 2;
        this.f = view.getHeight() / 2;
        a(true);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.g == null || !this.h) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1606a.getContext().getSystemService("accessibility");
            if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
                switch (motionEvent.getAction()) {
                    case 7:
                        if (this.f1606a.isEnabled() && this.g == null) {
                            this.e = (int) motionEvent.getX();
                            this.f = (int) motionEvent.getY();
                            b(this);
                        }
                        break;
                    case 10:
                        a();
                        break;
                }
            }
        }
        return false;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        long longPressTimeout;
        if (android.support.v4.view.s.y(this.f1606a)) {
            b(null);
            if (j != null) {
                j.a();
            }
            j = this;
            this.h = z;
            this.g = new ab(this.f1606a.getContext());
            this.g.a(this.f1606a, this.e, this.f, this.h, this.f1607b);
            this.f1606a.addOnAttachStateChangeListener(this);
            if (this.h) {
                longPressTimeout = 2500;
            } else if ((android.support.v4.view.s.m(this.f1606a) & 1) == 1) {
                longPressTimeout = 3000 - ((long) ViewConfiguration.getLongPressTimeout());
            } else {
                longPressTimeout = 15000 - ((long) ViewConfiguration.getLongPressTimeout());
            }
            this.f1606a.removeCallbacks(this.f1609d);
            this.f1606a.postDelayed(this.f1609d, longPressTimeout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (j == this) {
            j = null;
            if (this.g != null) {
                this.g.a();
                this.g = null;
                this.f1606a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (i == this) {
            b(null);
        }
        this.f1606a.removeCallbacks(this.f1609d);
    }

    private static void b(aa aaVar) {
        if (i != null) {
            i.c();
        }
        i = aaVar;
        if (i != null) {
            i.b();
        }
    }

    private void b() {
        this.f1606a.postDelayed(this.f1608c, ViewConfiguration.getLongPressTimeout());
    }

    private void c() {
        this.f1606a.removeCallbacks(this.f1608c);
    }
}
