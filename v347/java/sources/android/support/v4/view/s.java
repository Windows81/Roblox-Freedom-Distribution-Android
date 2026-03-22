package android.support.v4.view;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.Display;
import android.view.PointerIcon;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final j f1095a;

    static class j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static Field f1099b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static boolean f1100c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static Field f1101d;
        private static boolean e;
        private static Field f;
        private static boolean g;
        private static WeakHashMap<View, String> h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakHashMap<View, w> f1102a = null;

        j() {
        }

        public void a(View view, android.support.v4.view.a aVar) {
            view.setAccessibilityDelegate(aVar == null ? null : aVar.getBridge());
        }

        public boolean A(View view) {
            if (f1100c) {
                return false;
            }
            if (f1099b == null) {
                try {
                    f1099b = View.class.getDeclaredField("mAccessibilityDelegate");
                    f1099b.setAccessible(true);
                } catch (Throwable th) {
                    f1100c = true;
                    return false;
                }
            }
            try {
                return f1099b.get(view) != null;
            } catch (Throwable th2) {
                f1100c = true;
                return false;
            }
        }

        public boolean b(View view) {
            return false;
        }

        public void a(View view, boolean z) {
        }

        public void c(View view) {
            view.postInvalidate();
        }

        public void a(View view, Runnable runnable) {
            view.postDelayed(runnable, a());
        }

        public void a(View view, Runnable runnable, long j) {
            view.postDelayed(runnable, a() + j);
        }

        long a() {
            return ValueAnimator.getFrameDelay();
        }

        public int d(View view) {
            return 0;
        }

        public void a(View view, int i) {
        }

        public int j(View view) {
            return 0;
        }

        public void b(View view, int i) {
        }

        public int k(View view) {
            return view.getPaddingLeft();
        }

        public int l(View view) {
            return view.getPaddingRight();
        }

        public void a(View view, int i, int i2, int i3, int i4) {
            view.setPadding(i, i2, i3, i4);
        }

        public boolean i(View view) {
            return true;
        }

        public int e(View view) {
            if (!e) {
                try {
                    f1101d = View.class.getDeclaredField("mMinWidth");
                    f1101d.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                }
                e = true;
            }
            if (f1101d != null) {
                try {
                    return ((Integer) f1101d.get(view)).intValue();
                } catch (Exception e3) {
                }
            }
            return 0;
        }

        public int f(View view) {
            if (!g) {
                try {
                    f = View.class.getDeclaredField("mMinHeight");
                    f.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                }
                g = true;
            }
            if (f != null) {
                try {
                    return ((Integer) f.get(view)).intValue();
                } catch (Exception e3) {
                }
            }
            return 0;
        }

        public w B(View view) {
            if (this.f1102a == null) {
                this.f1102a = new WeakHashMap<>();
            }
            w wVar = this.f1102a.get(view);
            if (wVar == null) {
                w wVar2 = new w(view);
                this.f1102a.put(view, wVar2);
                return wVar2;
            }
            return wVar;
        }

        public void a(View view, String str) {
            if (h == null) {
                h = new WeakHashMap<>();
            }
            h.put(view, str);
        }

        public String s(View view) {
            if (h == null) {
                return null;
            }
            return h.get(view);
        }

        public int m(View view) {
            return 0;
        }

        public void g(View view) {
        }

        public void a(View view, float f2) {
        }

        public float t(View view) {
            return 0.0f;
        }

        public float u(View view) {
            return 0.0f;
        }

        public void a(View view, Rect rect) {
        }

        public Rect p(View view) {
            return null;
        }

        public boolean h(View view) {
            return false;
        }

        public void a(View view, o oVar) {
        }

        public aa a(View view, aa aaVar) {
            return aaVar;
        }

        public aa b(View view, aa aaVar) {
            return aaVar;
        }

        public boolean n(View view) {
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean v(View view) {
            if (view instanceof android.support.v4.view.i) {
                return ((android.support.v4.view.i) view).isNestedScrollingEnabled();
            }
            return false;
        }

        public void a(View view, Drawable drawable) {
            view.setBackgroundDrawable(drawable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ColorStateList x(View view) {
            if (view instanceof r) {
                return ((r) view).getSupportBackgroundTintList();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void a(View view, ColorStateList colorStateList) {
            if (view instanceof r) {
                ((r) view).setSupportBackgroundTintList(colorStateList);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void a(View view, PorterDuff.Mode mode) {
            if (view instanceof r) {
                ((r) view).setSupportBackgroundTintMode(mode);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public PorterDuff.Mode y(View view) {
            if (view instanceof r) {
                return ((r) view).getSupportBackgroundTintMode();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void w(View view) {
            if (view instanceof android.support.v4.view.i) {
                ((android.support.v4.view.i) view).stopNestedScroll();
            }
        }

        public boolean q(View view) {
            return view.getWidth() > 0 && view.getHeight() > 0;
        }

        public float z(View view) {
            return u(view) + t(view);
        }

        public boolean r(View view) {
            return view.getWindowToken() != null;
        }

        public boolean a(View view) {
            return false;
        }

        public void a(View view, int i, int i2) {
        }

        public void c(View view, int i) {
            view.offsetLeftAndRight(i);
            if (view.getVisibility() == 0) {
                C(view);
                Object parent = view.getParent();
                if (parent instanceof View) {
                    C((View) parent);
                }
            }
        }

        public void d(View view, int i) {
            view.offsetTopAndBottom(i);
            if (view.getVisibility() == 0) {
                C(view);
                Object parent = view.getParent();
                if (parent instanceof View) {
                    C((View) parent);
                }
            }
        }

        private static void C(View view) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
        }

        public void a(View view, q qVar) {
        }

        public Display o(View view) {
            if (r(view)) {
                return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
            }
            return null;
        }
    }

    static class a extends j {
        a() {
        }

        @Override // android.support.v4.view.s.j
        public boolean a(View view) {
            return view.hasOnClickListeners();
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.s.j
        public boolean b(View view) {
            return view.hasTransientState();
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, boolean z) {
            view.setHasTransientState(z);
        }

        @Override // android.support.v4.view.s.j
        public void c(View view) {
            view.postInvalidateOnAnimation();
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, Runnable runnable, long j) {
            view.postOnAnimationDelayed(runnable, j);
        }

        @Override // android.support.v4.view.s.j
        public int d(View view) {
            return view.getImportantForAccessibility();
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, int i) {
            if (i == 4) {
                i = 2;
            }
            view.setImportantForAccessibility(i);
        }

        @Override // android.support.v4.view.s.j
        public int e(View view) {
            return view.getMinimumWidth();
        }

        @Override // android.support.v4.view.s.j
        public int f(View view) {
            return view.getMinimumHeight();
        }

        @Override // android.support.v4.view.s.j
        public void g(View view) {
            view.requestFitSystemWindows();
        }

        @Override // android.support.v4.view.s.j
        public boolean h(View view) {
            return view.getFitsSystemWindows();
        }

        @Override // android.support.v4.view.s.j
        public boolean i(View view) {
            return view.hasOverlappingRendering();
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, Drawable drawable) {
            view.setBackground(drawable);
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.s.j
        public int j(View view) {
            return view.getLayoutDirection();
        }

        @Override // android.support.v4.view.s.j
        public int k(View view) {
            return view.getPaddingStart();
        }

        @Override // android.support.v4.view.s.j
        public int l(View view) {
            return view.getPaddingEnd();
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, int i, int i2, int i3, int i4) {
            view.setPaddingRelative(i, i2, i3, i4);
        }

        @Override // android.support.v4.view.s.j
        public int m(View view) {
            return view.getWindowSystemUiVisibility();
        }

        @Override // android.support.v4.view.s.j
        public boolean n(View view) {
            return view.isPaddingRelative();
        }

        @Override // android.support.v4.view.s.j
        public Display o(View view) {
            return view.getDisplay();
        }
    }

    static class d extends c {
        d() {
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, Rect rect) {
            view.setClipBounds(rect);
        }

        @Override // android.support.v4.view.s.j
        public Rect p(View view) {
            return view.getClipBounds();
        }
    }

    static class e extends d {
        e() {
        }

        @Override // android.support.v4.view.s.j
        public void b(View view, int i) {
            view.setAccessibilityLiveRegion(i);
        }

        @Override // android.support.v4.view.s.b, android.support.v4.view.s.j
        public void a(View view, int i) {
            view.setImportantForAccessibility(i);
        }

        @Override // android.support.v4.view.s.j
        public boolean q(View view) {
            return view.isLaidOut();
        }

        @Override // android.support.v4.view.s.j
        public boolean r(View view) {
            return view.isAttachedToWindow();
        }
    }

    static class f extends e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static ThreadLocal<Rect> f1096d;

        f() {
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, String str) {
            view.setTransitionName(str);
        }

        @Override // android.support.v4.view.s.j
        public String s(View view) {
            return view.getTransitionName();
        }

        @Override // android.support.v4.view.s.b, android.support.v4.view.s.j
        public void g(View view) {
            view.requestApplyInsets();
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, float f) {
            view.setElevation(f);
        }

        @Override // android.support.v4.view.s.j
        public float t(View view) {
            return view.getElevation();
        }

        @Override // android.support.v4.view.s.j
        public float u(View view) {
            return view.getTranslationZ();
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, final o oVar) {
            if (oVar == null) {
                view.setOnApplyWindowInsetsListener(null);
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: android.support.v4.view.s.f.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        return (WindowInsets) aa.a(oVar.a(view2, aa.a(windowInsets)));
                    }
                });
            }
        }

        @Override // android.support.v4.view.s.j
        public boolean v(View view) {
            return view.isNestedScrollingEnabled();
        }

        @Override // android.support.v4.view.s.j
        public void w(View view) {
            view.stopNestedScroll();
        }

        @Override // android.support.v4.view.s.j
        public ColorStateList x(View view) {
            return view.getBackgroundTintList();
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null || view.getBackgroundTintMode() == null) ? false : true;
                if (background != null && z) {
                    if (background.isStateful()) {
                        background.setState(view.getDrawableState());
                    }
                    view.setBackground(background);
                }
            }
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null || view.getBackgroundTintMode() == null) ? false : true;
                if (background != null && z) {
                    if (background.isStateful()) {
                        background.setState(view.getDrawableState());
                    }
                    view.setBackground(background);
                }
            }
        }

        @Override // android.support.v4.view.s.j
        public PorterDuff.Mode y(View view) {
            return view.getBackgroundTintMode();
        }

        @Override // android.support.v4.view.s.j
        public aa a(View view, aa aaVar) {
            WindowInsets windowInsets = (WindowInsets) aa.a(aaVar);
            WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
            if (windowInsetsOnApplyWindowInsets != windowInsets) {
                windowInsets = new WindowInsets(windowInsetsOnApplyWindowInsets);
            }
            return aa.a(windowInsets);
        }

        @Override // android.support.v4.view.s.j
        public aa b(View view, aa aaVar) {
            WindowInsets windowInsets = (WindowInsets) aa.a(aaVar);
            WindowInsets windowInsetsDispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
            if (windowInsetsDispatchApplyWindowInsets != windowInsets) {
                windowInsets = new WindowInsets(windowInsetsDispatchApplyWindowInsets);
            }
            return aa.a(windowInsets);
        }

        @Override // android.support.v4.view.s.j
        public float z(View view) {
            return view.getZ();
        }

        @Override // android.support.v4.view.s.j
        public void c(View view, int i) {
            boolean z;
            Rect rectB = b();
            Object parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                rectB.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !rectB.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            } else {
                z = false;
            }
            super.c(view, i);
            if (z && rectB.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(rectB);
            }
        }

        @Override // android.support.v4.view.s.j
        public void d(View view, int i) {
            boolean z;
            Rect rectB = b();
            Object parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                rectB.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !rectB.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            } else {
                z = false;
            }
            super.d(view, i);
            if (z && rectB.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(rectB);
            }
        }

        private static Rect b() {
            if (f1096d == null) {
                f1096d = new ThreadLocal<>();
            }
            Rect rect = f1096d.get();
            if (rect == null) {
                rect = new Rect();
                f1096d.set(rect);
            }
            rect.setEmpty();
            return rect;
        }
    }

    static class g extends f {
        g() {
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, int i, int i2) {
            view.setScrollIndicators(i, i2);
        }

        @Override // android.support.v4.view.s.f, android.support.v4.view.s.j
        public void c(View view, int i) {
            view.offsetLeftAndRight(i);
        }

        @Override // android.support.v4.view.s.f, android.support.v4.view.s.j
        public void d(View view, int i) {
            view.offsetTopAndBottom(i);
        }
    }

    static class h extends g {
        h() {
        }

        @Override // android.support.v4.view.s.j
        public void a(View view, q qVar) {
            view.setPointerIcon((PointerIcon) (qVar != null ? qVar.a() : null));
        }
    }

    static class i extends h {
        i() {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            f1095a = new i();
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            f1095a = new h();
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            f1095a = new g();
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            f1095a = new f();
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            f1095a = new e();
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            f1095a = new d();
            return;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            f1095a = new c();
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            f1095a = new b();
        } else if (Build.VERSION.SDK_INT >= 15) {
            f1095a = new a();
        } else {
            f1095a = new j();
        }
    }

    public static void a(View view, android.support.v4.view.a aVar) {
        f1095a.a(view, aVar);
    }

    public static boolean a(View view) {
        return f1095a.A(view);
    }

    public static boolean b(View view) {
        return f1095a.b(view);
    }

    public static void a(View view, boolean z) {
        f1095a.a(view, z);
    }

    public static void c(View view) {
        f1095a.c(view);
    }

    public static void a(View view, Runnable runnable) {
        f1095a.a(view, runnable);
    }

    public static void a(View view, Runnable runnable, long j2) {
        f1095a.a(view, runnable, j2);
    }

    public static int d(View view) {
        return f1095a.d(view);
    }

    public static void a(View view, int i2) {
        f1095a.a(view, i2);
    }

    public static int e(View view) {
        return f1095a.j(view);
    }

    public static void b(View view, int i2) {
        f1095a.b(view, i2);
    }

    public static int f(View view) {
        return f1095a.k(view);
    }

    public static int g(View view) {
        return f1095a.l(view);
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        f1095a.a(view, i2, i3, i4, i5);
    }

    public static int h(View view) {
        return f1095a.e(view);
    }

    public static int i(View view) {
        return f1095a.f(view);
    }

    public static w j(View view) {
        return f1095a.B(view);
    }

    public static void a(View view, float f2) {
        f1095a.a(view, f2);
    }

    public static float k(View view) {
        return f1095a.t(view);
    }

    public static void a(View view, String str) {
        f1095a.a(view, str);
    }

    public static String l(View view) {
        return f1095a.s(view);
    }

    public static int m(View view) {
        return f1095a.m(view);
    }

    public static void n(View view) {
        f1095a.g(view);
    }

    public static boolean o(View view) {
        return f1095a.h(view);
    }

    @Deprecated
    public static void b(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    public static void a(View view, o oVar) {
        f1095a.a(view, oVar);
    }

    public static aa a(View view, aa aaVar) {
        return f1095a.a(view, aaVar);
    }

    public static aa b(View view, aa aaVar) {
        return f1095a.b(view, aaVar);
    }

    public static boolean p(View view) {
        return f1095a.i(view);
    }

    public static boolean q(View view) {
        return f1095a.n(view);
    }

    public static void a(View view, Drawable drawable) {
        f1095a.a(view, drawable);
    }

    public static ColorStateList r(View view) {
        return f1095a.x(view);
    }

    public static void a(View view, ColorStateList colorStateList) {
        f1095a.a(view, colorStateList);
    }

    public static PorterDuff.Mode s(View view) {
        return f1095a.y(view);
    }

    public static void a(View view, PorterDuff.Mode mode) {
        f1095a.a(view, mode);
    }

    public static boolean t(View view) {
        return f1095a.v(view);
    }

    public static void u(View view) {
        f1095a.w(view);
    }

    public static boolean v(View view) {
        return f1095a.q(view);
    }

    public static float w(View view) {
        return f1095a.z(view);
    }

    public static void c(View view, int i2) {
        f1095a.d(view, i2);
    }

    public static void d(View view, int i2) {
        f1095a.c(view, i2);
    }

    public static void a(View view, Rect rect) {
        f1095a.a(view, rect);
    }

    public static Rect x(View view) {
        return f1095a.p(view);
    }

    public static boolean y(View view) {
        return f1095a.r(view);
    }

    public static boolean z(View view) {
        return f1095a.a(view);
    }

    public static void a(View view, int i2, int i3) {
        f1095a.a(view, i2, i3);
    }

    public static void a(View view, q qVar) {
        f1095a.a(view, qVar);
    }

    public static Display A(View view) {
        return f1095a.o(view);
    }
}
