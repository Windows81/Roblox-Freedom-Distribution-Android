package android.support.design.widget;

import android.support.design.widget.CoordinatorLayout;
import android.support.v4.widget.q;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.a<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    android.support.v4.widget.q f306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a f307c;
    private boolean i;
    private float h = 0.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f308d = 2;
    float e = 0.5f;
    float f = 0.0f;
    float g = 0.5f;
    private final q.a j = new q.a() { // from class: android.support.design.widget.SwipeDismissBehavior.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f310b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f311c = -1;

        @Override // android.support.v4.widget.q.a
        public boolean a(View view, int i) {
            return this.f311c == -1 && SwipeDismissBehavior.this.a(view);
        }

        @Override // android.support.v4.widget.q.a
        public void b(View view, int i) {
            this.f311c = i;
            this.f310b = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // android.support.v4.widget.q.a
        public void a(int i) {
            if (SwipeDismissBehavior.this.f307c != null) {
                SwipeDismissBehavior.this.f307c.a(i);
            }
        }

        @Override // android.support.v4.widget.q.a
        public void a(View view, float f, float f2) {
            int i;
            this.f311c = -1;
            int width = view.getWidth();
            boolean z = false;
            if (a(view, f)) {
                i = view.getLeft() < this.f310b ? this.f310b - width : this.f310b + width;
                z = true;
            } else {
                i = this.f310b;
            }
            if (SwipeDismissBehavior.this.f306b.a(i, view.getTop())) {
                android.support.v4.view.s.a(view, new b(view, z));
            } else if (z && SwipeDismissBehavior.this.f307c != null) {
                SwipeDismissBehavior.this.f307c.a(view);
            }
        }

        private boolean a(View view, float f) {
            if (f == 0.0f) {
                return Math.abs(view.getLeft() - this.f310b) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.e);
            }
            boolean z = android.support.v4.view.s.e(view) == 1;
            if (SwipeDismissBehavior.this.f308d == 2) {
                return true;
            }
            if (SwipeDismissBehavior.this.f308d == 0) {
                return z ? f < 0.0f : f > 0.0f;
            }
            if (SwipeDismissBehavior.this.f308d == 1) {
                return z ? f > 0.0f : f < 0.0f;
            }
            return false;
        }

        @Override // android.support.v4.widget.q.a
        public int b(View view) {
            return view.getWidth();
        }

        @Override // android.support.v4.widget.q.a
        public int b(View view, int i, int i2) {
            int width;
            int width2;
            boolean z = android.support.v4.view.s.e(view) == 1;
            if (SwipeDismissBehavior.this.f308d == 0) {
                if (z) {
                    width = this.f310b - view.getWidth();
                    width2 = this.f310b;
                } else {
                    width = this.f310b;
                    width2 = this.f310b + view.getWidth();
                }
            } else if (SwipeDismissBehavior.this.f308d == 1) {
                if (z) {
                    width = this.f310b;
                    width2 = this.f310b + view.getWidth();
                } else {
                    width = this.f310b - view.getWidth();
                    width2 = this.f310b;
                }
            } else {
                width = this.f310b - view.getWidth();
                width2 = this.f310b + view.getWidth();
            }
            return SwipeDismissBehavior.a(width, i, width2);
        }

        @Override // android.support.v4.widget.q.a
        public int a(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // android.support.v4.widget.q.a
        public void a(View view, int i, int i2, int i3, int i4) {
            float width = this.f310b + (view.getWidth() * SwipeDismissBehavior.this.f);
            float width2 = this.f310b + (view.getWidth() * SwipeDismissBehavior.this.g);
            if (i <= width) {
                view.setAlpha(1.0f);
            } else if (i >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.a(0.0f, 1.0f - SwipeDismissBehavior.b(width, width2, i), 1.0f));
            }
        }
    };

    public interface a {
        void a(int i);

        void a(View view);
    }

    public void a(a aVar) {
        this.f307c = aVar;
    }

    public void a(int i) {
        this.f308d = i;
    }

    public void a(float f) {
        this.f = a(0.0f, f, 1.0f);
    }

    public void b(float f) {
        this.g = a(0.0f, f, 1.0f);
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f305a;
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.f305a = coordinatorLayout.a(v, (int) motionEvent.getX(), (int) motionEvent.getY());
                z = this.f305a;
                break;
            case 1:
            case 3:
                this.f305a = false;
                break;
        }
        if (!z) {
            return false;
        }
        a((ViewGroup) coordinatorLayout);
        return this.f306b.a(motionEvent);
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.f306b == null) {
            return false;
        }
        this.f306b.b(motionEvent);
        return true;
    }

    public boolean a(View view) {
        return true;
    }

    private void a(ViewGroup viewGroup) {
        android.support.v4.widget.q qVarA;
        if (this.f306b == null) {
            if (this.i) {
                qVarA = android.support.v4.widget.q.a(viewGroup, this.h, this.j);
            } else {
                qVarA = android.support.v4.widget.q.a(viewGroup, this.j);
            }
            this.f306b = qVarA;
        }
    }

    private class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f313b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f314c;

        b(View view, boolean z) {
            this.f313b = view;
            this.f314c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwipeDismissBehavior.this.f306b != null && SwipeDismissBehavior.this.f306b.a(true)) {
                android.support.v4.view.s.a(this.f313b, this);
            } else if (this.f314c && SwipeDismissBehavior.this.f307c != null) {
                SwipeDismissBehavior.this.f307c.a(this.f313b);
            }
        }
    }

    static float a(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    static int a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    static float b(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }
}
