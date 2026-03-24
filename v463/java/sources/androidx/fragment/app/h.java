package androidx.fragment.app;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import androidx.core.h.r;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;
import androidx.lifecycle.x;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class h extends androidx.fragment.app.g implements LayoutInflater.Factory2 {
    static final Interpolator F = new DecelerateInterpolator(2.5f);
    static final Interpolator G = new DecelerateInterpolator(1.5f);
    static final Interpolator H = new AccelerateInterpolator(2.5f);
    static final Interpolator I = new AccelerateInterpolator(1.5f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f1683a = false;
    static Field q;
    ArrayList<j> C;
    androidx.fragment.app.i D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<InterfaceC0045h> f1684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f1685c;
    SparseArray<Fragment> f;
    ArrayList<androidx.fragment.app.a> g;
    ArrayList<Fragment> h;
    ArrayList<androidx.fragment.app.a> i;
    ArrayList<Integer> j;
    ArrayList<g.b> k;
    androidx.fragment.app.f m;
    androidx.fragment.app.d n;
    Fragment o;
    Fragment p;
    boolean r;
    boolean s;
    boolean t;
    boolean u;
    String v;
    boolean w;
    ArrayList<androidx.fragment.app.a> x;
    ArrayList<Boolean> y;
    ArrayList<Fragment> z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1686d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final ArrayList<Fragment> f1687e = new ArrayList<>();
    private final CopyOnWriteArrayList<f> J = new CopyOnWriteArrayList<>();
    int l = 0;
    Bundle A = null;
    SparseArray<Parcelable> B = null;
    Runnable E = new Runnable() { // from class: androidx.fragment.app.h.1
        @Override // java.lang.Runnable
        public void run() {
            h.this.j();
        }
    };

    private static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final g.a f1712a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f1713b;
    }

    static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int[] f1714a = {R.attr.name, R.attr.id, R.attr.tag};
    }

    /* JADX INFO: renamed from: androidx.fragment.app.h$h, reason: collision with other inner class name */
    interface InterfaceC0045h {
        boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    public static int b(int i2, boolean z) {
        if (i2 == 4097) {
            return z ? 1 : 2;
        }
        if (i2 == 4099) {
            return z ? 5 : 6;
        }
        if (i2 != 8194) {
            return -1;
        }
        return z ? 3 : 4;
    }

    public static int d(int i2) {
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 != 4099) {
            return i2 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    LayoutInflater.Factory2 A() {
        return this;
    }

    h() {
    }

    static boolean a(c cVar) {
        if (cVar.f1704a instanceof AlphaAnimation) {
            return true;
        }
        if (cVar.f1704a instanceof AnimationSet) {
            List<Animation> animations = ((AnimationSet) cVar.f1704a).getAnimations();
            for (int i2 = 0; i2 < animations.size(); i2++) {
                if (animations.get(i2) instanceof AlphaAnimation) {
                    return true;
                }
            }
            return false;
        }
        return a(cVar.f1705b);
    }

    static boolean a(Animator animator) {
        if (animator == null) {
            return false;
        }
        if (animator instanceof ValueAnimator) {
            for (PropertyValuesHolder propertyValuesHolder : ((ValueAnimator) animator).getValues()) {
                if ("alpha".equals(propertyValuesHolder.getPropertyName())) {
                    return true;
                }
            }
        } else if (animator instanceof AnimatorSet) {
            ArrayList<Animator> childAnimations = ((AnimatorSet) animator).getChildAnimations();
            for (int i2 = 0; i2 < childAnimations.size(); i2++) {
                if (a(childAnimations.get(i2))) {
                    return true;
                }
            }
        }
        return false;
    }

    static boolean a(View view, c cVar) {
        return view != null && cVar != null && Build.VERSION.SDK_INT >= 19 && view.getLayerType() == 0 && r.q(view) && a(cVar);
    }

    private void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new androidx.core.g.b("FragmentManager"));
        androidx.fragment.app.f fVar = this.m;
        if (fVar != null) {
            try {
                fVar.a("  ", (FileDescriptor) null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
                throw runtimeException;
            }
        }
        try {
            a("  ", (FileDescriptor) null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e3) {
            Log.e("FragmentManager", "Failed dumping state", e3);
            throw runtimeException;
        }
    }

    @Override // androidx.fragment.app.g
    public k a() {
        return new androidx.fragment.app.a(this);
    }

    @Override // androidx.fragment.app.g
    public boolean b() {
        boolean zJ = j();
        D();
        return zJ;
    }

    @Override // androidx.fragment.app.g
    public void c() {
        a((InterfaceC0045h) new i(null, -1, 0), false);
    }

    @Override // androidx.fragment.app.g
    public boolean d() {
        B();
        return a((String) null, -1, 0);
    }

    @Override // androidx.fragment.app.g
    public void a(int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Bad id: " + i2);
        }
        a((InterfaceC0045h) new i(null, i2, i3), false);
    }

    private boolean a(String str, int i2, int i3) {
        androidx.fragment.app.g gVarV;
        j();
        c(true);
        Fragment fragment = this.p;
        if (fragment != null && i2 < 0 && str == null && (gVarV = fragment.v()) != null && gVarV.d()) {
            return true;
        }
        boolean zA = a(this.x, this.y, str, i2, i3);
        if (zA) {
            this.f1685c = true;
            try {
                b(this.x, this.y);
            } finally {
                C();
            }
        }
        k();
        F();
        return zA;
    }

    @Override // androidx.fragment.app.g
    public int e() {
        ArrayList<androidx.fragment.app.a> arrayList = this.g;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override // androidx.fragment.app.g
    public void a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.o < 0) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.o);
    }

    @Override // androidx.fragment.app.g
    public Fragment a(Bundle bundle, String str) {
        int i2 = bundle.getInt(str, -1);
        if (i2 == -1) {
            return null;
        }
        Fragment fragment = this.f.get(i2);
        if (fragment == null) {
            a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i2));
        }
        return fragment;
    }

    @Override // androidx.fragment.app.g
    public List<Fragment> f() {
        List<Fragment> list;
        if (this.f1687e.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f1687e) {
            list = (List) this.f1687e.clone();
        }
        return list;
    }

    @Override // androidx.fragment.app.g
    public Fragment.SavedState a(Fragment fragment) {
        Bundle bundleO;
        if (fragment.o < 0) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.k <= 0 || (bundleO = o(fragment)) == null) {
            return null;
        }
        return new Fragment.SavedState(bundleO);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.o;
        if (fragment != null) {
            androidx.core.g.a.a(fragment, sb);
        } else {
            androidx.core.g.a.a(this.m, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    @Override // androidx.fragment.app.g
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        String str2 = str + "    ";
        SparseArray<Fragment> sparseArray = this.f;
        if (sparseArray != null && (size5 = sparseArray.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i2 = 0; i2 < size5; i2++) {
                Fragment fragmentValueAt = this.f.valueAt(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragmentValueAt);
                if (fragmentValueAt != null) {
                    fragmentValueAt.a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size6 = this.f1687e.size();
        if (size6 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i3 = 0; i3 < size6; i3++) {
                Fragment fragment = this.f1687e.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList<Fragment> arrayList = this.h;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i4 = 0; i4 < size4; i4++) {
                Fragment fragment2 = this.h.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList<androidx.fragment.app.a> arrayList2 = this.g;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i5 = 0; i5 < size3; i5++) {
                androidx.fragment.app.a aVar = this.g.get(i5);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        synchronized (this) {
            if (this.i != null && (size2 = this.i.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i6 = 0; i6 < size2; i6++) {
                    Object obj = (androidx.fragment.app.a) this.i.get(i6);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i6);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
            if (this.j != null && this.j.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.j.toArray()));
            }
        }
        ArrayList<InterfaceC0045h> arrayList3 = this.f1684b;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i7 = 0; i7 < size; i7++) {
                Object obj2 = (InterfaceC0045h) this.f1684b.get(i7);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i7);
                printWriter.print(": ");
                printWriter.println(obj2);
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.m);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.n);
        if (this.o != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.o);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.l);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.s);
        printWriter.print(" mStopped=");
        printWriter.print(this.t);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.u);
        if (this.r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.r);
        }
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.v);
        }
    }

    static c a(Context context, float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(F);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(G);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new c(animationSet);
    }

    static c a(Context context, float f2, float f3) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f3);
        alphaAnimation.setInterpolator(G);
        alphaAnimation.setDuration(220L);
        return new c(alphaAnimation);
    }

    c a(Fragment fragment, int i2, boolean z, int i3) {
        int iB;
        int iAe = fragment.ae();
        Animation animationA = fragment.a(i2, z, iAe);
        if (animationA != null) {
            return new c(animationA);
        }
        Animator animatorB = fragment.b(i2, z, iAe);
        if (animatorB != null) {
            return new c(animatorB);
        }
        if (iAe != 0) {
            boolean zEquals = "anim".equals(this.m.g().getResources().getResourceTypeName(iAe));
            boolean z2 = false;
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.m.g(), iAe);
                    if (animationLoadAnimation != null) {
                        return new c(animationLoadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z2) {
                try {
                    Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(this.m.g(), iAe);
                    if (animatorLoadAnimator != null) {
                        return new c(animatorLoadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (zEquals) {
                        throw e3;
                    }
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(this.m.g(), iAe);
                    if (animationLoadAnimation2 != null) {
                        return new c(animationLoadAnimation2);
                    }
                }
            }
        }
        if (i2 == 0 || (iB = b(i2, z)) < 0) {
            return null;
        }
        switch (iB) {
            case 1:
                return a(this.m.g(), 1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return a(this.m.g(), 1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return a(this.m.g(), 0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return a(this.m.g(), 1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return a(this.m.g(), 0.0f, 1.0f);
            case 6:
                return a(this.m.g(), 1.0f, 0.0f);
            default:
                if (i3 == 0 && this.m.d()) {
                    i3 = this.m.e();
                }
                if (i3 == 0) {
                }
                return null;
        }
    }

    public void b(Fragment fragment) {
        if (fragment.U) {
            if (this.f1685c) {
                this.w = true;
            } else {
                fragment.U = false;
                a(fragment, this.l, 0, 0, false);
            }
        }
    }

    private static void b(View view, c cVar) {
        if (view == null || cVar == null || !a(view, cVar)) {
            return;
        }
        if (cVar.f1705b != null) {
            cVar.f1705b.addListener(new d(view));
            return;
        }
        Animation.AnimationListener animationListenerA = a(cVar.f1704a);
        view.setLayerType(2, null);
        cVar.f1704a.setAnimationListener(new a(view, animationListenerA));
    }

    private static Animation.AnimationListener a(Animation animation) {
        try {
            if (q == null) {
                Field declaredField = Animation.class.getDeclaredField("mListener");
                q = declaredField;
                declaredField.setAccessible(true);
            }
            return (Animation.AnimationListener) q.get(animation);
        } catch (IllegalAccessException e2) {
            Log.e("FragmentManager", "Cannot access Animation's mListener field", e2);
            return null;
        } catch (NoSuchFieldException e3) {
            Log.e("FragmentManager", "No field with the name mListener is found in Animation class", e3);
            return null;
        }
    }

    boolean b(int i2) {
        return this.l >= i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:225:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void a(androidx.fragment.app.Fragment r17, int r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 1133
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.h.a(androidx.fragment.app.Fragment, int, int, int, boolean):void");
    }

    private void a(final Fragment fragment, c cVar, int i2) {
        final View view = fragment.S;
        final ViewGroup viewGroup = fragment.R;
        viewGroup.startViewTransition(view);
        fragment.c(i2);
        if (cVar.f1704a != null) {
            e eVar = new e(cVar.f1704a, viewGroup, view);
            fragment.a(fragment.S);
            eVar.setAnimationListener(new b(a(eVar)) { // from class: androidx.fragment.app.h.2
                @Override // androidx.fragment.app.h.b, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    super.onAnimationEnd(animation);
                    viewGroup.post(new Runnable() { // from class: androidx.fragment.app.h.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (fragment.aj() != null) {
                                fragment.a((View) null);
                                h.this.a(fragment, fragment.al(), 0, 0, false);
                            }
                        }
                    });
                }
            });
            b(view, cVar);
            fragment.S.startAnimation(eVar);
            return;
        }
        Animator animator = cVar.f1705b;
        fragment.a(cVar.f1705b);
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.h.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator animatorAk = fragment.ak();
                fragment.a((Animator) null);
                if (animatorAk == null || viewGroup.indexOfChild(view) >= 0) {
                    return;
                }
                h hVar = h.this;
                Fragment fragment2 = fragment;
                hVar.a(fragment2, fragment2.al(), 0, 0, false);
            }
        });
        animator.setTarget(fragment.S);
        b(fragment.S, cVar);
        animator.start();
    }

    void c(Fragment fragment) {
        a(fragment, this.l, 0, 0, false);
    }

    void d(Fragment fragment) {
        if (!fragment.w || fragment.z) {
            return;
        }
        fragment.b(fragment.h(fragment.l), (ViewGroup) null, fragment.l);
        if (fragment.S != null) {
            fragment.T = fragment.S;
            fragment.S.setSaveFromParentEnabled(false);
            if (fragment.K) {
                fragment.S.setVisibility(8);
            }
            fragment.a(fragment.S, fragment.l);
            a(fragment, fragment.S, fragment.l, false);
            return;
        }
        fragment.T = null;
    }

    void e(final Fragment fragment) {
        if (fragment.S != null) {
            c cVarA = a(fragment, fragment.af(), !fragment.K, fragment.ag());
            if (cVarA != null && cVarA.f1705b != null) {
                cVarA.f1705b.setTarget(fragment.S);
                if (fragment.K) {
                    if (fragment.an()) {
                        fragment.l(false);
                    } else {
                        final ViewGroup viewGroup = fragment.R;
                        final View view = fragment.S;
                        viewGroup.startViewTransition(view);
                        cVarA.f1705b.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.h.4
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                viewGroup.endViewTransition(view);
                                animator.removeListener(this);
                                if (fragment.S != null) {
                                    fragment.S.setVisibility(8);
                                }
                            }
                        });
                    }
                } else {
                    fragment.S.setVisibility(0);
                }
                b(fragment.S, cVarA);
                cVarA.f1705b.start();
            } else {
                if (cVarA != null) {
                    b(fragment.S, cVarA);
                    fragment.S.startAnimation(cVarA.f1704a);
                    cVarA.f1704a.start();
                }
                fragment.S.setVisibility((!fragment.K || fragment.an()) ? 0 : 8);
                if (fragment.an()) {
                    fragment.l(false);
                }
            }
        }
        if (fragment.u && fragment.O && fragment.P) {
            this.r = true;
        }
        fragment.Y = false;
        fragment.d(fragment.K);
    }

    void f(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        int iMin = this.l;
        if (fragment.v) {
            if (fragment.l()) {
                iMin = Math.min(iMin, 1);
            } else {
                iMin = Math.min(iMin, 0);
            }
        }
        a(fragment, iMin, fragment.af(), fragment.ag(), false);
        if (fragment.S != null) {
            Fragment fragmentQ = q(fragment);
            if (fragmentQ != null) {
                View view = fragmentQ.S;
                ViewGroup viewGroup = fragment.R;
                int iIndexOfChild = viewGroup.indexOfChild(view);
                int iIndexOfChild2 = viewGroup.indexOfChild(fragment.S);
                if (iIndexOfChild2 < iIndexOfChild) {
                    viewGroup.removeViewAt(iIndexOfChild2);
                    viewGroup.addView(fragment.S, iIndexOfChild);
                }
            }
            if (fragment.X && fragment.R != null) {
                if (fragment.Z > 0.0f) {
                    fragment.S.setAlpha(fragment.Z);
                }
                fragment.Z = 0.0f;
                fragment.X = false;
                c cVarA = a(fragment, fragment.af(), true, fragment.ag());
                if (cVarA != null) {
                    b(fragment.S, cVarA);
                    if (cVarA.f1704a != null) {
                        fragment.S.startAnimation(cVarA.f1704a);
                    } else {
                        cVarA.f1705b.setTarget(fragment.S);
                        cVarA.f1705b.start();
                    }
                }
            }
        }
        if (fragment.Y) {
            e(fragment);
        }
    }

    void a(int i2, boolean z) {
        androidx.fragment.app.f fVar;
        if (this.m == null && i2 != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z || i2 != this.l) {
            this.l = i2;
            if (this.f != null) {
                int size = this.f1687e.size();
                for (int i3 = 0; i3 < size; i3++) {
                    f(this.f1687e.get(i3));
                }
                int size2 = this.f.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    Fragment fragmentValueAt = this.f.valueAt(i4);
                    if (fragmentValueAt != null && ((fragmentValueAt.v || fragmentValueAt.L) && !fragmentValueAt.X)) {
                        f(fragmentValueAt);
                    }
                }
                h();
                if (this.r && (fVar = this.m) != null && this.l == 4) {
                    fVar.c();
                    this.r = false;
                }
            }
        }
    }

    void h() {
        if (this.f == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            Fragment fragmentValueAt = this.f.valueAt(i2);
            if (fragmentValueAt != null) {
                b(fragmentValueAt);
            }
        }
    }

    void g(Fragment fragment) {
        if (fragment.o >= 0) {
            return;
        }
        int i2 = this.f1686d;
        this.f1686d = i2 + 1;
        fragment.a(i2, this.o);
        if (this.f == null) {
            this.f = new SparseArray<>();
        }
        this.f.put(fragment.o, fragment);
        if (f1683a) {
            Log.v("FragmentManager", "Allocated fragment index " + fragment);
        }
    }

    void h(Fragment fragment) {
        if (fragment.o < 0) {
            return;
        }
        if (f1683a) {
            Log.v("FragmentManager", "Freeing fragment index " + fragment);
        }
        this.f.put(fragment.o, null);
        fragment.I();
    }

    public void a(Fragment fragment, boolean z) {
        if (f1683a) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        g(fragment);
        if (fragment.L) {
            return;
        }
        if (this.f1687e.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f1687e) {
            this.f1687e.add(fragment);
        }
        fragment.u = true;
        fragment.v = false;
        if (fragment.S == null) {
            fragment.Y = false;
        }
        if (fragment.O && fragment.P) {
            this.r = true;
        }
        if (z) {
            c(fragment);
        }
    }

    public void i(Fragment fragment) {
        if (f1683a) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.A);
        }
        boolean z = !fragment.l();
        if (!fragment.L || z) {
            synchronized (this.f1687e) {
                this.f1687e.remove(fragment);
            }
            if (fragment.O && fragment.P) {
                this.r = true;
            }
            fragment.u = false;
            fragment.v = true;
        }
    }

    public void j(Fragment fragment) {
        if (f1683a) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.K) {
            return;
        }
        fragment.K = true;
        fragment.Y = true ^ fragment.Y;
    }

    public void k(Fragment fragment) {
        if (f1683a) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.K) {
            fragment.K = false;
            fragment.Y = !fragment.Y;
        }
    }

    public void l(Fragment fragment) {
        if (f1683a) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.L) {
            return;
        }
        fragment.L = true;
        if (fragment.u) {
            if (f1683a) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            synchronized (this.f1687e) {
                this.f1687e.remove(fragment);
            }
            if (fragment.O && fragment.P) {
                this.r = true;
            }
            fragment.u = false;
        }
    }

    public void m(Fragment fragment) {
        if (f1683a) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.L) {
            fragment.L = false;
            if (fragment.u) {
                return;
            }
            if (this.f1687e.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            if (f1683a) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            synchronized (this.f1687e) {
                this.f1687e.add(fragment);
            }
            fragment.u = true;
            if (fragment.O && fragment.P) {
                this.r = true;
            }
        }
    }

    @Override // androidx.fragment.app.g
    public Fragment a(int i2) {
        for (int size = this.f1687e.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f1687e.get(size);
            if (fragment != null && fragment.H == i2) {
                return fragment;
            }
        }
        SparseArray<Fragment> sparseArray = this.f;
        if (sparseArray == null) {
            return null;
        }
        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
            Fragment fragmentValueAt = this.f.valueAt(size2);
            if (fragmentValueAt != null && fragmentValueAt.H == i2) {
                return fragmentValueAt;
            }
        }
        return null;
    }

    @Override // androidx.fragment.app.g
    public Fragment a(String str) {
        if (str != null) {
            for (int size = this.f1687e.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f1687e.get(size);
                if (fragment != null && str.equals(fragment.J)) {
                    return fragment;
                }
            }
        }
        SparseArray<Fragment> sparseArray = this.f;
        if (sparseArray == null || str == null) {
            return null;
        }
        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
            Fragment fragmentValueAt = this.f.valueAt(size2);
            if (fragmentValueAt != null && str.equals(fragmentValueAt.J)) {
                return fragmentValueAt;
            }
        }
        return null;
    }

    public Fragment b(String str) {
        Fragment fragmentA;
        SparseArray<Fragment> sparseArray = this.f;
        if (sparseArray == null || str == null) {
            return null;
        }
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            Fragment fragmentValueAt = this.f.valueAt(size);
            if (fragmentValueAt != null && (fragmentA = fragmentValueAt.a(str)) != null) {
                return fragmentA;
            }
        }
        return null;
    }

    private void B() {
        if (g()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.v == null) {
            return;
        }
        throw new IllegalStateException("Can not perform this action inside of " + this.v);
    }

    @Override // androidx.fragment.app.g
    public boolean g() {
        return this.s || this.t;
    }

    public void a(InterfaceC0045h interfaceC0045h, boolean z) {
        if (!z) {
            B();
        }
        synchronized (this) {
            if (!this.u && this.m != null) {
                if (this.f1684b == null) {
                    this.f1684b = new ArrayList<>();
                }
                this.f1684b.add(interfaceC0045h);
                i();
                return;
            }
            if (!z) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    void i() {
        synchronized (this) {
            boolean z = false;
            boolean z2 = (this.C == null || this.C.isEmpty()) ? false : true;
            if (this.f1684b != null && this.f1684b.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.m.h().removeCallbacks(this.E);
                this.m.h().post(this.E);
            }
        }
    }

    public int a(androidx.fragment.app.a aVar) {
        synchronized (this) {
            if (this.j != null && this.j.size() > 0) {
                int iIntValue = this.j.remove(this.j.size() - 1).intValue();
                if (f1683a) {
                    Log.v("FragmentManager", "Adding back stack index " + iIntValue + " with " + aVar);
                }
                this.i.set(iIntValue, aVar);
                return iIntValue;
            }
            if (this.i == null) {
                this.i = new ArrayList<>();
            }
            int size = this.i.size();
            if (f1683a) {
                Log.v("FragmentManager", "Setting back stack index " + size + " to " + aVar);
            }
            this.i.add(aVar);
            return size;
        }
    }

    public void a(int i2, androidx.fragment.app.a aVar) {
        synchronized (this) {
            if (this.i == null) {
                this.i = new ArrayList<>();
            }
            int size = this.i.size();
            if (i2 < size) {
                if (f1683a) {
                    Log.v("FragmentManager", "Setting back stack index " + i2 + " to " + aVar);
                }
                this.i.set(i2, aVar);
            } else {
                while (size < i2) {
                    this.i.add(null);
                    if (this.j == null) {
                        this.j = new ArrayList<>();
                    }
                    if (f1683a) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.j.add(Integer.valueOf(size));
                    size++;
                }
                if (f1683a) {
                    Log.v("FragmentManager", "Adding back stack index " + i2 + " with " + aVar);
                }
                this.i.add(aVar);
            }
        }
    }

    public void c(int i2) {
        synchronized (this) {
            this.i.set(i2, null);
            if (this.j == null) {
                this.j = new ArrayList<>();
            }
            if (f1683a) {
                Log.v("FragmentManager", "Freeing back stack index " + i2);
            }
            this.j.add(Integer.valueOf(i2));
        }
    }

    private void c(boolean z) {
        if (this.f1685c) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.m == null) {
            throw new IllegalStateException("Fragment host has been destroyed");
        }
        if (Looper.myLooper() != this.m.h().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            B();
        }
        if (this.x == null) {
            this.x = new ArrayList<>();
            this.y = new ArrayList<>();
        }
        this.f1685c = true;
        try {
            a((ArrayList<androidx.fragment.app.a>) null, (ArrayList<Boolean>) null);
        } finally {
            this.f1685c = false;
        }
    }

    public void b(InterfaceC0045h interfaceC0045h, boolean z) {
        if (z && (this.m == null || this.u)) {
            return;
        }
        c(z);
        if (interfaceC0045h.a(this.x, this.y)) {
            this.f1685c = true;
            try {
                b(this.x, this.y);
            } finally {
                C();
            }
        }
        k();
        F();
    }

    private void C() {
        this.f1685c = false;
        this.y.clear();
        this.x.clear();
    }

    public boolean j() {
        c(true);
        boolean z = false;
        while (c(this.x, this.y)) {
            this.f1685c = true;
            try {
                b(this.x, this.y);
                C();
                z = true;
            } catch (Throwable th) {
                C();
                throw th;
            }
        }
        k();
        F();
        return z;
    }

    private void a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        int iIndexOf;
        int iIndexOf2;
        ArrayList<j> arrayList3 = this.C;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            j jVar = this.C.get(i2);
            if (arrayList != null && !jVar.f1719a && (iIndexOf2 = arrayList.indexOf(jVar.f1720b)) != -1 && arrayList2.get(iIndexOf2).booleanValue()) {
                jVar.e();
            } else if (jVar.c() || (arrayList != null && jVar.f1720b.a(arrayList, 0, arrayList.size()))) {
                this.C.remove(i2);
                i2--;
                size--;
                if (arrayList != null && !jVar.f1719a && (iIndexOf = arrayList.indexOf(jVar.f1720b)) != -1 && arrayList2.get(iIndexOf).booleanValue()) {
                    jVar.e();
                } else {
                    jVar.d();
                }
            }
            i2++;
        }
    }

    private void b(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        a(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!arrayList.get(i2).t) {
                if (i3 != i2) {
                    a(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (arrayList2.get(i2).booleanValue()) {
                    while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).t) {
                        i3++;
                    }
                }
                a(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            a(arrayList, arrayList2, i3, size);
        }
    }

    private void a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        int i4;
        int i5 = i2;
        boolean z = arrayList.get(i5).t;
        ArrayList<Fragment> arrayList3 = this.z;
        if (arrayList3 == null) {
            this.z = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.z.addAll(this.f1687e);
        Fragment fragmentZ = z();
        boolean z2 = false;
        for (int i6 = i5; i6 < i3; i6++) {
            androidx.fragment.app.a aVar = arrayList.get(i6);
            if (!arrayList2.get(i6).booleanValue()) {
                fragmentZ = aVar.a(this.z, fragmentZ);
            } else {
                fragmentZ = aVar.b(this.z, fragmentZ);
            }
            z2 = z2 || aVar.i;
        }
        this.z.clear();
        if (!z) {
            l.a(this, arrayList, arrayList2, i2, i3, false);
        }
        b(arrayList, arrayList2, i2, i3);
        if (z) {
            androidx.c.b<Fragment> bVar = new androidx.c.b<>();
            b(bVar);
            int iA = a(arrayList, arrayList2, i2, i3, bVar);
            a(bVar);
            i4 = iA;
        } else {
            i4 = i3;
        }
        if (i4 != i5 && z) {
            l.a(this, arrayList, arrayList2, i2, i4, true);
            a(this.l, true);
        }
        while (i5 < i3) {
            androidx.fragment.app.a aVar2 = arrayList.get(i5);
            if (arrayList2.get(i5).booleanValue() && aVar2.m >= 0) {
                c(aVar2.m);
                aVar2.m = -1;
            }
            aVar2.b();
            i5++;
        }
        if (z2) {
            l();
        }
    }

    private void a(androidx.c.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragmentB = bVar.b(i2);
            if (!fragmentB.u) {
                View viewE = fragmentB.E();
                fragmentB.Z = viewE.getAlpha();
                viewE.setAlpha(0.0f);
            }
        }
    }

    private int a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, androidx.c.b<Fragment> bVar) {
        int i4 = i3;
        for (int i5 = i3 - 1; i5 >= i2; i5--) {
            androidx.fragment.app.a aVar = arrayList.get(i5);
            boolean zBooleanValue = arrayList2.get(i5).booleanValue();
            if (aVar.g() && !aVar.a(arrayList, i5 + 1, i3)) {
                if (this.C == null) {
                    this.C = new ArrayList<>();
                }
                j jVar = new j(aVar, zBooleanValue);
                this.C.add(jVar);
                aVar.a(jVar);
                if (zBooleanValue) {
                    aVar.f();
                } else {
                    aVar.b(false);
                }
                i4--;
                if (i5 != i4) {
                    arrayList.remove(i5);
                    arrayList.add(i4, aVar);
                }
                b(bVar);
            }
        }
        return i4;
    }

    void a(androidx.fragment.app.a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.b(z3);
        } else {
            aVar.f();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            l.a(this, (ArrayList<androidx.fragment.app.a>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z3) {
            a(this.l, true);
        }
        SparseArray<Fragment> sparseArray = this.f;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragmentValueAt = this.f.valueAt(i2);
                if (fragmentValueAt != null && fragmentValueAt.S != null && fragmentValueAt.X && aVar.b(fragmentValueAt.I)) {
                    if (fragmentValueAt.Z > 0.0f) {
                        fragmentValueAt.S.setAlpha(fragmentValueAt.Z);
                    }
                    if (z3) {
                        fragmentValueAt.Z = 0.0f;
                    } else {
                        fragmentValueAt.Z = -1.0f;
                        fragmentValueAt.X = false;
                    }
                }
            }
        }
    }

    private Fragment q(Fragment fragment) {
        ViewGroup viewGroup = fragment.R;
        View view = fragment.S;
        if (viewGroup != null && view != null) {
            for (int iIndexOf = this.f1687e.indexOf(fragment) - 1; iIndexOf >= 0; iIndexOf--) {
                Fragment fragment2 = this.f1687e.get(iIndexOf);
                if (fragment2.R == viewGroup && fragment2.S != null) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    private static void b(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        while (i2 < i3) {
            androidx.fragment.app.a aVar = arrayList.get(i2);
            if (arrayList2.get(i2).booleanValue()) {
                aVar.a(-1);
                aVar.b(i2 == i3 + (-1));
            } else {
                aVar.a(1);
                aVar.f();
            }
            i2++;
        }
    }

    private void b(androidx.c.b<Fragment> bVar) {
        int i2 = this.l;
        if (i2 < 1) {
            return;
        }
        int iMin = Math.min(i2, 3);
        int size = this.f1687e.size();
        for (int i3 = 0; i3 < size; i3++) {
            Fragment fragment = this.f1687e.get(i3);
            if (fragment.k < iMin) {
                a(fragment, iMin, fragment.ae(), fragment.af(), false);
                if (fragment.S != null && !fragment.K && fragment.X) {
                    bVar.add(fragment);
                }
            }
        }
    }

    private void D() {
        if (this.C != null) {
            while (!this.C.isEmpty()) {
                this.C.remove(0).d();
            }
        }
    }

    private void E() {
        SparseArray<Fragment> sparseArray = this.f;
        int size = sparseArray == null ? 0 : sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragmentValueAt = this.f.valueAt(i2);
            if (fragmentValueAt != null) {
                if (fragmentValueAt.aj() != null) {
                    int iAl = fragmentValueAt.al();
                    View viewAj = fragmentValueAt.aj();
                    Animation animation = viewAj.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        viewAj.clearAnimation();
                    }
                    fragmentValueAt.a((View) null);
                    a(fragmentValueAt, iAl, 0, 0, false);
                } else if (fragmentValueAt.ak() != null) {
                    fragmentValueAt.ak().end();
                }
            }
        }
    }

    private boolean c(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            if (this.f1684b != null && this.f1684b.size() != 0) {
                int size = this.f1684b.size();
                boolean zA = false;
                for (int i2 = 0; i2 < size; i2++) {
                    zA |= this.f1684b.get(i2).a(arrayList, arrayList2);
                }
                this.f1684b.clear();
                this.m.h().removeCallbacks(this.E);
                return zA;
            }
            return false;
        }
    }

    void k() {
        if (this.w) {
            this.w = false;
            h();
        }
    }

    void l() {
        if (this.k != null) {
            for (int i2 = 0; i2 < this.k.size(); i2++) {
                this.k.get(i2).a();
            }
        }
    }

    void b(androidx.fragment.app.a aVar) {
        if (this.g == null) {
            this.g = new ArrayList<>();
        }
        this.g.add(aVar);
    }

    boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        int i4;
        ArrayList<androidx.fragment.app.a> arrayList3 = this.g;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.g.remove(size));
            arrayList2.add(true);
        } else {
            if (str != null || i2 >= 0) {
                int size2 = this.g.size() - 1;
                while (size2 >= 0) {
                    androidx.fragment.app.a aVar = this.g.get(size2);
                    if ((str != null && str.equals(aVar.h())) || (i2 >= 0 && i2 == aVar.m)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        androidx.fragment.app.a aVar2 = this.g.get(size2);
                        if (str == null || !str.equals(aVar2.h())) {
                            if (i2 < 0 || i2 != aVar2.m) {
                                break;
                            }
                        }
                    }
                }
                i4 = size2;
            } else {
                i4 = -1;
            }
            if (i4 == this.g.size() - 1) {
                return false;
            }
            for (int size3 = this.g.size() - 1; size3 > i4; size3--) {
                arrayList.add(this.g.remove(size3));
                arrayList2.add(true);
            }
        }
        return true;
    }

    androidx.fragment.app.i m() {
        a(this.D);
        return this.D;
    }

    private static void a(androidx.fragment.app.i iVar) {
        if (iVar == null) {
            return;
        }
        List<Fragment> listA = iVar.a();
        if (listA != null) {
            Iterator<Fragment> it = listA.iterator();
            while (it.hasNext()) {
                it.next().N = true;
            }
        }
        List<androidx.fragment.app.i> listB = iVar.b();
        if (listB != null) {
            Iterator<androidx.fragment.app.i> it2 = listB.iterator();
            while (it2.hasNext()) {
                a(it2.next());
            }
        }
    }

    void n() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        androidx.fragment.app.i iVar;
        if (this.f != null) {
            arrayList = null;
            arrayList2 = null;
            arrayList3 = null;
            for (int i2 = 0; i2 < this.f.size(); i2++) {
                Fragment fragmentValueAt = this.f.valueAt(i2);
                if (fragmentValueAt != null) {
                    if (fragmentValueAt.M) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(fragmentValueAt);
                        fragmentValueAt.s = fragmentValueAt.r != null ? fragmentValueAt.r.o : -1;
                        if (f1683a) {
                            Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragmentValueAt);
                        }
                    }
                    if (fragmentValueAt.D != null) {
                        fragmentValueAt.D.n();
                        iVar = fragmentValueAt.D.D;
                    } else {
                        iVar = fragmentValueAt.E;
                    }
                    if (arrayList2 == null && iVar != null) {
                        arrayList2 = new ArrayList(this.f.size());
                        for (int i3 = 0; i3 < i2; i3++) {
                            arrayList2.add(null);
                        }
                    }
                    if (arrayList2 != null) {
                        arrayList2.add(iVar);
                    }
                    if (arrayList3 == null && fragmentValueAt.F != null) {
                        arrayList3 = new ArrayList(this.f.size());
                        for (int i4 = 0; i4 < i2; i4++) {
                            arrayList3.add(null);
                        }
                    }
                    if (arrayList3 != null) {
                        arrayList3.add(fragmentValueAt.F);
                    }
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
            arrayList3 = null;
        }
        if (arrayList == null && arrayList2 == null && arrayList3 == null) {
            this.D = null;
        } else {
            this.D = new androidx.fragment.app.i(arrayList, arrayList2, arrayList3);
        }
    }

    void n(Fragment fragment) {
        if (fragment.T == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = this.B;
        if (sparseArray == null) {
            this.B = new SparseArray<>();
        } else {
            sparseArray.clear();
        }
        fragment.T.saveHierarchyState(this.B);
        if (this.B.size() > 0) {
            fragment.m = this.B;
            this.B = null;
        }
    }

    Bundle o(Fragment fragment) {
        if (this.A == null) {
            this.A = new Bundle();
        }
        fragment.n(this.A);
        d(fragment, this.A, false);
        Bundle bundle = null;
        if (!this.A.isEmpty()) {
            Bundle bundle2 = this.A;
            this.A = null;
            bundle = bundle2;
        }
        if (fragment.S != null) {
            n(fragment);
        }
        if (fragment.m != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.m);
        }
        if (!fragment.V) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.V);
        }
        return bundle;
    }

    Parcelable o() {
        int[] iArr;
        int size;
        D();
        E();
        j();
        this.s = true;
        BackStackState[] backStackStateArr = null;
        this.D = null;
        SparseArray<Fragment> sparseArray = this.f;
        if (sparseArray == null || sparseArray.size() <= 0) {
            return null;
        }
        int size2 = this.f.size();
        FragmentState[] fragmentStateArr = new FragmentState[size2];
        boolean z = false;
        for (int i2 = 0; i2 < size2; i2++) {
            Fragment fragmentValueAt = this.f.valueAt(i2);
            if (fragmentValueAt != null) {
                if (fragmentValueAt.o < 0) {
                    a(new IllegalStateException("Failure saving state: active " + fragmentValueAt + " has cleared index: " + fragmentValueAt.o));
                }
                FragmentState fragmentState = new FragmentState(fragmentValueAt);
                fragmentStateArr[i2] = fragmentState;
                if (fragmentValueAt.k > 0 && fragmentState.k == null) {
                    fragmentState.k = o(fragmentValueAt);
                    if (fragmentValueAt.r != null) {
                        if (fragmentValueAt.r.o < 0) {
                            a(new IllegalStateException("Failure saving state: " + fragmentValueAt + " has target not in fragment manager: " + fragmentValueAt.r));
                        }
                        if (fragmentState.k == null) {
                            fragmentState.k = new Bundle();
                        }
                        a(fragmentState.k, "android:target_state", fragmentValueAt.r);
                        if (fragmentValueAt.t != 0) {
                            fragmentState.k.putInt("android:target_req_state", fragmentValueAt.t);
                        }
                    }
                } else {
                    fragmentState.k = fragmentValueAt.l;
                }
                if (f1683a) {
                    Log.v("FragmentManager", "Saved state of " + fragmentValueAt + ": " + fragmentState.k);
                }
                z = true;
            }
        }
        if (!z) {
            if (f1683a) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        int size3 = this.f1687e.size();
        if (size3 > 0) {
            iArr = new int[size3];
            for (int i3 = 0; i3 < size3; i3++) {
                iArr[i3] = this.f1687e.get(i3).o;
                if (iArr[i3] < 0) {
                    a(new IllegalStateException("Failure saving state: active " + this.f1687e.get(i3) + " has cleared index: " + iArr[i3]));
                }
                if (f1683a) {
                    Log.v("FragmentManager", "saveAllState: adding fragment #" + i3 + ": " + this.f1687e.get(i3));
                }
            }
        } else {
            iArr = null;
        }
        ArrayList<androidx.fragment.app.a> arrayList = this.g;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i4 = 0; i4 < size; i4++) {
                backStackStateArr[i4] = new BackStackState(this.g.get(i4));
                if (f1683a) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i4 + ": " + this.g.get(i4));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f1642a = fragmentStateArr;
        fragmentManagerState.f1643b = iArr;
        fragmentManagerState.f1644c = backStackStateArr;
        Fragment fragment = this.p;
        if (fragment != null) {
            fragmentManagerState.f1645d = fragment.o;
        }
        fragmentManagerState.f1646e = this.f1686d;
        n();
        return fragmentManagerState;
    }

    void a(Parcelable parcelable, androidx.fragment.app.i iVar) {
        List<androidx.fragment.app.i> listB;
        List<x> listC;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f1642a == null) {
            return;
        }
        if (iVar != null) {
            List<Fragment> listA = iVar.a();
            listB = iVar.b();
            listC = iVar.c();
            int size = listA != null ? listA.size() : 0;
            for (int i2 = 0; i2 < size; i2++) {
                Fragment fragment = listA.get(i2);
                if (f1683a) {
                    Log.v("FragmentManager", "restoreAllState: re-attaching retained " + fragment);
                }
                int i3 = 0;
                while (i3 < fragmentManagerState.f1642a.length && fragmentManagerState.f1642a[i3].f1648b != fragment.o) {
                    i3++;
                }
                if (i3 == fragmentManagerState.f1642a.length) {
                    a(new IllegalStateException("Could not find active fragment with index " + fragment.o));
                }
                FragmentState fragmentState = fragmentManagerState.f1642a[i3];
                fragmentState.l = fragment;
                fragment.m = null;
                fragment.A = 0;
                fragment.x = false;
                fragment.u = false;
                fragment.r = null;
                if (fragmentState.k != null) {
                    fragmentState.k.setClassLoader(this.m.g().getClassLoader());
                    fragment.m = fragmentState.k.getSparseParcelableArray("android:view_state");
                    fragment.l = fragmentState.k;
                }
            }
        } else {
            listB = null;
            listC = null;
        }
        this.f = new SparseArray<>(fragmentManagerState.f1642a.length);
        int i4 = 0;
        while (i4 < fragmentManagerState.f1642a.length) {
            FragmentState fragmentState2 = fragmentManagerState.f1642a[i4];
            if (fragmentState2 != null) {
                Fragment fragmentA = fragmentState2.a(this.m, this.n, this.o, (listB == null || i4 >= listB.size()) ? null : listB.get(i4), (listC == null || i4 >= listC.size()) ? null : listC.get(i4));
                if (f1683a) {
                    Log.v("FragmentManager", "restoreAllState: active #" + i4 + ": " + fragmentA);
                }
                this.f.put(fragmentA.o, fragmentA);
                fragmentState2.l = null;
            }
            i4++;
        }
        if (iVar != null) {
            List<Fragment> listA2 = iVar.a();
            int size2 = listA2 != null ? listA2.size() : 0;
            for (int i5 = 0; i5 < size2; i5++) {
                Fragment fragment2 = listA2.get(i5);
                if (fragment2.s >= 0) {
                    fragment2.r = this.f.get(fragment2.s);
                    if (fragment2.r == null) {
                        Log.w("FragmentManager", "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.s);
                    }
                }
            }
        }
        this.f1687e.clear();
        if (fragmentManagerState.f1643b != null) {
            for (int i6 = 0; i6 < fragmentManagerState.f1643b.length; i6++) {
                Fragment fragment3 = this.f.get(fragmentManagerState.f1643b[i6]);
                if (fragment3 == null) {
                    a(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.f1643b[i6]));
                }
                fragment3.u = true;
                if (f1683a) {
                    Log.v("FragmentManager", "restoreAllState: added #" + i6 + ": " + fragment3);
                }
                if (this.f1687e.contains(fragment3)) {
                    throw new IllegalStateException("Already added!");
                }
                synchronized (this.f1687e) {
                    this.f1687e.add(fragment3);
                }
            }
        }
        if (fragmentManagerState.f1644c != null) {
            this.g = new ArrayList<>(fragmentManagerState.f1644c.length);
            for (int i7 = 0; i7 < fragmentManagerState.f1644c.length; i7++) {
                androidx.fragment.app.a aVarA = fragmentManagerState.f1644c[i7].a(this);
                if (f1683a) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i7 + " (index " + aVarA.m + "): " + aVarA);
                    PrintWriter printWriter = new PrintWriter(new androidx.core.g.b("FragmentManager"));
                    aVarA.a("  ", printWriter, false);
                    printWriter.close();
                }
                this.g.add(aVarA);
                if (aVarA.m >= 0) {
                    a(aVarA.m, aVarA);
                }
            }
        } else {
            this.g = null;
        }
        if (fragmentManagerState.f1645d >= 0) {
            this.p = this.f.get(fragmentManagerState.f1645d);
        }
        this.f1686d = fragmentManagerState.f1646e;
    }

    private void F() {
        SparseArray<Fragment> sparseArray = this.f;
        if (sparseArray != null) {
            for (int size = sparseArray.size() - 1; size >= 0; size--) {
                if (this.f.valueAt(size) == null) {
                    SparseArray<Fragment> sparseArray2 = this.f;
                    sparseArray2.delete(sparseArray2.keyAt(size));
                }
            }
        }
    }

    public void a(androidx.fragment.app.f fVar, androidx.fragment.app.d dVar, Fragment fragment) {
        if (this.m != null) {
            throw new IllegalStateException("Already attached");
        }
        this.m = fVar;
        this.n = dVar;
        this.o = fragment;
    }

    public void p() {
        this.D = null;
        this.s = false;
        this.t = false;
        int size = this.f1687e.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f1687e.get(i2);
            if (fragment != null) {
                fragment.X();
            }
        }
    }

    public void q() {
        this.s = false;
        this.t = false;
        e(1);
    }

    public void r() {
        this.s = false;
        this.t = false;
        e(2);
    }

    public void s() {
        this.s = false;
        this.t = false;
        e(3);
    }

    public void t() {
        this.s = false;
        this.t = false;
        e(4);
    }

    public void u() {
        e(3);
    }

    public void v() {
        this.t = true;
        e(2);
    }

    public void w() {
        e(1);
    }

    public void x() {
        this.u = true;
        j();
        e(0);
        this.m = null;
        this.n = null;
        this.o = null;
    }

    private void e(int i2) {
        try {
            this.f1685c = true;
            a(i2, false);
            this.f1685c = false;
            j();
        } catch (Throwable th) {
            this.f1685c = false;
            throw th;
        }
    }

    public void a(boolean z) {
        for (int size = this.f1687e.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f1687e.get(size);
            if (fragment != null) {
                fragment.j(z);
            }
        }
    }

    public void b(boolean z) {
        for (int size = this.f1687e.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f1687e.get(size);
            if (fragment != null) {
                fragment.k(z);
            }
        }
    }

    public void a(Configuration configuration) {
        for (int i2 = 0; i2 < this.f1687e.size(); i2++) {
            Fragment fragment = this.f1687e.get(i2);
            if (fragment != null) {
                fragment.a(configuration);
            }
        }
    }

    public void y() {
        for (int i2 = 0; i2 < this.f1687e.size(); i2++) {
            Fragment fragment = this.f1687e.get(i2);
            if (fragment != null) {
                fragment.Y();
            }
        }
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        if (this.l < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (int i2 = 0; i2 < this.f1687e.size(); i2++) {
            Fragment fragment = this.f1687e.get(i2);
            if (fragment != null && fragment.b(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.h != null) {
            for (int i3 = 0; i3 < this.h.size(); i3++) {
                Fragment fragment2 = this.h.get(i3);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.J();
                }
            }
        }
        this.h = arrayList;
        return z;
    }

    public boolean a(Menu menu) {
        if (this.l < 1) {
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < this.f1687e.size(); i2++) {
            Fragment fragment = this.f1687e.get(i2);
            if (fragment != null && fragment.c(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean a(MenuItem menuItem) {
        if (this.l < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.f1687e.size(); i2++) {
            Fragment fragment = this.f1687e.get(i2);
            if (fragment != null && fragment.c(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean b(MenuItem menuItem) {
        if (this.l < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.f1687e.size(); i2++) {
            Fragment fragment = this.f1687e.get(i2);
            if (fragment != null && fragment.d(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void b(Menu menu) {
        if (this.l < 1) {
            return;
        }
        for (int i2 = 0; i2 < this.f1687e.size(); i2++) {
            Fragment fragment = this.f1687e.get(i2);
            if (fragment != null) {
                fragment.d(menu);
            }
        }
    }

    public void p(Fragment fragment) {
        if (fragment != null && (this.f.get(fragment.o) != fragment || (fragment.C != null && fragment.t() != this))) {
            throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
        }
        this.p = fragment;
    }

    public Fragment z() {
        return this.p;
    }

    void a(Fragment fragment, Context context, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).a(fragment, context, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.a(this, fragment, context);
            }
        }
    }

    void b(Fragment fragment, Context context, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).b(fragment, context, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.b(this, fragment, context);
            }
        }
    }

    void a(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).a(fragment, bundle, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.a(this, fragment, bundle);
            }
        }
    }

    void b(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).b(fragment, bundle, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.b(this, fragment, bundle);
            }
        }
    }

    void c(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).c(fragment, bundle, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.c(this, fragment, bundle);
            }
        }
    }

    void a(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).a(fragment, view, bundle, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.a(this, fragment, view, bundle);
            }
        }
    }

    void b(Fragment fragment, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).b(fragment, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.a(this, fragment);
            }
        }
    }

    void c(Fragment fragment, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).c(fragment, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.b(this, fragment);
            }
        }
    }

    void d(Fragment fragment, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).d(fragment, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.c(this, fragment);
            }
        }
    }

    void e(Fragment fragment, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).e(fragment, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.d(this, fragment);
            }
        }
    }

    void d(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).d(fragment, bundle, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.d(this, fragment, bundle);
            }
        }
    }

    void f(Fragment fragment, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).f(fragment, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.e(this, fragment);
            }
        }
    }

    void g(Fragment fragment, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).g(fragment, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.f(this, fragment);
            }
        }
    }

    void h(Fragment fragment, boolean z) {
        Fragment fragment2 = this.o;
        if (fragment2 != null) {
            androidx.fragment.app.g gVarT = fragment2.t();
            if (gVarT instanceof h) {
                ((h) gVarT).h(fragment, true);
            }
        }
        for (f fVar : this.J) {
            if (!z || fVar.f1713b) {
                fVar.f1712a.g(this, fragment);
            }
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.f1714a);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(0);
        }
        String str2 = attributeValue;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        String string = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        if (!Fragment.a(this.m.g(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        Fragment fragmentA = resourceId != -1 ? a(resourceId) : null;
        if (fragmentA == null && string != null) {
            fragmentA = a(string);
        }
        if (fragmentA == null && id != -1) {
            fragmentA = a(id);
        }
        if (f1683a) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragmentA);
        }
        if (fragmentA == null) {
            fragmentA = this.n.a(context, str2, null);
            fragmentA.w = true;
            fragmentA.H = resourceId != 0 ? resourceId : id;
            fragmentA.I = id;
            fragmentA.J = string;
            fragmentA.x = true;
            fragmentA.B = this;
            fragmentA.C = this.m;
            fragmentA.a(this.m.g(), attributeSet, fragmentA.l);
            a(fragmentA, true);
        } else {
            if (fragmentA.x) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
            }
            fragmentA.x = true;
            fragmentA.C = this.m;
            if (!fragmentA.N) {
                fragmentA.a(this.m.g(), attributeSet, fragmentA.l);
            }
        }
        Fragment fragment = fragmentA;
        if (this.l < 1 && fragment.w) {
            a(fragment, 1, 0, 0, false);
        } else {
            c(fragment);
        }
        if (fragment.S == null) {
            throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.S.setId(resourceId);
        }
        if (fragment.S.getTag() == null) {
            fragment.S.setTag(string);
        }
        return fragment.S;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    private class i implements InterfaceC0045h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f1715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f1716b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f1717c;

        i(String str, int i, int i2) {
            this.f1715a = str;
            this.f1716b = i;
            this.f1717c = i2;
        }

        @Override // androidx.fragment.app.h.InterfaceC0045h
        public boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
            androidx.fragment.app.g gVarV;
            if (h.this.p == null || this.f1716b >= 0 || this.f1715a != null || (gVarV = h.this.p.v()) == null || !gVarV.d()) {
                return h.this.a(arrayList, arrayList2, this.f1715a, this.f1716b, this.f1717c);
            }
            return false;
        }
    }

    static class j implements Fragment.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f1719a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final androidx.fragment.app.a f1720b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1721c;

        j(androidx.fragment.app.a aVar, boolean z) {
            this.f1719a = z;
            this.f1720b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.c
        public void a() {
            int i = this.f1721c - 1;
            this.f1721c = i;
            if (i != 0) {
                return;
            }
            this.f1720b.f1652a.i();
        }

        @Override // androidx.fragment.app.Fragment.c
        public void b() {
            this.f1721c++;
        }

        public boolean c() {
            return this.f1721c == 0;
        }

        public void d() {
            boolean z = this.f1721c > 0;
            h hVar = this.f1720b.f1652a;
            int size = hVar.f1687e.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = hVar.f1687e.get(i);
                fragment.a((Fragment.c) null);
                if (z && fragment.am()) {
                    fragment.S();
                }
            }
            this.f1720b.f1652a.a(this.f1720b, this.f1719a, !z, true);
        }

        public void e() {
            this.f1720b.f1652a.a(this.f1720b, this.f1719a, false, false);
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Animation f1704a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Animator f1705b;

        c(Animation animation) {
            this.f1704a = animation;
            this.f1705b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        c(Animator animator) {
            this.f1704a = null;
            this.f1705b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    private static class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Animation.AnimationListener f1703a;

        b(Animation.AnimationListener animationListener) {
            this.f1703a = animationListener;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            Animation.AnimationListener animationListener = this.f1703a;
            if (animationListener != null) {
                animationListener.onAnimationStart(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Animation.AnimationListener animationListener = this.f1703a;
            if (animationListener != null) {
                animationListener.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            Animation.AnimationListener animationListener = this.f1703a;
            if (animationListener != null) {
                animationListener.onAnimationRepeat(animation);
            }
        }
    }

    private static class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f1701a;

        a(View view, Animation.AnimationListener animationListener) {
            super(animationListener);
            this.f1701a = view;
        }

        @Override // androidx.fragment.app.h.b, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (r.z(this.f1701a) || Build.VERSION.SDK_INT >= 24) {
                this.f1701a.post(new Runnable() { // from class: androidx.fragment.app.h.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f1701a.setLayerType(0, null);
                    }
                });
            } else {
                this.f1701a.setLayerType(0, null);
            }
            super.onAnimationEnd(animation);
        }
    }

    private static class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f1706a;

        d(View view) {
            this.f1706a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f1706a.setLayerType(2, null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1706a.setLayerType(0, null);
            animator.removeListener(this);
        }
    }

    private static class e extends AnimationSet implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ViewGroup f1707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f1708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1709c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1710d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f1711e;

        e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f1711e = true;
            this.f1707a = viewGroup;
            this.f1708b = view;
            addAnimation(animation);
            this.f1707a.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f1711e = true;
            if (this.f1709c) {
                return !this.f1710d;
            }
            if (!super.getTransformation(j, transformation)) {
                this.f1709c = true;
                o.a(this.f1707a, this);
            }
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.f1711e = true;
            if (this.f1709c) {
                return !this.f1710d;
            }
            if (!super.getTransformation(j, transformation, f)) {
                this.f1709c = true;
                o.a(this.f1707a, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f1709c && this.f1711e) {
                this.f1711e = false;
                this.f1707a.post(this);
            } else {
                this.f1707a.endViewTransition(this.f1708b);
                this.f1710d = true;
            }
        }
    }
}
