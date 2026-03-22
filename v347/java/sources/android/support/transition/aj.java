package android.support.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class aj implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f490a;

    aj(Context context, ViewGroup viewGroup, View view) {
        this.f490a = new a(context, viewGroup, view, this);
    }

    static ViewGroup c(View view) {
        View view2 = view;
        while (view2 != null) {
            if (view2.getId() == 16908290 && (view2 instanceof ViewGroup)) {
                return (ViewGroup) view2;
            }
            if (view2.getParent() instanceof ViewGroup) {
                view2 = (ViewGroup) view2.getParent();
            }
        }
        return null;
    }

    static aj d(View view) {
        ViewGroup viewGroupC = c(view);
        if (viewGroupC != null) {
            int childCount = viewGroupC.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroupC.getChildAt(i);
                if (childAt instanceof a) {
                    return ((a) childAt).e;
                }
            }
            return new ac(viewGroupC.getContext(), viewGroupC, view);
        }
        return null;
    }

    @Override // android.support.transition.al
    public void a(Drawable drawable) {
        this.f490a.a(drawable);
    }

    @Override // android.support.transition.al
    public void b(Drawable drawable) {
        this.f490a.b(drawable);
    }

    static class a extends ViewGroup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static Method f491a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewGroup f492b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        View f493c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<Drawable> f494d;
        aj e;

        static {
            try {
                f491a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, aj ajVar) {
            super(context);
            this.f494d = null;
            this.f492b = viewGroup;
            this.f493c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.e = ajVar;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public void a(Drawable drawable) {
            if (this.f494d == null) {
                this.f494d = new ArrayList<>();
            }
            if (!this.f494d.contains(drawable)) {
                this.f494d.add(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(this);
            }
        }

        public void b(Drawable drawable) {
            if (this.f494d != null) {
                this.f494d.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
            }
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return super.verifyDrawable(drawable) || (this.f494d != null && this.f494d.contains(drawable));
        }

        public void a(View view) {
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f492b && viewGroup.getParent() != null && android.support.v4.view.s.y(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f492b.getLocationOnScreen(iArr2);
                    android.support.v4.view.s.d(view, iArr[0] - iArr2[0]);
                    android.support.v4.view.s.c(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view, getChildCount() - 1);
        }

        public void b(View view) {
            super.removeView(view);
            if (a()) {
                this.f492b.removeView(this);
            }
        }

        boolean a() {
            return getChildCount() == 0 && (this.f494d == null || this.f494d.size() == 0);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.f492b.getLocationOnScreen(new int[2]);
            this.f493c.getLocationOnScreen(new int[2]);
            canvas.translate(r2[0] - r1[0], r2[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f493c.getWidth(), this.f493c.getHeight()));
            super.dispatchDraw(canvas);
            int size = this.f494d == null ? 0 : this.f494d.size();
            for (int i = 0; i < size; i++) {
                this.f494d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        private void a(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f492b.getLocationOnScreen(iArr2);
            this.f493c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f492b != null) {
                rect.offset(iArr[0], iArr[1]);
                if (this.f492b instanceof ViewGroup) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    int[] iArr2 = new int[2];
                    a(iArr2);
                    rect.offset(iArr2[0], iArr2[1]);
                    return super.invalidateChildInParent(iArr, rect);
                }
                invalidate(rect);
            }
            return null;
        }
    }
}
