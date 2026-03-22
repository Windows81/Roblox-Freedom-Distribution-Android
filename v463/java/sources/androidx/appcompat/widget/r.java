package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class r implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener {
    private static r j;
    private static r k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f1031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CharSequence f1032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1033c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f1034d = new Runnable() { // from class: androidx.appcompat.widget.r.1
        @Override // java.lang.Runnable
        public void run() {
            r.this.a(false);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f1035e = new Runnable() { // from class: androidx.appcompat.widget.r.2
        @Override // java.lang.Runnable
        public void run() {
            r.this.a();
        }
    };
    private int f;
    private int g;
    private s h;
    private boolean i;

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    public static void a(View view, CharSequence charSequence) {
        r rVar = j;
        if (rVar != null && rVar.f1031a == view) {
            a((r) null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            r rVar2 = k;
            if (rVar2 != null && rVar2.f1031a == view) {
                rVar2.a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new r(view, charSequence);
    }

    private r(View view, CharSequence charSequence) {
        this.f1031a = view;
        this.f1032b = charSequence;
        this.f1033c = androidx.core.h.s.a(ViewConfiguration.get(view.getContext()));
        d();
        this.f1031a.setOnLongClickListener(this);
        this.f1031a.setOnHoverListener(this);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f = view.getWidth() / 2;
        this.g = view.getHeight() / 2;
        a(true);
        return true;
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.h != null && this.i) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f1031a.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                d();
                a();
            }
        } else if (this.f1031a.isEnabled() && this.h == null && a(motionEvent)) {
            a(this);
        }
        return false;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }

    void a(boolean z) {
        long j2;
        int longPressTimeout;
        long j3;
        if (androidx.core.h.r.z(this.f1031a)) {
            a((r) null);
            r rVar = k;
            if (rVar != null) {
                rVar.a();
            }
            k = this;
            this.i = z;
            s sVar = new s(this.f1031a.getContext());
            this.h = sVar;
            sVar.a(this.f1031a, this.f, this.g, this.i, this.f1032b);
            this.f1031a.addOnAttachStateChangeListener(this);
            if (this.i) {
                j3 = 2500;
            } else {
                if ((androidx.core.h.r.n(this.f1031a) & 1) == 1) {
                    j2 = 3000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                } else {
                    j2 = 15000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                }
                j3 = j2 - ((long) longPressTimeout);
            }
            this.f1031a.removeCallbacks(this.f1035e);
            this.f1031a.postDelayed(this.f1035e, j3);
        }
    }

    void a() {
        if (k == this) {
            k = null;
            s sVar = this.h;
            if (sVar != null) {
                sVar.a();
                this.h = null;
                d();
                this.f1031a.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (j == this) {
            a((r) null);
        }
        this.f1031a.removeCallbacks(this.f1035e);
    }

    private static void a(r rVar) {
        r rVar2 = j;
        if (rVar2 != null) {
            rVar2.c();
        }
        j = rVar;
        if (rVar != null) {
            rVar.b();
        }
    }

    private void b() {
        this.f1031a.postDelayed(this.f1034d, ViewConfiguration.getLongPressTimeout());
    }

    private void c() {
        this.f1031a.removeCallbacks(this.f1034d);
    }

    private boolean a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (Math.abs(x - this.f) <= this.f1033c && Math.abs(y - this.g) <= this.f1033c) {
            return false;
        }
        this.f = x;
        this.g = y;
        return true;
    }

    private void d() {
        this.f = Integer.MAX_VALUE;
        this.g = Integer.MAX_VALUE;
    }
}
