package android.support.v4.app;

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
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
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
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
final class m extends l implements LayoutInflater.Factory2 {
    ArrayList<h> B;
    n C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<f> f718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f719c;
    SparseArray<Fragment> f;
    ArrayList<android.support.v4.app.c> g;
    ArrayList<Fragment> h;
    ArrayList<android.support.v4.app.c> i;
    ArrayList<Integer> j;
    ArrayList<l.b> k;
    k m;
    i n;
    Fragment o;
    Fragment p;
    boolean r;
    boolean s;
    boolean t;
    String u;
    boolean v;
    ArrayList<android.support.v4.app.c> w;
    ArrayList<Boolean> x;
    ArrayList<Fragment> y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f717a = false;
    static Field q = null;
    static final Interpolator E = new DecelerateInterpolator(2.5f);
    static final Interpolator F = new DecelerateInterpolator(1.5f);
    static final Interpolator G = new AccelerateInterpolator(2.5f);
    static final Interpolator H = new AccelerateInterpolator(1.5f);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f720d = 0;
    final ArrayList<Fragment> e = new ArrayList<>();
    private final CopyOnWriteArrayList<android.support.v4.g.j<l.a, Boolean>> I = new CopyOnWriteArrayList<>();
    int l = 0;
    Bundle z = null;
    SparseArray<Parcelable> A = null;
    Runnable D = new Runnable() { // from class: android.support.v4.app.m.1
        @Override // java.lang.Runnable
        public void run() {
            m.this.i();
        }
    };

    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int[] f741a = {R.attr.name, R.attr.id, R.attr.tag};
    }

    interface f {
        boolean a(ArrayList<android.support.v4.app.c> arrayList, ArrayList<Boolean> arrayList2);
    }

    m() {
    }

    static boolean a(c cVar) {
        if (cVar.f738a instanceof AlphaAnimation) {
            return true;
        }
        if (cVar.f738a instanceof AnimationSet) {
            List<Animation> animations = ((AnimationSet) cVar.f738a).getAnimations();
            for (int i = 0; i < animations.size(); i++) {
                if (animations.get(i) instanceof AlphaAnimation) {
                    return true;
                }
            }
            return false;
        }
        return a(cVar.f739b);
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
            return false;
        }
        if (!(animator instanceof AnimatorSet)) {
            return false;
        }
        ArrayList<Animator> childAnimations = ((AnimatorSet) animator).getChildAnimations();
        for (int i = 0; i < childAnimations.size(); i++) {
            if (a(childAnimations.get(i))) {
                return true;
            }
        }
        return false;
    }

    static boolean a(View view, c cVar) {
        return view != null && cVar != null && Build.VERSION.SDK_INT >= 19 && view.getLayerType() == 0 && android.support.v4.view.s.p(view) && a(cVar);
    }

    private void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new android.support.v4.g.e("FragmentManager"));
        if (this.m != null) {
            try {
                this.m.a("  ", (FileDescriptor) null, printWriter, new String[0]);
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

    @Override // android.support.v4.app.l
    public p a() {
        return new android.support.v4.app.c(this);
    }

    @Override // android.support.v4.app.l
    public boolean b() {
        boolean zI = i();
        E();
        return zI;
    }

    @Override // android.support.v4.app.l
    public void c() {
        a((f) new g(null, -1, 0), false);
    }

    @Override // android.support.v4.app.l
    public boolean d() {
        B();
        return a((String) null, -1, 0);
    }

    @Override // android.support.v4.app.l
    public void a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        a((f) new g(null, i, i2), false);
    }

    private boolean a(String str, int i, int i2) {
        l lVarPeekChildFragmentManager;
        i();
        c(true);
        if (this.p != null && i < 0 && str == null && (lVarPeekChildFragmentManager = this.p.peekChildFragmentManager()) != null && lVarPeekChildFragmentManager.d()) {
            return true;
        }
        boolean zA = a(this.w, this.x, str, i, i2);
        if (zA) {
            this.f719c = true;
            try {
                b(this.w, this.x);
            } finally {
                D();
            }
        }
        j();
        G();
        return zA;
    }

    @Override // android.support.v4.app.l
    public int e() {
        if (this.g != null) {
            return this.g.size();
        }
        return 0;
    }

    @Override // android.support.v4.app.l
    public void a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.mIndex);
    }

    @Override // android.support.v4.app.l
    public Fragment a(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        Fragment fragment = this.f.get(i);
        if (fragment == null) {
            a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
            return fragment;
        }
        return fragment;
    }

    @Override // android.support.v4.app.l
    public List<Fragment> f() {
        List<Fragment> list;
        if (this.e.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (this.e) {
            list = (List) this.e.clone();
        }
        return list;
    }

    @Override // android.support.v4.app.l
    public Fragment.SavedState a(Fragment fragment) {
        Bundle bundleO;
        if (fragment.mIndex < 0) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.mState <= 0 || (bundleO = o(fragment)) == null) {
            return null;
        }
        return new Fragment.SavedState(bundleO);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.o != null) {
            android.support.v4.g.d.a(this.o, sb);
        } else {
            android.support.v4.g.d.a(this.m, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    @Override // android.support.v4.app.l
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        String str2 = str + "    ";
        if (this.f != null && (size5 = this.f.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i = 0; i < size5; i++) {
                Fragment fragmentValueAt = this.f.valueAt(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragmentValueAt);
                if (fragmentValueAt != null) {
                    fragmentValueAt.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size6 = this.e.size();
        if (size6 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size6; i2++) {
                Fragment fragment = this.e.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        if (this.h != null && (size4 = this.h.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size4; i3++) {
                Fragment fragment2 = this.h.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        if (this.g != null && (size3 = this.g.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size3; i4++) {
                android.support.v4.app.c cVar = this.g.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(cVar.toString());
                cVar.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        synchronized (this) {
            if (this.i != null && (size2 = this.i.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i5 = 0; i5 < size2; i5++) {
                    Object obj = (android.support.v4.app.c) this.i.get(i5);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i5);
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
        if (this.f718b != null && (size = this.f718b.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i6 = 0; i6 < size; i6++) {
                Object obj2 = (f) this.f718b.get(i6);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
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
        printWriter.print(" mDestroyed=");
        printWriter.println(this.t);
        if (this.r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.r);
        }
        if (this.u != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.u);
        }
    }

    static c a(Context context, float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(E);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(F);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new c(animationSet);
    }

    static c a(Context context, float f2, float f3) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f3);
        alphaAnimation.setInterpolator(F);
        alphaAnimation.setDuration(220L);
        return new c(alphaAnimation);
    }

    c a(Fragment fragment, int i, boolean z, int i2) {
        int iB;
        boolean z2;
        int nextAnim = fragment.getNextAnim();
        Animation animationOnCreateAnimation = fragment.onCreateAnimation(i, z, nextAnim);
        if (animationOnCreateAnimation != null) {
            return new c(animationOnCreateAnimation);
        }
        Animator animatorOnCreateAnimator = fragment.onCreateAnimator(i, z, nextAnim);
        if (animatorOnCreateAnimator != null) {
            return new c(animatorOnCreateAnimator);
        }
        if (nextAnim != 0) {
            boolean zEquals = "anim".equals(this.m.i().getResources().getResourceTypeName(nextAnim));
            if (!zEquals) {
                z2 = false;
            } else {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.m.i(), nextAnim);
                    if (animationLoadAnimation != null) {
                        return new c(animationLoadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException e3) {
                    z2 = false;
                }
            }
            if (!z2) {
                try {
                    Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(this.m.i(), nextAnim);
                    if (animatorLoadAnimator != null) {
                        return new c(animatorLoadAnimator);
                    }
                } catch (RuntimeException e4) {
                    if (zEquals) {
                        throw e4;
                    }
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(this.m.i(), nextAnim);
                    if (animationLoadAnimation2 != null) {
                        return new c(animationLoadAnimation2);
                    }
                }
            }
        }
        if (i != 0 && (iB = b(i, z)) >= 0) {
            switch (iB) {
                case 1:
                    return a(this.m.i(), 1.125f, 1.0f, 0.0f, 1.0f);
                case 2:
                    return a(this.m.i(), 1.0f, 0.975f, 1.0f, 0.0f);
                case 3:
                    return a(this.m.i(), 0.975f, 1.0f, 0.0f, 1.0f);
                case 4:
                    return a(this.m.i(), 1.0f, 1.075f, 1.0f, 0.0f);
                case 5:
                    return a(this.m.i(), 0.0f, 1.0f);
                case 6:
                    return a(this.m.i(), 1.0f, 0.0f);
                default:
                    if (i2 == 0 && this.m.e()) {
                        i2 = this.m.f();
                    }
                    return i2 == 0 ? null : null;
            }
        }
        return null;
    }

    public void b(Fragment fragment) {
        if (fragment.mDeferStart) {
            if (this.f719c) {
                this.v = true;
            } else {
                fragment.mDeferStart = false;
                a(fragment, this.l, 0, 0, false);
            }
        }
    }

    private static void b(View view, c cVar) {
        if (view != null && cVar != null && a(view, cVar)) {
            if (cVar.f739b != null) {
                cVar.f739b.addListener(new d(view));
                return;
            }
            Animation.AnimationListener animationListenerA = a(cVar.f738a);
            view.setLayerType(2, null);
            cVar.f738a.setAnimationListener(new a(view, animationListenerA));
        }
    }

    private static Animation.AnimationListener a(Animation animation) {
        try {
            if (q == null) {
                q = Animation.class.getDeclaredField("mListener");
                q.setAccessible(true);
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

    boolean a(int i) {
        return this.l >= i;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    void a(android.support.v4.app.Fragment r11, int r12, int r13, int r14, boolean r15) {
        /*
            Method dump skipped, instruction units count: 1216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.m.a(android.support.v4.app.Fragment, int, int, int, boolean):void");
    }

    private void a(final Fragment fragment, c cVar, int i) {
        final View view = fragment.mView;
        final ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        fragment.setStateAfterAnimating(i);
        if (cVar.f738a != null) {
            Animation animation = cVar.f738a;
            fragment.setAnimatingAway(fragment.mView);
            animation.setAnimationListener(new b(a(animation)) { // from class: android.support.v4.app.m.2
                @Override // android.support.v4.app.m.b, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation2) {
                    super.onAnimationEnd(animation2);
                    viewGroup.post(new Runnable() { // from class: android.support.v4.app.m.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            viewGroup.endViewTransition(view);
                            if (fragment.getAnimatingAway() != null) {
                                fragment.setAnimatingAway(null);
                                m.this.a(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
                            }
                        }
                    });
                }
            });
            b(view, cVar);
            fragment.mView.startAnimation(animation);
            return;
        }
        Animator animator = cVar.f739b;
        fragment.setAnimator(cVar.f739b);
        animator.addListener(new AnimatorListenerAdapter() { // from class: android.support.v4.app.m.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                viewGroup.endViewTransition(view);
                Animator animator3 = fragment.getAnimator();
                fragment.setAnimator(null);
                if (animator3 != null && viewGroup.indexOfChild(view) < 0) {
                    m.this.a(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
                }
            }
        });
        animator.setTarget(fragment.mView);
        b(fragment.mView, cVar);
        animator.start();
    }

    void c(Fragment fragment) {
        a(fragment, this.l, 0, 0, false);
    }

    void d(Fragment fragment) {
        if (fragment.mFromLayout && !fragment.mPerformedCreateView) {
            fragment.mView = fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), null, fragment.mSavedFragmentState);
            if (fragment.mView != null) {
                fragment.mInnerView = fragment.mView;
                fragment.mView.setSaveFromParentEnabled(false);
                if (fragment.mHidden) {
                    fragment.mView.setVisibility(8);
                }
                fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                a(fragment, fragment.mView, fragment.mSavedFragmentState, false);
                return;
            }
            fragment.mInnerView = null;
        }
    }

    void e(final Fragment fragment) {
        if (fragment.mView != null) {
            c cVarA = a(fragment, fragment.getNextTransition(), !fragment.mHidden, fragment.getNextTransitionStyle());
            if (cVarA != null && cVarA.f739b != null) {
                cVarA.f739b.setTarget(fragment.mView);
                if (fragment.mHidden) {
                    if (fragment.isHideReplaced()) {
                        fragment.setHideReplaced(false);
                    } else {
                        final ViewGroup viewGroup = fragment.mContainer;
                        final View view = fragment.mView;
                        viewGroup.startViewTransition(view);
                        cVarA.f739b.addListener(new AnimatorListenerAdapter() { // from class: android.support.v4.app.m.4
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                viewGroup.endViewTransition(view);
                                animator.removeListener(this);
                                if (fragment.mView != null) {
                                    fragment.mView.setVisibility(8);
                                }
                            }
                        });
                    }
                } else {
                    fragment.mView.setVisibility(0);
                }
                b(fragment.mView, cVarA);
                cVarA.f739b.start();
            } else {
                if (cVarA != null) {
                    b(fragment.mView, cVarA);
                    fragment.mView.startAnimation(cVarA.f738a);
                    cVarA.f738a.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            }
        }
        if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
            this.r = true;
        }
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    void f(Fragment fragment) {
        if (fragment != null) {
            int iMin = this.l;
            if (fragment.mRemoving) {
                if (fragment.isInBackStack()) {
                    iMin = Math.min(iMin, 1);
                } else {
                    iMin = Math.min(iMin, 0);
                }
            }
            a(fragment, iMin, fragment.getNextTransition(), fragment.getNextTransitionStyle(), false);
            if (fragment.mView != null) {
                Fragment fragmentQ = q(fragment);
                if (fragmentQ != null) {
                    View view = fragmentQ.mView;
                    ViewGroup viewGroup = fragment.mContainer;
                    int iIndexOfChild = viewGroup.indexOfChild(view);
                    int iIndexOfChild2 = viewGroup.indexOfChild(fragment.mView);
                    if (iIndexOfChild2 < iIndexOfChild) {
                        viewGroup.removeViewAt(iIndexOfChild2);
                        viewGroup.addView(fragment.mView, iIndexOfChild);
                    }
                }
                if (fragment.mIsNewlyAdded && fragment.mContainer != null) {
                    if (fragment.mPostponedAlpha > 0.0f) {
                        fragment.mView.setAlpha(fragment.mPostponedAlpha);
                    }
                    fragment.mPostponedAlpha = 0.0f;
                    fragment.mIsNewlyAdded = false;
                    c cVarA = a(fragment, fragment.getNextTransition(), true, fragment.getNextTransitionStyle());
                    if (cVarA != null) {
                        b(fragment.mView, cVarA);
                        if (cVarA.f738a != null) {
                            fragment.mView.startAnimation(cVarA.f738a);
                        } else {
                            cVarA.f739b.setTarget(fragment.mView);
                            cVarA.f739b.start();
                        }
                    }
                }
            }
            if (fragment.mHiddenChanged) {
                e(fragment);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void a(int r7, boolean r8) {
        /*
            r6 = this;
            r3 = 0
            android.support.v4.app.k r0 = r6.m
            if (r0 != 0) goto Lf
            if (r7 == 0) goto Lf
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "No activity"
            r0.<init>(r1)
            throw r0
        Lf:
            if (r8 != 0) goto L16
            int r0 = r6.l
            if (r7 != r0) goto L16
        L15:
            return
        L16:
            r6.l = r7
            android.util.SparseArray<android.support.v4.app.Fragment> r0 = r6.f
            if (r0 == 0) goto L15
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r6.e
            int r4 = r0.size()
            r2 = r3
            r1 = r3
        L24:
            if (r2 >= r4) goto L41
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r6.e
            java.lang.Object r0 = r0.get(r2)
            android.support.v4.app.Fragment r0 = (android.support.v4.app.Fragment) r0
            r6.f(r0)
            android.support.v4.app.w r5 = r0.mLoaderManager
            if (r5 == 0) goto L8f
            android.support.v4.app.w r0 = r0.mLoaderManager
            boolean r0 = r0.a()
            r0 = r0 | r1
        L3c:
            int r1 = r2 + 1
            r2 = r1
            r1 = r0
            goto L24
        L41:
            android.util.SparseArray<android.support.v4.app.Fragment> r0 = r6.f
            int r4 = r0.size()
            r2 = r3
        L48:
            if (r2 >= r4) goto L73
            android.util.SparseArray<android.support.v4.app.Fragment> r0 = r6.f
            java.lang.Object r0 = r0.valueAt(r2)
            android.support.v4.app.Fragment r0 = (android.support.v4.app.Fragment) r0
            if (r0 == 0) goto L8d
            boolean r5 = r0.mRemoving
            if (r5 != 0) goto L5c
            boolean r5 = r0.mDetached
            if (r5 == 0) goto L8d
        L5c:
            boolean r5 = r0.mIsNewlyAdded
            if (r5 != 0) goto L8d
            r6.f(r0)
            android.support.v4.app.w r5 = r0.mLoaderManager
            if (r5 == 0) goto L8d
            android.support.v4.app.w r0 = r0.mLoaderManager
            boolean r0 = r0.a()
            r0 = r0 | r1
        L6e:
            int r1 = r2 + 1
            r2 = r1
            r1 = r0
            goto L48
        L73:
            if (r1 != 0) goto L78
            r6.h()
        L78:
            boolean r0 = r6.r
            if (r0 == 0) goto L15
            android.support.v4.app.k r0 = r6.m
            if (r0 == 0) goto L15
            int r0 = r6.l
            r1 = 5
            if (r0 != r1) goto L15
            android.support.v4.app.k r0 = r6.m
            r0.d()
            r6.r = r3
            goto L15
        L8d:
            r0 = r1
            goto L6e
        L8f:
            r0 = r1
            goto L3c
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.m.a(int, boolean):void");
    }

    void h() {
        if (this.f != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f.size()) {
                    Fragment fragmentValueAt = this.f.valueAt(i2);
                    if (fragmentValueAt != null) {
                        b(fragmentValueAt);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    void g(Fragment fragment) {
        if (fragment.mIndex < 0) {
            int i = this.f720d;
            this.f720d = i + 1;
            fragment.setIndex(i, this.o);
            if (this.f == null) {
                this.f = new SparseArray<>();
            }
            this.f.put(fragment.mIndex, fragment);
            if (f717a) {
                Log.v("FragmentManager", "Allocated fragment index " + fragment);
            }
        }
    }

    void h(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            if (f717a) {
                Log.v("FragmentManager", "Freeing fragment index " + fragment);
            }
            this.f.put(fragment.mIndex, null);
            this.m.b(fragment.mWho);
            fragment.initState();
        }
    }

    public void a(Fragment fragment, boolean z) {
        if (f717a) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        g(fragment);
        if (!fragment.mDetached) {
            if (this.e.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            synchronized (this.e) {
                this.e.add(fragment);
            }
            fragment.mAdded = true;
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.r = true;
            }
            if (z) {
                c(fragment);
            }
        }
    }

    public void i(Fragment fragment) {
        if (f717a) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            synchronized (this.e) {
                this.e.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.r = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
        }
    }

    public void j(Fragment fragment) {
        if (f717a) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            fragment.mHiddenChanged = fragment.mHiddenChanged ? false : true;
        }
    }

    public void k(Fragment fragment) {
        if (f717a) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = fragment.mHiddenChanged ? false : true;
        }
    }

    public void l(Fragment fragment) {
        if (f717a) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (f717a) {
                    Log.v("FragmentManager", "remove from detach: " + fragment);
                }
                synchronized (this.e) {
                    this.e.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.r = true;
                }
                fragment.mAdded = false;
            }
        }
    }

    public void m(Fragment fragment) {
        if (f717a) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                if (this.e.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (f717a) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                synchronized (this.e) {
                    this.e.add(fragment);
                }
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.r = true;
                }
            }
        }
    }

    public Fragment b(int i) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            Fragment fragment = this.e.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        if (this.f != null) {
            for (int size2 = this.f.size() - 1; size2 >= 0; size2--) {
                Fragment fragmentValueAt = this.f.valueAt(size2);
                if (fragmentValueAt != null && fragmentValueAt.mFragmentId == i) {
                    return fragmentValueAt;
                }
            }
        }
        return null;
    }

    @Override // android.support.v4.app.l
    public Fragment a(String str) {
        if (str != null) {
            for (int size = this.e.size() - 1; size >= 0; size--) {
                Fragment fragment = this.e.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (this.f != null && str != null) {
            for (int size2 = this.f.size() - 1; size2 >= 0; size2--) {
                Fragment fragmentValueAt = this.f.valueAt(size2);
                if (fragmentValueAt != null && str.equals(fragmentValueAt.mTag)) {
                    return fragmentValueAt;
                }
            }
        }
        return null;
    }

    public Fragment b(String str) {
        Fragment fragmentFindFragmentByWho;
        if (this.f != null && str != null) {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                Fragment fragmentValueAt = this.f.valueAt(size);
                if (fragmentValueAt != null && (fragmentFindFragmentByWho = fragmentValueAt.findFragmentByWho(str)) != null) {
                    return fragmentFindFragmentByWho;
                }
            }
        }
        return null;
    }

    private void B() {
        if (this.s) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.u != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.u);
        }
    }

    @Override // android.support.v4.app.l
    public boolean g() {
        return this.s;
    }

    public void a(f fVar, boolean z) {
        if (!z) {
            B();
        }
        synchronized (this) {
            if (this.t || this.m == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                if (this.f718b == null) {
                    this.f718b = new ArrayList<>();
                }
                this.f718b.add(fVar);
                C();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        synchronized (this) {
            boolean z = (this.B == null || this.B.isEmpty()) ? false : true;
            boolean z2 = this.f718b != null && this.f718b.size() == 1;
            if (z || z2) {
                this.m.j().removeCallbacks(this.D);
                this.m.j().post(this.D);
            }
        }
    }

    public int a(android.support.v4.app.c cVar) {
        int size;
        synchronized (this) {
            if (this.j == null || this.j.size() <= 0) {
                if (this.i == null) {
                    this.i = new ArrayList<>();
                }
                size = this.i.size();
                if (f717a) {
                    Log.v("FragmentManager", "Setting back stack index " + size + " to " + cVar);
                }
                this.i.add(cVar);
            } else {
                size = this.j.remove(this.j.size() - 1).intValue();
                if (f717a) {
                    Log.v("FragmentManager", "Adding back stack index " + size + " with " + cVar);
                }
                this.i.set(size, cVar);
            }
        }
        return size;
    }

    public void a(int i, android.support.v4.app.c cVar) {
        synchronized (this) {
            if (this.i == null) {
                this.i = new ArrayList<>();
            }
            int size = this.i.size();
            if (i < size) {
                if (f717a) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + cVar);
                }
                this.i.set(i, cVar);
            } else {
                while (size < i) {
                    this.i.add(null);
                    if (this.j == null) {
                        this.j = new ArrayList<>();
                    }
                    if (f717a) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.j.add(Integer.valueOf(size));
                    size++;
                }
                if (f717a) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + cVar);
                }
                this.i.add(cVar);
            }
        }
    }

    public void c(int i) {
        synchronized (this) {
            this.i.set(i, null);
            if (this.j == null) {
                this.j = new ArrayList<>();
            }
            if (f717a) {
                Log.v("FragmentManager", "Freeing back stack index " + i);
            }
            this.j.add(Integer.valueOf(i));
        }
    }

    private void c(boolean z) {
        if (this.f719c) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (Looper.myLooper() != this.m.j().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            B();
        }
        if (this.w == null) {
            this.w = new ArrayList<>();
            this.x = new ArrayList<>();
        }
        this.f719c = true;
        try {
            a((ArrayList<android.support.v4.app.c>) null, (ArrayList<Boolean>) null);
        } finally {
            this.f719c = false;
        }
    }

    public void b(f fVar, boolean z) {
        if (!z || (this.m != null && !this.t)) {
            c(z);
            if (fVar.a(this.w, this.x)) {
                this.f719c = true;
                try {
                    b(this.w, this.x);
                } finally {
                    D();
                }
            }
            j();
            G();
        }
    }

    private void D() {
        this.f719c = false;
        this.x.clear();
        this.w.clear();
    }

    public boolean i() {
        c(true);
        boolean z = false;
        while (c(this.w, this.x)) {
            this.f719c = true;
            try {
                b(this.w, this.x);
                D();
                z = true;
            } catch (Throwable th) {
                D();
                throw th;
            }
        }
        j();
        G();
        return z;
    }

    private void a(ArrayList<android.support.v4.app.c> arrayList, ArrayList<Boolean> arrayList2) {
        int iIndexOf;
        int iIndexOf2;
        int i = 0;
        int size = this.B == null ? 0 : this.B.size();
        while (i < size) {
            h hVar = this.B.get(i);
            if (arrayList != null && !hVar.f746a && (iIndexOf2 = arrayList.indexOf(hVar.f747b)) != -1 && arrayList2.get(iIndexOf2).booleanValue()) {
                hVar.e();
            } else if (hVar.c() || (arrayList != null && hVar.f747b.a(arrayList, 0, arrayList.size()))) {
                this.B.remove(i);
                i--;
                size--;
                if (arrayList != null && !hVar.f746a && (iIndexOf = arrayList.indexOf(hVar.f747b)) != -1 && arrayList2.get(iIndexOf).booleanValue()) {
                    hVar.e();
                } else {
                    hVar.d();
                }
            }
            i++;
            size = size;
        }
    }

    private void b(ArrayList<android.support.v4.app.c> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int i2 = 0;
        if (arrayList != null && !arrayList.isEmpty()) {
            if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
                throw new IllegalStateException("Internal error with the back stack records");
            }
            a(arrayList, arrayList2);
            int size = arrayList.size();
            int i3 = 0;
            while (i2 < size) {
                if (arrayList.get(i2).t) {
                    i = i2;
                } else {
                    if (i3 != i2) {
                        a(arrayList, arrayList2, i3, i2);
                    }
                    int i4 = i2 + 1;
                    if (arrayList2.get(i2).booleanValue()) {
                        while (i4 < size && arrayList2.get(i4).booleanValue() && !arrayList.get(i4).t) {
                            i4++;
                        }
                    }
                    int i5 = i4;
                    a(arrayList, arrayList2, i2, i5);
                    i3 = i5;
                    i = i5 - 1;
                }
                i2 = i + 1;
            }
            if (i3 != size) {
                a(arrayList, arrayList2, i3, size);
            }
        }
    }

    private void a(ArrayList<android.support.v4.app.c> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int iA;
        Fragment fragmentB;
        boolean z = arrayList.get(i).t;
        if (this.y == null) {
            this.y = new ArrayList<>();
        } else {
            this.y.clear();
        }
        this.y.addAll(this.e);
        int i3 = i;
        Fragment fragmentZ = z();
        boolean z2 = false;
        while (i3 < i2) {
            android.support.v4.app.c cVar = arrayList.get(i3);
            if (!arrayList2.get(i3).booleanValue()) {
                fragmentB = cVar.a(this.y, fragmentZ);
            } else {
                fragmentB = cVar.b(this.y, fragmentZ);
            }
            i3++;
            fragmentZ = fragmentB;
            z2 = z2 || cVar.i;
        }
        this.y.clear();
        if (!z) {
            q.a(this, arrayList, arrayList2, i, i2, false);
        }
        b(arrayList, arrayList2, i, i2);
        if (z) {
            android.support.v4.g.b<Fragment> bVar = new android.support.v4.g.b<>();
            b(bVar);
            iA = a(arrayList, arrayList2, i, i2, bVar);
            a(bVar);
        } else {
            iA = i2;
        }
        if (iA != i && z) {
            q.a(this, arrayList, arrayList2, i, iA, true);
            a(this.l, true);
        }
        while (i < i2) {
            android.support.v4.app.c cVar2 = arrayList.get(i);
            if (arrayList2.get(i).booleanValue() && cVar2.m >= 0) {
                c(cVar2.m);
                cVar2.m = -1;
            }
            cVar2.b();
            i++;
        }
        if (z2) {
            k();
        }
    }

    private void a(android.support.v4.g.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i = 0; i < size; i++) {
            Fragment fragmentB = bVar.b(i);
            if (!fragmentB.mAdded) {
                View view = fragmentB.getView();
                fragmentB.mPostponedAlpha = view.getAlpha();
                view.setAlpha(0.0f);
            }
        }
    }

    private int a(ArrayList<android.support.v4.app.c> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, android.support.v4.g.b<Fragment> bVar) {
        int i3;
        int i4 = i2 - 1;
        int i5 = i2;
        while (i4 >= i) {
            android.support.v4.app.c cVar = arrayList.get(i4);
            boolean zBooleanValue = arrayList2.get(i4).booleanValue();
            if (cVar.g() && !cVar.a(arrayList, i4 + 1, i2)) {
                if (this.B == null) {
                    this.B = new ArrayList<>();
                }
                h hVar = new h(cVar, zBooleanValue);
                this.B.add(hVar);
                cVar.a(hVar);
                if (zBooleanValue) {
                    cVar.f();
                } else {
                    cVar.b(false);
                }
                int i6 = i5 - 1;
                if (i4 != i6) {
                    arrayList.remove(i4);
                    arrayList.add(i6, cVar);
                }
                b(bVar);
                i3 = i6;
            } else {
                i3 = i5;
            }
            i4--;
            i5 = i3;
        }
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(android.support.v4.app.c cVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            cVar.b(z3);
        } else {
            cVar.f();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(cVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            q.a(this, (ArrayList<android.support.v4.app.c>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z3) {
            a(this.l, true);
        }
        if (this.f != null) {
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                Fragment fragmentValueAt = this.f.valueAt(i);
                if (fragmentValueAt != null && fragmentValueAt.mView != null && fragmentValueAt.mIsNewlyAdded && cVar.b(fragmentValueAt.mContainerId)) {
                    if (fragmentValueAt.mPostponedAlpha > 0.0f) {
                        fragmentValueAt.mView.setAlpha(fragmentValueAt.mPostponedAlpha);
                    }
                    if (z3) {
                        fragmentValueAt.mPostponedAlpha = 0.0f;
                    } else {
                        fragmentValueAt.mPostponedAlpha = -1.0f;
                        fragmentValueAt.mIsNewlyAdded = false;
                    }
                }
            }
        }
    }

    private Fragment q(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        View view = fragment.mView;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int iIndexOf = this.e.indexOf(fragment) - 1; iIndexOf >= 0; iIndexOf--) {
            Fragment fragment2 = this.e.get(iIndexOf);
            if (fragment2.mContainer == viewGroup && fragment2.mView != null) {
                return fragment2;
            }
        }
        return null;
    }

    private static void b(ArrayList<android.support.v4.app.c> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            android.support.v4.app.c cVar = arrayList.get(i);
            if (arrayList2.get(i).booleanValue()) {
                cVar.a(-1);
                cVar.b(i == i2 + (-1));
            } else {
                cVar.a(1);
                cVar.f();
            }
            i++;
        }
    }

    private void b(android.support.v4.g.b<Fragment> bVar) {
        if (this.l >= 1) {
            int iMin = Math.min(this.l, 4);
            int size = this.e.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = this.e.get(i);
                if (fragment.mState < iMin) {
                    a(fragment, iMin, fragment.getNextAnim(), fragment.getNextTransition(), false);
                    if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                        bVar.add(fragment);
                    }
                }
            }
        }
    }

    private void E() {
        if (this.B != null) {
            while (!this.B.isEmpty()) {
                this.B.remove(0).d();
            }
        }
    }

    private void F() {
        int size = this.f == null ? 0 : this.f.size();
        for (int i = 0; i < size; i++) {
            Fragment fragmentValueAt = this.f.valueAt(i);
            if (fragmentValueAt != null) {
                if (fragmentValueAt.getAnimatingAway() != null) {
                    int stateAfterAnimating = fragmentValueAt.getStateAfterAnimating();
                    View animatingAway = fragmentValueAt.getAnimatingAway();
                    Animation animation = animatingAway.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        animatingAway.clearAnimation();
                    }
                    fragmentValueAt.setAnimatingAway(null);
                    a(fragmentValueAt, stateAfterAnimating, 0, 0, false);
                } else if (fragmentValueAt.getAnimator() != null) {
                    fragmentValueAt.getAnimator().end();
                }
            }
        }
    }

    private boolean c(ArrayList<android.support.v4.app.c> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            if (this.f718b == null || this.f718b.size() == 0) {
                return false;
            }
            int size = this.f718b.size();
            boolean zA = false;
            for (int i = 0; i < size; i++) {
                zA |= this.f718b.get(i).a(arrayList, arrayList2);
            }
            this.f718b.clear();
            this.m.j().removeCallbacks(this.D);
            return zA;
        }
    }

    void j() {
        if (this.v) {
            boolean zA = false;
            for (int i = 0; i < this.f.size(); i++) {
                Fragment fragmentValueAt = this.f.valueAt(i);
                if (fragmentValueAt != null && fragmentValueAt.mLoaderManager != null) {
                    zA |= fragmentValueAt.mLoaderManager.a();
                }
            }
            if (!zA) {
                this.v = false;
                h();
            }
        }
    }

    void k() {
        if (this.k != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.k.size()) {
                    this.k.get(i2).a();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    void b(android.support.v4.app.c cVar) {
        if (this.g == null) {
            this.g = new ArrayList<>();
        }
        this.g.add(cVar);
    }

    boolean a(ArrayList<android.support.v4.app.c> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        if (this.g == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = this.g.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.g.remove(size));
            arrayList2.add(true);
        } else {
            int i3 = -1;
            if (str != null || i >= 0) {
                int size2 = this.g.size() - 1;
                while (size2 >= 0) {
                    android.support.v4.app.c cVar = this.g.get(size2);
                    if ((str != null && str.equals(cVar.h())) || (i >= 0 && i == cVar.m)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    size2--;
                    while (size2 >= 0) {
                        android.support.v4.app.c cVar2 = this.g.get(size2);
                        if ((str == null || !str.equals(cVar2.h())) && (i < 0 || i != cVar2.m)) {
                            break;
                        }
                        size2--;
                    }
                }
                i3 = size2;
            }
            if (i3 == this.g.size() - 1) {
                return false;
            }
            for (int size3 = this.g.size() - 1; size3 > i3; size3--) {
                arrayList.add(this.g.remove(size3));
                arrayList2.add(true);
            }
        }
        return true;
    }

    n l() {
        a(this.C);
        return this.C;
    }

    private static void a(n nVar) {
        if (nVar != null) {
            List<Fragment> listA = nVar.a();
            if (listA != null) {
                Iterator<Fragment> it = listA.iterator();
                while (it.hasNext()) {
                    it.next().mRetaining = true;
                }
            }
            List<n> listB = nVar.b();
            if (listB != null) {
                Iterator<n> it2 = listB.iterator();
                while (it2.hasNext()) {
                    a(it2.next());
                }
            }
        }
    }

    void m() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        n nVar;
        if (this.f != null) {
            int i = 0;
            arrayList = null;
            arrayList2 = null;
            while (i < this.f.size()) {
                Fragment fragmentValueAt = this.f.valueAt(i);
                if (fragmentValueAt != null) {
                    if (fragmentValueAt.mRetainInstance) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(fragmentValueAt);
                        fragmentValueAt.mTargetIndex = fragmentValueAt.mTarget != null ? fragmentValueAt.mTarget.mIndex : -1;
                        if (f717a) {
                            Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragmentValueAt);
                        }
                    }
                    if (fragmentValueAt.mChildFragmentManager != null) {
                        fragmentValueAt.mChildFragmentManager.m();
                        nVar = fragmentValueAt.mChildFragmentManager.C;
                    } else {
                        nVar = fragmentValueAt.mChildNonConfig;
                    }
                    if (arrayList == null && nVar != null) {
                        arrayList = new ArrayList(this.f.size());
                        for (int i2 = 0; i2 < i; i2++) {
                            arrayList.add(null);
                        }
                    }
                    arrayList3 = arrayList;
                    if (arrayList3 != null) {
                        arrayList3.add(nVar);
                    }
                } else {
                    arrayList3 = arrayList;
                }
                i++;
                arrayList2 = arrayList2;
                arrayList = arrayList3;
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        if (arrayList2 == null && arrayList == null) {
            this.C = null;
        } else {
            this.C = new n(arrayList2, arrayList);
        }
    }

    void n(Fragment fragment) {
        if (fragment.mInnerView != null) {
            if (this.A == null) {
                this.A = new SparseArray<>();
            } else {
                this.A.clear();
            }
            fragment.mInnerView.saveHierarchyState(this.A);
            if (this.A.size() > 0) {
                fragment.mSavedViewState = this.A;
                this.A = null;
            }
        }
    }

    Bundle o(Fragment fragment) {
        Bundle bundle;
        if (this.z == null) {
            this.z = new Bundle();
        }
        fragment.performSaveInstanceState(this.z);
        d(fragment, this.z, false);
        if (this.z.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.z;
            this.z = null;
        }
        if (fragment.mView != null) {
            n(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
        }
        return bundle;
    }

    Parcelable n() {
        int[] iArr;
        int size;
        boolean z;
        BackStackState[] backStackStateArr = null;
        E();
        F();
        i();
        this.s = true;
        this.C = null;
        if (this.f == null || this.f.size() <= 0) {
            return null;
        }
        int size2 = this.f.size();
        FragmentState[] fragmentStateArr = new FragmentState[size2];
        int i = 0;
        boolean z2 = false;
        while (i < size2) {
            Fragment fragmentValueAt = this.f.valueAt(i);
            if (fragmentValueAt != null) {
                if (fragmentValueAt.mIndex < 0) {
                    a(new IllegalStateException("Failure saving state: active " + fragmentValueAt + " has cleared index: " + fragmentValueAt.mIndex));
                }
                FragmentState fragmentState = new FragmentState(fragmentValueAt);
                fragmentStateArr[i] = fragmentState;
                if (fragmentValueAt.mState > 0 && fragmentState.k == null) {
                    fragmentState.k = o(fragmentValueAt);
                    if (fragmentValueAt.mTarget != null) {
                        if (fragmentValueAt.mTarget.mIndex < 0) {
                            a(new IllegalStateException("Failure saving state: " + fragmentValueAt + " has target not in fragment manager: " + fragmentValueAt.mTarget));
                        }
                        if (fragmentState.k == null) {
                            fragmentState.k = new Bundle();
                        }
                        a(fragmentState.k, "android:target_state", fragmentValueAt.mTarget);
                        if (fragmentValueAt.mTargetRequestCode != 0) {
                            fragmentState.k.putInt("android:target_req_state", fragmentValueAt.mTargetRequestCode);
                        }
                    }
                } else {
                    fragmentState.k = fragmentValueAt.mSavedFragmentState;
                }
                if (f717a) {
                    Log.v("FragmentManager", "Saved state of " + fragmentValueAt + ": " + fragmentState.k);
                }
                z = true;
            } else {
                z = z2;
            }
            i++;
            z2 = z;
        }
        if (!z2) {
            if (!f717a) {
                return null;
            }
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
        int size3 = this.e.size();
        if (size3 > 0) {
            iArr = new int[size3];
            for (int i2 = 0; i2 < size3; i2++) {
                iArr[i2] = this.e.get(i2).mIndex;
                if (iArr[i2] < 0) {
                    a(new IllegalStateException("Failure saving state: active " + this.e.get(i2) + " has cleared index: " + iArr[i2]));
                }
                if (f717a) {
                    Log.v("FragmentManager", "saveAllState: adding fragment #" + i2 + ": " + this.e.get(i2));
                }
            }
        } else {
            iArr = null;
        }
        if (this.g != null && (size = this.g.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i3 = 0; i3 < size; i3++) {
                backStackStateArr[i3] = new BackStackState(this.g.get(i3));
                if (f717a) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i3 + ": " + this.g.get(i3));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f636a = fragmentStateArr;
        fragmentManagerState.f637b = iArr;
        fragmentManagerState.f638c = backStackStateArr;
        if (this.p != null) {
            fragmentManagerState.f639d = this.p.mIndex;
        }
        fragmentManagerState.e = this.f720d;
        m();
        return fragmentManagerState;
    }

    void a(Parcelable parcelable, n nVar) {
        List<n> list;
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.f636a != null) {
                if (nVar != null) {
                    List<Fragment> listA = nVar.a();
                    List<n> listB = nVar.b();
                    int size = listA != null ? listA.size() : 0;
                    for (int i = 0; i < size; i++) {
                        Fragment fragment = listA.get(i);
                        if (f717a) {
                            Log.v("FragmentManager", "restoreAllState: re-attaching retained " + fragment);
                        }
                        int i2 = 0;
                        while (i2 < fragmentManagerState.f636a.length && fragmentManagerState.f636a[i2].f641b != fragment.mIndex) {
                            i2++;
                        }
                        if (i2 == fragmentManagerState.f636a.length) {
                            a(new IllegalStateException("Could not find active fragment with index " + fragment.mIndex));
                        }
                        FragmentState fragmentState = fragmentManagerState.f636a[i2];
                        fragmentState.l = fragment;
                        fragment.mSavedViewState = null;
                        fragment.mBackStackNesting = 0;
                        fragment.mInLayout = false;
                        fragment.mAdded = false;
                        fragment.mTarget = null;
                        if (fragmentState.k != null) {
                            fragmentState.k.setClassLoader(this.m.i().getClassLoader());
                            fragment.mSavedViewState = fragmentState.k.getSparseParcelableArray("android:view_state");
                            fragment.mSavedFragmentState = fragmentState.k;
                        }
                    }
                    list = listB;
                } else {
                    list = null;
                }
                this.f = new SparseArray<>(fragmentManagerState.f636a.length);
                int i3 = 0;
                while (i3 < fragmentManagerState.f636a.length) {
                    FragmentState fragmentState2 = fragmentManagerState.f636a[i3];
                    if (fragmentState2 != null) {
                        Fragment fragmentA = fragmentState2.a(this.m, this.n, this.o, (list == null || i3 >= list.size()) ? null : list.get(i3));
                        if (f717a) {
                            Log.v("FragmentManager", "restoreAllState: active #" + i3 + ": " + fragmentA);
                        }
                        this.f.put(fragmentA.mIndex, fragmentA);
                        fragmentState2.l = null;
                    }
                    i3++;
                }
                if (nVar != null) {
                    List<Fragment> listA2 = nVar.a();
                    int size2 = listA2 != null ? listA2.size() : 0;
                    for (int i4 = 0; i4 < size2; i4++) {
                        Fragment fragment2 = listA2.get(i4);
                        if (fragment2.mTargetIndex >= 0) {
                            fragment2.mTarget = this.f.get(fragment2.mTargetIndex);
                            if (fragment2.mTarget == null) {
                                Log.w("FragmentManager", "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.mTargetIndex);
                            }
                        }
                    }
                }
                this.e.clear();
                if (fragmentManagerState.f637b != null) {
                    for (int i5 = 0; i5 < fragmentManagerState.f637b.length; i5++) {
                        Fragment fragment3 = this.f.get(fragmentManagerState.f637b[i5]);
                        if (fragment3 == null) {
                            a(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.f637b[i5]));
                        }
                        fragment3.mAdded = true;
                        if (f717a) {
                            Log.v("FragmentManager", "restoreAllState: added #" + i5 + ": " + fragment3);
                        }
                        if (this.e.contains(fragment3)) {
                            throw new IllegalStateException("Already added!");
                        }
                        synchronized (this.e) {
                            this.e.add(fragment3);
                        }
                    }
                }
                if (fragmentManagerState.f638c != null) {
                    this.g = new ArrayList<>(fragmentManagerState.f638c.length);
                    for (int i6 = 0; i6 < fragmentManagerState.f638c.length; i6++) {
                        android.support.v4.app.c cVarA = fragmentManagerState.f638c[i6].a(this);
                        if (f717a) {
                            Log.v("FragmentManager", "restoreAllState: back stack #" + i6 + " (index " + cVarA.m + "): " + cVarA);
                            PrintWriter printWriter = new PrintWriter(new android.support.v4.g.e("FragmentManager"));
                            cVarA.a("  ", printWriter, false);
                            printWriter.close();
                        }
                        this.g.add(cVarA);
                        if (cVarA.m >= 0) {
                            a(cVarA.m, cVarA);
                        }
                    }
                } else {
                    this.g = null;
                }
                if (fragmentManagerState.f639d >= 0) {
                    this.p = this.f.get(fragmentManagerState.f639d);
                }
                this.f720d = fragmentManagerState.e;
            }
        }
    }

    private void G() {
        if (this.f != null) {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                if (this.f.valueAt(size) == null) {
                    this.f.delete(this.f.keyAt(size));
                }
            }
        }
    }

    public void a(k kVar, i iVar, Fragment fragment) {
        if (this.m != null) {
            throw new IllegalStateException("Already attached");
        }
        this.m = kVar;
        this.n = iVar;
        this.o = fragment;
    }

    public void o() {
        this.C = null;
        this.s = false;
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = this.e.get(i);
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    public void p() {
        this.s = false;
        e(1);
    }

    public void q() {
        this.s = false;
        e(2);
    }

    public void r() {
        this.s = false;
        e(4);
    }

    public void s() {
        this.s = false;
        e(5);
    }

    public void t() {
        e(4);
    }

    public void u() {
        this.s = true;
        e(3);
    }

    public void v() {
        e(2);
    }

    public void w() {
        e(1);
    }

    public void x() {
        this.t = true;
        i();
        e(0);
        this.m = null;
        this.n = null;
        this.o = null;
    }

    private void e(int i) {
        try {
            this.f719c = true;
            a(i, false);
            this.f719c = false;
            i();
        } catch (Throwable th) {
            this.f719c = false;
            throw th;
        }
    }

    public void a(boolean z) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            Fragment fragment = this.e.get(size);
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    public void b(boolean z) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            Fragment fragment = this.e.get(size);
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    public void a(Configuration configuration) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.e.size()) {
                Fragment fragment = this.e.get(i2);
                if (fragment != null) {
                    fragment.performConfigurationChanged(configuration);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void y() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.e.size()) {
                Fragment fragment = this.e.get(i2);
                if (fragment != null) {
                    fragment.performLowMemory();
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        boolean z;
        if (this.l < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        int i = 0;
        boolean z2 = false;
        while (i < this.e.size()) {
            Fragment fragment = this.e.get(i);
            if (fragment == null || !fragment.performCreateOptionsMenu(menu, menuInflater)) {
                z = z2;
            } else {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
            i++;
            z2 = z;
        }
        if (this.h != null) {
            for (int i2 = 0; i2 < this.h.size(); i2++) {
                Fragment fragment2 = this.h.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.h = arrayList;
        return z2;
    }

    public boolean a(Menu menu) {
        if (this.l < 1) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.e.size(); i++) {
            Fragment fragment = this.e.get(i);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean a(MenuItem menuItem) {
        if (this.l < 1) {
            return false;
        }
        for (int i = 0; i < this.e.size(); i++) {
            Fragment fragment = this.e.get(i);
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public boolean b(MenuItem menuItem) {
        if (this.l < 1) {
            return false;
        }
        for (int i = 0; i < this.e.size(); i++) {
            Fragment fragment = this.e.get(i);
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void b(Menu menu) {
        if (this.l >= 1) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.e.size()) {
                    Fragment fragment = this.e.get(i2);
                    if (fragment != null) {
                        fragment.performOptionsMenuClosed(menu);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void p(Fragment fragment) {
        if (fragment != null && (this.f.get(fragment.mIndex) != fragment || (fragment.mHost != null && fragment.getFragmentManager() != this))) {
            throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
        }
        this.p = fragment;
    }

    public Fragment z() {
        return this.p;
    }

    @Override // android.support.v4.app.l
    public void a(l.a aVar, boolean z) {
        this.I.add(new android.support.v4.g.j<>(aVar, Boolean.valueOf(z)));
    }

    void a(Fragment fragment, Context context, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).a(fragment, context, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.a(this, fragment, context);
            }
        }
    }

    void b(Fragment fragment, Context context, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).b(fragment, context, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.b(this, fragment, context);
            }
        }
    }

    void a(Fragment fragment, Bundle bundle, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).a(fragment, bundle, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.b(this, fragment, bundle);
            }
        }
    }

    void b(Fragment fragment, Bundle bundle, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).b(fragment, bundle, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.a(this, fragment, bundle);
            }
        }
    }

    void c(Fragment fragment, Bundle bundle, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).c(fragment, bundle, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.c(this, fragment, bundle);
            }
        }
    }

    void a(Fragment fragment, View view, Bundle bundle, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).a(fragment, view, bundle, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.a(this, fragment, view, bundle);
            }
        }
    }

    void b(Fragment fragment, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).b(fragment, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.a(this, fragment);
            }
        }
    }

    void c(Fragment fragment, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).c(fragment, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.b(this, fragment);
            }
        }
    }

    void d(Fragment fragment, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).d(fragment, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.c(this, fragment);
            }
        }
    }

    void e(Fragment fragment, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).e(fragment, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.d(this, fragment);
            }
        }
    }

    void d(Fragment fragment, Bundle bundle, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).d(fragment, bundle, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.d(this, fragment, bundle);
            }
        }
    }

    void f(Fragment fragment, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).f(fragment, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.e(this, fragment);
            }
        }
    }

    void g(Fragment fragment, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).g(fragment, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.f(this, fragment);
            }
        }
    }

    void h(Fragment fragment, boolean z) {
        if (this.o != null) {
            l fragmentManager = this.o.getFragmentManager();
            if (fragmentManager instanceof m) {
                ((m) fragmentManager).h(fragment, true);
            }
        }
        for (android.support.v4.g.j<l.a, Boolean> jVar : this.I) {
            if (!z || jVar.f957b.booleanValue()) {
                jVar.f956a.g(this, fragment);
            }
        }
    }

    public static int d(int i) {
        switch (i) {
            case 4097:
                return 8194;
            case 4099:
                return 4099;
            case 8194:
                return 4097;
            default:
                return 0;
        }
    }

    public static int b(int i, boolean z) {
        switch (i) {
            case 4097:
                return z ? 1 : 2;
            case 4099:
                return z ? 5 : 6;
            case 8194:
                return z ? 3 : 4;
            default:
                return -1;
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.f741a);
        String string = attributeValue == null ? typedArrayObtainStyledAttributes.getString(0) : attributeValue;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        String string2 = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        if (!Fragment.isSupportFragmentClass(this.m.i(), string)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string2 == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + string);
        }
        Fragment fragmentB = resourceId != -1 ? b(resourceId) : null;
        if (fragmentB == null && string2 != null) {
            fragmentB = a(string2);
        }
        if (fragmentB == null && id != -1) {
            fragmentB = b(id);
        }
        if (f717a) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + string + " existing=" + fragmentB);
        }
        if (fragmentB == null) {
            Fragment fragmentA = this.n.a(context, string, null);
            fragmentA.mFromLayout = true;
            fragmentA.mFragmentId = resourceId != 0 ? resourceId : id;
            fragmentA.mContainerId = id;
            fragmentA.mTag = string2;
            fragmentA.mInLayout = true;
            fragmentA.mFragmentManager = this;
            fragmentA.mHost = this.m;
            fragmentA.onInflate(this.m.i(), attributeSet, fragmentA.mSavedFragmentState);
            a(fragmentA, true);
            fragment = fragmentA;
        } else {
            if (fragmentB.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + string);
            }
            fragmentB.mInLayout = true;
            fragmentB.mHost = this.m;
            if (!fragmentB.mRetaining) {
                fragmentB.onInflate(this.m.i(), attributeSet, fragmentB.mSavedFragmentState);
            }
            fragment = fragmentB;
        }
        if (this.l < 1 && fragment.mFromLayout) {
            a(fragment, 1, 0, 0, false);
        } else {
            c(fragment);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + string + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.mView.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string2);
        }
        return fragment.mView;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    LayoutInflater.Factory2 A() {
        return this;
    }

    private class g implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f742a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f743b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f744c;

        g(String str, int i, int i2) {
            this.f742a = str;
            this.f743b = i;
            this.f744c = i2;
        }

        @Override // android.support.v4.app.m.f
        public boolean a(ArrayList<android.support.v4.app.c> arrayList, ArrayList<Boolean> arrayList2) {
            l lVarPeekChildFragmentManager;
            if (m.this.p == null || this.f743b >= 0 || this.f742a != null || (lVarPeekChildFragmentManager = m.this.p.peekChildFragmentManager()) == null || !lVarPeekChildFragmentManager.d()) {
                return m.this.a(arrayList, arrayList2, this.f742a, this.f743b, this.f744c);
            }
            return false;
        }
    }

    static class h implements Fragment.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final android.support.v4.app.c f747b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f748c;

        h(android.support.v4.app.c cVar, boolean z) {
            this.f746a = z;
            this.f747b = cVar;
        }

        @Override // android.support.v4.app.Fragment.c
        public void a() {
            this.f748c--;
            if (this.f748c == 0) {
                this.f747b.f691a.C();
            }
        }

        @Override // android.support.v4.app.Fragment.c
        public void b() {
            this.f748c++;
        }

        public boolean c() {
            return this.f748c == 0;
        }

        public void d() {
            boolean z = this.f748c > 0;
            m mVar = this.f747b.f691a;
            int size = mVar.e.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = mVar.e.get(i);
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            this.f747b.f691a.a(this.f747b, this.f746a, z ? false : true, true);
        }

        public void e() {
            this.f747b.f691a.a(this.f747b, this.f746a, false, false);
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Animation f738a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Animator f739b;

        private c(Animation animation) {
            this.f738a = animation;
            this.f739b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        private c(Animator animator) {
            this.f738a = null;
            this.f739b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    private static class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Animation.AnimationListener f737a;

        private b(Animation.AnimationListener animationListener) {
            this.f737a = animationListener;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            if (this.f737a != null) {
                this.f737a.onAnimationStart(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (this.f737a != null) {
                this.f737a.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            if (this.f737a != null) {
                this.f737a.onAnimationRepeat(animation);
            }
        }
    }

    private static class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f735a;

        a(View view, Animation.AnimationListener animationListener) {
            super(animationListener);
            this.f735a = view;
        }

        @Override // android.support.v4.app.m.b, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (android.support.v4.view.s.y(this.f735a) || Build.VERSION.SDK_INT >= 24) {
                this.f735a.post(new Runnable() { // from class: android.support.v4.app.m.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f735a.setLayerType(0, null);
                    }
                });
            } else {
                this.f735a.setLayerType(0, null);
            }
            super.onAnimationEnd(animation);
        }
    }

    private static class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f740a;

        d(View view) {
            this.f740a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f740a.setLayerType(2, null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f740a.setLayerType(0, null);
            animator.removeListener(this);
        }
    }
}
