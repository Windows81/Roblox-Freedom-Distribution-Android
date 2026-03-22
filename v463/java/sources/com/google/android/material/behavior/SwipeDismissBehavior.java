package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.h.r;
import androidx.customview.a.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.b<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    androidx.customview.a.a f4848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f4849b;
    private boolean g;
    private boolean i;
    private float h = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f4850c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f4851d = 0.5f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    float f4852e = 0.0f;
    float f = 0.5f;
    private final a.AbstractC0036a j = new a.AbstractC0036a() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f4854b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f4855c = -1;

        @Override // androidx.customview.a.a.AbstractC0036a
        public boolean b(View view, int i) {
            return this.f4855c == -1 && SwipeDismissBehavior.this.a(view);
        }

        @Override // androidx.customview.a.a.AbstractC0036a
        public void a(View view, int i) {
            this.f4855c = i;
            this.f4854b = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.a.a.AbstractC0036a
        public void a(int i) {
            if (SwipeDismissBehavior.this.f4849b != null) {
                SwipeDismissBehavior.this.f4849b.a(i);
            }
        }

        @Override // androidx.customview.a.a.AbstractC0036a
        public void a(View view, float f, float f2) {
            int i;
            boolean z;
            this.f4855c = -1;
            int width = view.getWidth();
            if (a(view, f)) {
                int left = view.getLeft();
                int i2 = this.f4854b;
                i = left < i2 ? i2 - width : i2 + width;
                z = true;
            } else {
                i = this.f4854b;
                z = false;
            }
            if (SwipeDismissBehavior.this.f4848a.a(i, view.getTop())) {
                r.a(view, new b(view, z));
            } else {
                if (!z || SwipeDismissBehavior.this.f4849b == null) {
                    return;
                }
                SwipeDismissBehavior.this.f4849b.a(view);
            }
        }

        private boolean a(View view, float f) {
            if (f == 0.0f) {
                return Math.abs(view.getLeft() - this.f4854b) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f4851d);
            }
            boolean z = r.f(view) == 1;
            if (SwipeDismissBehavior.this.f4850c == 2) {
                return true;
            }
            if (SwipeDismissBehavior.this.f4850c == 0) {
                if (z) {
                    if (f >= 0.0f) {
                        return false;
                    }
                } else if (f <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (SwipeDismissBehavior.this.f4850c != 1) {
                return false;
            }
            if (z) {
                if (f <= 0.0f) {
                    return false;
                }
            } else if (f >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override // androidx.customview.a.a.AbstractC0036a
        public int a(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.a.a.AbstractC0036a
        public int a(View view, int i, int i2) {
            int width;
            int width2;
            int width3;
            boolean z = r.f(view) == 1;
            if (SwipeDismissBehavior.this.f4850c == 0) {
                if (z) {
                    width = this.f4854b - view.getWidth();
                    width2 = this.f4854b;
                } else {
                    width = this.f4854b;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (SwipeDismissBehavior.this.f4850c != 1) {
                width = this.f4854b - view.getWidth();
                width2 = view.getWidth() + this.f4854b;
            } else if (z) {
                width = this.f4854b;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f4854b - view.getWidth();
                width2 = this.f4854b;
            }
            return SwipeDismissBehavior.a(width, i, width2);
        }

        @Override // androidx.customview.a.a.AbstractC0036a
        public int b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.a.a.AbstractC0036a
        public void a(View view, int i, int i2, int i3, int i4) {
            float width = this.f4854b + (view.getWidth() * SwipeDismissBehavior.this.f4852e);
            float width2 = this.f4854b + (view.getWidth() * SwipeDismissBehavior.this.f);
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.a(0.0f, 1.0f - SwipeDismissBehavior.b(width, width2, f), 1.0f));
            }
        }
    };

    public interface a {
        void a(int i);

        void a(View view);
    }

    static float b(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    public boolean a(View view) {
        return true;
    }

    public void a(a aVar) {
        this.f4849b = aVar;
    }

    public void a(int i) {
        this.f4850c = i;
    }

    public void a(float f) {
        this.f4852e = a(0.0f, f, 1.0f);
    }

    public void b(float f) {
        this.f = a(0.0f, f, 1.0f);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean zA = this.g;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zA = coordinatorLayout.a(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.g = zA;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.g = false;
        }
        if (!zA) {
            return false;
        }
        a((ViewGroup) coordinatorLayout);
        return this.f4848a.a(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        androidx.customview.a.a aVar = this.f4848a;
        if (aVar == null) {
            return false;
        }
        aVar.b(motionEvent);
        return true;
    }

    private void a(ViewGroup viewGroup) {
        androidx.customview.a.a aVarA;
        if (this.f4848a == null) {
            if (this.i) {
                aVarA = androidx.customview.a.a.a(viewGroup, this.h, this.j);
            } else {
                aVarA = androidx.customview.a.a.a(viewGroup, this.j);
            }
            this.f4848a = aVarA;
        }
    }

    private class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f4857b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f4858c;

        b(View view, boolean z) {
            this.f4857b = view;
            this.f4858c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwipeDismissBehavior.this.f4848a != null && SwipeDismissBehavior.this.f4848a.a(true)) {
                r.a(this.f4857b, this);
            } else {
                if (!this.f4858c || SwipeDismissBehavior.this.f4849b == null) {
                    return;
                }
                SwipeDismissBehavior.this.f4849b.a(this.f4857b);
            }
        }
    }

    static float a(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    static int a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }
}
