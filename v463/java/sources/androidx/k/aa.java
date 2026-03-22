package androidx.k;

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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class aa implements ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f1922a;

    aa(Context context, ViewGroup viewGroup, View view) {
        this.f1922a = new a(context, viewGroup, view, this);
    }

    static ViewGroup c(View view) {
        while (view != null) {
            if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return null;
    }

    static aa d(View view) {
        ViewGroup viewGroupC = c(view);
        if (viewGroupC == null) {
            return null;
        }
        int childCount = viewGroupC.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroupC.getChildAt(i);
            if (childAt instanceof a) {
                return ((a) childAt).f1927e;
            }
        }
        return new u(viewGroupC.getContext(), viewGroupC, view);
    }

    @Override // androidx.k.ac
    public void a(Drawable drawable) {
        this.f1922a.a(drawable);
    }

    @Override // androidx.k.ac
    public void b(Drawable drawable) {
        this.f1922a.b(drawable);
    }

    static class a extends ViewGroup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static Method f1923a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewGroup f1924b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        View f1925c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ArrayList<Drawable> f1926d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        aa f1927e;

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        static {
            try {
                f1923a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, aa aaVar) {
            super(context);
            this.f1926d = null;
            this.f1924b = viewGroup;
            this.f1925c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f1927e = aaVar;
        }

        public void a(Drawable drawable) {
            if (this.f1926d == null) {
                this.f1926d = new ArrayList<>();
            }
            if (this.f1926d.contains(drawable)) {
                return;
            }
            this.f1926d.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        public void b(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f1926d;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
            }
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f1926d) != null && arrayList.contains(drawable));
        }

        public void a(View view) {
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f1924b && viewGroup.getParent() != null && androidx.core.h.r.z(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f1924b.getLocationOnScreen(iArr2);
                    androidx.core.h.r.e(view, iArr[0] - iArr2[0]);
                    androidx.core.h.r.d(view, iArr[1] - iArr2[1]);
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
                this.f1924b.removeView(this);
            }
        }

        boolean a() {
            ArrayList<Drawable> arrayList;
            return getChildCount() == 0 && ((arrayList = this.f1926d) == null || arrayList.size() == 0);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            this.f1924b.getLocationOnScreen(new int[2]);
            this.f1925c.getLocationOnScreen(new int[2]);
            canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
            canvas.clipRect(new Rect(0, 0, this.f1925c.getWidth(), this.f1925c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f1926d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f1926d.get(i).draw(canvas);
            }
        }

        private void a(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f1924b.getLocationOnScreen(iArr2);
            this.f1925c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f1924b == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            if (this.f1924b instanceof ViewGroup) {
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                a(iArr2);
                rect.offset(iArr2[0], iArr2[1]);
                return super.invalidateChildInParent(iArr, rect);
            }
            invalidate(rect);
            return null;
        }
    }
}
