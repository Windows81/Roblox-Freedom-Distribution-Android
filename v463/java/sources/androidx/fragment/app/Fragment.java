package androidx.fragment.app;

import android.animation.Animator;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.lifecycle.g;
import androidx.lifecycle.x;
import androidx.lifecycle.y;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.j, y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final androidx.c.g<String, Class<?>> f1632a = new androidx.c.g<>();
    static final Object j = new Object();
    int A;
    h B;
    f C;
    h D;
    i E;
    x F;
    Fragment G;
    int H;
    int I;
    String J;
    boolean K;
    boolean L;
    boolean M;
    boolean N;
    boolean O;
    boolean Q;
    ViewGroup R;
    View S;
    View T;
    boolean U;
    a W;
    boolean X;
    boolean Y;
    float Z;
    LayoutInflater aa;
    boolean ab;
    androidx.lifecycle.k ad;
    androidx.lifecycle.j ae;
    Bundle l;
    SparseArray<Parcelable> m;
    Boolean n;
    String p;
    Bundle q;
    Fragment r;
    int t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    boolean z;
    int k = 0;
    int o = -1;
    int s = -1;
    boolean P = true;
    boolean V = true;
    androidx.lifecycle.k ac = new androidx.lifecycle.k(this);
    androidx.lifecycle.p<androidx.lifecycle.j> af = new androidx.lifecycle.p<>();

    interface c {
        void a();

        void b();
    }

    public void J() {
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public Animation a(int i, boolean z, int i2) {
        return null;
    }

    public void a(int i, int i2, Intent intent) {
    }

    public void a(int i, String[] strArr, int[] iArr) {
    }

    public void a(Menu menu) {
    }

    public void a(Menu menu, MenuInflater menuInflater) {
    }

    public void a(View view, Bundle bundle) {
    }

    public void a(Fragment fragment) {
    }

    public boolean a(MenuItem menuItem) {
        return false;
    }

    public Animator b(int i, boolean z, int i2) {
        return null;
    }

    public void b(Menu menu) {
    }

    public boolean b(MenuItem menuItem) {
        return false;
    }

    public void d(boolean z) {
    }

    public void e(Bundle bundle) {
    }

    public void h(boolean z) {
    }

    public void i(boolean z) {
    }

    @Override // androidx.lifecycle.j
    public androidx.lifecycle.g g() {
        return this.ac;
    }

    @Override // androidx.lifecycle.y
    public x k() {
        if (p() == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.F == null) {
            this.F = new x();
        }
        return this.F;
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.fragment.app.Fragment.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Bundle f1636a;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        SavedState(Bundle bundle) {
            this.f1636a = bundle;
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            Bundle bundle = parcel.readBundle();
            this.f1636a = bundle;
            if (classLoader == null || bundle == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.f1636a);
        }
    }

    public static class b extends RuntimeException {
        public b(String str, Exception exc) {
            super(str, exc);
        }
    }

    public static Fragment a(Context context, String str, Bundle bundle) {
        try {
            Class<?> clsLoadClass = f1632a.get(str);
            if (clsLoadClass == null) {
                clsLoadClass = context.getClassLoader().loadClass(str);
                f1632a.put(str, clsLoadClass);
            }
            Fragment fragment = (Fragment) clsLoadClass.getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.g(bundle);
            }
            return fragment;
        } catch (ClassNotFoundException e2) {
            throw new b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (IllegalAccessException e3) {
            throw new b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e3);
        } catch (InstantiationException e4) {
            throw new b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e4);
        } catch (NoSuchMethodException e5) {
            throw new b("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e5);
        } catch (InvocationTargetException e6) {
            throw new b("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e6);
        }
    }

    static boolean a(Context context, String str) {
        try {
            Class<?> clsLoadClass = f1632a.get(str);
            if (clsLoadClass == null) {
                clsLoadClass = context.getClassLoader().loadClass(str);
                f1632a.put(str, clsLoadClass);
            }
            return Fragment.class.isAssignableFrom(clsLoadClass);
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    final void f(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.m;
        if (sparseArray != null) {
            this.T.restoreHierarchyState(sparseArray);
            this.m = null;
        }
        this.Q = false;
        k(bundle);
        if (!this.Q) {
            throw new p("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
        if (this.S != null) {
            this.ad.a(g.a.ON_CREATE);
        }
    }

    final void a(int i, Fragment fragment) {
        this.o = i;
        if (fragment != null) {
            this.p = fragment.p + ":" + this.o;
            return;
        }
        this.p = "android:fragment:" + this.o;
    }

    final boolean l() {
        return this.A > 0;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        androidx.core.g.a.a(this, sb);
        if (this.o >= 0) {
            sb.append(" #");
            sb.append(this.o);
        }
        if (this.H != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.H));
        }
        if (this.J != null) {
            sb.append(" ");
            sb.append(this.J);
        }
        sb.append('}');
        return sb.toString();
    }

    public final String m() {
        return this.J;
    }

    public void g(Bundle bundle) {
        if (this.o >= 0 && k_()) {
            throw new IllegalStateException("Fragment already active and state has been saved");
        }
        this.q = bundle;
    }

    public final Bundle n() {
        return this.q;
    }

    public final boolean k_() {
        h hVar = this.B;
        if (hVar == null) {
            return false;
        }
        return hVar.g();
    }

    public void a(SavedState savedState) {
        if (this.o >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.l = (savedState == null || savedState.f1636a == null) ? null : savedState.f1636a;
    }

    public Context p() {
        f fVar = this.C;
        if (fVar == null) {
            return null;
        }
        return fVar.g();
    }

    public final Context q() {
        Context contextP = p();
        if (contextP != null) {
            return contextP;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final androidx.fragment.app.c r() {
        f fVar = this.C;
        if (fVar == null) {
            return null;
        }
        return (androidx.fragment.app.c) fVar.f();
    }

    public final Resources s() {
        return q().getResources();
    }

    public final String a(int i) {
        return s().getString(i);
    }

    public final String a(int i, Object... objArr) {
        return s().getString(i, objArr);
    }

    public final g t() {
        return this.B;
    }

    public final g u() {
        if (this.D == null) {
            U();
            int i = this.k;
            if (i >= 4) {
                this.D.t();
            } else if (i >= 3) {
                this.D.s();
            } else if (i >= 2) {
                this.D.r();
            } else if (i >= 1) {
                this.D.q();
            }
        }
        return this.D;
    }

    g v() {
        return this.D;
    }

    public final Fragment w() {
        return this.G;
    }

    public final boolean x() {
        return this.C != null && this.u;
    }

    public final boolean y() {
        return this.v;
    }

    public final boolean z() {
        return this.k >= 4;
    }

    public final boolean A() {
        View view;
        return (!x() || B() || (view = this.S) == null || view.getWindowToken() == null || this.S.getVisibility() != 0) ? false : true;
    }

    public final boolean B() {
        return this.K;
    }

    public void e(boolean z) {
        this.M = z;
    }

    public final boolean C() {
        return this.M;
    }

    public void f(boolean z) {
        if (this.P != z) {
            this.P = z;
            if (this.O && x() && !B()) {
                this.C.c();
            }
        }
    }

    public void g(boolean z) {
        if (!this.V && z && this.k < 3 && this.B != null && x() && this.ab) {
            this.B.b(this);
        }
        this.V = z;
        this.U = this.k < 3 && !z;
        if (this.l != null) {
            this.n = Boolean.valueOf(z);
        }
    }

    @Deprecated
    public androidx.f.a.a D() {
        return androidx.f.a.a.a(this);
    }

    public void a(Intent intent) {
        a(intent, (Bundle) null);
    }

    public void a(Intent intent, Bundle bundle) {
        f fVar = this.C;
        if (fVar == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        fVar.a(this, intent, -1, bundle);
    }

    public void startActivityForResult(Intent intent, int i) {
        a(intent, i, (Bundle) null);
    }

    public void a(Intent intent, int i, Bundle bundle) {
        f fVar = this.C;
        if (fVar == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        fVar.a(this, intent, i, bundle);
    }

    public void a(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        f fVar = this.C;
        if (fVar == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        fVar.a(this, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public LayoutInflater c(Bundle bundle) {
        return i(bundle);
    }

    LayoutInflater h(Bundle bundle) {
        LayoutInflater layoutInflaterC = c(bundle);
        this.aa = layoutInflaterC;
        return layoutInflaterC;
    }

    @Deprecated
    public LayoutInflater i(Bundle bundle) {
        f fVar = this.C;
        if (fVar == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        LayoutInflater layoutInflaterB = fVar.b();
        u();
        androidx.core.h.e.a(layoutInflaterB, this.D.A());
        return layoutInflaterB;
    }

    public void a(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.Q = true;
        f fVar = this.C;
        Activity activityF = fVar == null ? null : fVar.f();
        if (activityF != null) {
            this.Q = false;
            a(activityF, attributeSet, bundle);
        }
    }

    @Deprecated
    public void a(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.Q = true;
    }

    public void a(Context context) {
        this.Q = true;
        f fVar = this.C;
        Activity activityF = fVar == null ? null : fVar.f();
        if (activityF != null) {
            this.Q = false;
            a(activityF);
        }
    }

    @Deprecated
    public void a(Activity activity) {
        this.Q = true;
    }

    public void b(Bundle bundle) {
        this.Q = true;
        j(bundle);
        h hVar = this.D;
        if (hVar == null || hVar.b(1)) {
            return;
        }
        this.D.q();
    }

    void j(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        if (this.D == null) {
            U();
        }
        this.D.a(parcelable, this.E);
        this.E = null;
        this.D.q();
    }

    public View E() {
        return this.S;
    }

    public void d(Bundle bundle) {
        this.Q = true;
    }

    public void k(Bundle bundle) {
        this.Q = true;
    }

    public void h() {
        this.Q = true;
    }

    public void F() {
        this.Q = true;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.Q = true;
    }

    public void G() {
        this.Q = true;
    }

    public void i() {
        this.Q = true;
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.Q = true;
    }

    public void j() {
        this.Q = true;
    }

    public void H() {
        this.Q = true;
        androidx.fragment.app.c cVarR = r();
        boolean z = cVarR != null && cVarR.isChangingConfigurations();
        x xVar = this.F;
        if (xVar == null || z) {
            return;
        }
        xVar.a();
    }

    void I() {
        this.o = -1;
        this.p = null;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = false;
        this.A = 0;
        this.B = null;
        this.D = null;
        this.C = null;
        this.H = 0;
        this.I = 0;
        this.J = null;
        this.K = false;
        this.L = false;
        this.N = false;
    }

    public void f() {
        this.Q = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        r().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public Object K() {
        a aVar = this.W;
        if (aVar == null) {
            return null;
        }
        return aVar.g;
    }

    public Object L() {
        a aVar = this.W;
        if (aVar == null) {
            return null;
        }
        return aVar.h == j ? K() : this.W.h;
    }

    public Object M() {
        a aVar = this.W;
        if (aVar == null) {
            return null;
        }
        return aVar.i;
    }

    public Object N() {
        a aVar = this.W;
        if (aVar == null) {
            return null;
        }
        return aVar.j == j ? M() : this.W.j;
    }

    public Object O() {
        a aVar = this.W;
        if (aVar == null) {
            return null;
        }
        return aVar.k;
    }

    public Object P() {
        a aVar = this.W;
        if (aVar == null) {
            return null;
        }
        return aVar.l == j ? O() : this.W.l;
    }

    public boolean Q() {
        a aVar = this.W;
        if (aVar == null || aVar.n == null) {
            return true;
        }
        return this.W.n.booleanValue();
    }

    public boolean R() {
        a aVar = this.W;
        if (aVar == null || aVar.m == null) {
            return true;
        }
        return this.W.m.booleanValue();
    }

    public void S() {
        h hVar = this.B;
        if (hVar == null || hVar.m == null) {
            a().q = false;
        } else if (Looper.myLooper() != this.B.m.h().getLooper()) {
            this.B.m.h().postAtFrontOfQueue(new Runnable() { // from class: androidx.fragment.app.Fragment.1
                @Override // java.lang.Runnable
                public void run() {
                    Fragment.this.T();
                }
            });
        } else {
            T();
        }
    }

    void T() {
        a aVar = this.W;
        c cVar = null;
        if (aVar != null) {
            aVar.q = false;
            c cVar2 = this.W.r;
            this.W.r = null;
            cVar = cVar2;
        }
        if (cVar != null) {
            cVar.a();
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.H));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.I));
        printWriter.print(" mTag=");
        printWriter.println(this.J);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.k);
        printWriter.print(" mIndex=");
        printWriter.print(this.o);
        printWriter.print(" mWho=");
        printWriter.print(this.p);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.A);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.u);
        printWriter.print(" mRemoving=");
        printWriter.print(this.v);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.w);
        printWriter.print(" mInLayout=");
        printWriter.println(this.x);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.K);
        printWriter.print(" mDetached=");
        printWriter.print(this.L);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.P);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.O);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.M);
        printWriter.print(" mRetaining=");
        printWriter.print(this.N);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.V);
        if (this.B != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.B);
        }
        if (this.C != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.C);
        }
        if (this.G != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.G);
        }
        if (this.q != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.q);
        }
        if (this.l != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.l);
        }
        if (this.m != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.m);
        }
        if (this.r != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(this.r);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.t);
        }
        if (ae() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(ae());
        }
        if (this.R != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.R);
        }
        if (this.S != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.S);
        }
        if (this.T != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.S);
        }
        if (aj() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(aj());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(al());
        }
        if (p() != null) {
            androidx.f.a.a.a(this).a(str, fileDescriptor, printWriter, strArr);
        }
        if (this.D != null) {
            printWriter.print(str);
            printWriter.println("Child " + this.D + ":");
            this.D.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }

    Fragment a(String str) {
        if (str.equals(this.p)) {
            return this;
        }
        h hVar = this.D;
        if (hVar != null) {
            return hVar.b(str);
        }
        return null;
    }

    void U() {
        if (this.C == null) {
            throw new IllegalStateException("Fragment has not been attached yet.");
        }
        h hVar = new h();
        this.D = hVar;
        hVar.a(this.C, new d() { // from class: androidx.fragment.app.Fragment.2
            @Override // androidx.fragment.app.d
            public View a(int i) {
                if (Fragment.this.S == null) {
                    throw new IllegalStateException("Fragment does not have a view");
                }
                return Fragment.this.S.findViewById(i);
            }

            @Override // androidx.fragment.app.d
            public boolean a() {
                return Fragment.this.S != null;
            }

            @Override // androidx.fragment.app.d
            public Fragment a(Context context, String str, Bundle bundle) {
                return Fragment.this.C.a(context, str, bundle);
            }
        }, this);
    }

    void l(Bundle bundle) {
        h hVar = this.D;
        if (hVar != null) {
            hVar.p();
        }
        this.k = 1;
        this.Q = false;
        b(bundle);
        this.ab = true;
        if (!this.Q) {
            throw new p("Fragment " + this + " did not call through to super.onCreate()");
        }
        this.ac.a(g.a.ON_CREATE);
    }

    void b(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        h hVar = this.D;
        if (hVar != null) {
            hVar.p();
        }
        this.z = true;
        this.ae = new androidx.lifecycle.j() { // from class: androidx.fragment.app.Fragment.3
            @Override // androidx.lifecycle.j
            public androidx.lifecycle.g g() {
                if (Fragment.this.ad == null) {
                    Fragment fragment = Fragment.this;
                    fragment.ad = new androidx.lifecycle.k(fragment.ae);
                }
                return Fragment.this.ad;
            }
        };
        this.ad = null;
        View viewA = a(layoutInflater, viewGroup, bundle);
        this.S = viewA;
        if (viewA != null) {
            this.ae.g();
            this.af.b(this.ae);
        } else {
            if (this.ad != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.ae = null;
        }
    }

    void m(Bundle bundle) {
        h hVar = this.D;
        if (hVar != null) {
            hVar.p();
        }
        this.k = 2;
        this.Q = false;
        d(bundle);
        if (!this.Q) {
            throw new p("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
        h hVar2 = this.D;
        if (hVar2 != null) {
            hVar2.r();
        }
    }

    void V() {
        h hVar = this.D;
        if (hVar != null) {
            hVar.p();
            this.D.j();
        }
        this.k = 3;
        this.Q = false;
        h();
        if (!this.Q) {
            throw new p("Fragment " + this + " did not call through to super.onStart()");
        }
        h hVar2 = this.D;
        if (hVar2 != null) {
            hVar2.s();
        }
        this.ac.a(g.a.ON_START);
        if (this.S != null) {
            this.ad.a(g.a.ON_START);
        }
    }

    void W() {
        h hVar = this.D;
        if (hVar != null) {
            hVar.p();
            this.D.j();
        }
        this.k = 4;
        this.Q = false;
        F();
        if (!this.Q) {
            throw new p("Fragment " + this + " did not call through to super.onResume()");
        }
        h hVar2 = this.D;
        if (hVar2 != null) {
            hVar2.t();
            this.D.j();
        }
        this.ac.a(g.a.ON_RESUME);
        if (this.S != null) {
            this.ad.a(g.a.ON_RESUME);
        }
    }

    void X() {
        h hVar = this.D;
        if (hVar != null) {
            hVar.p();
        }
    }

    void j(boolean z) {
        h(z);
        h hVar = this.D;
        if (hVar != null) {
            hVar.a(z);
        }
    }

    void k(boolean z) {
        i(z);
        h hVar = this.D;
        if (hVar != null) {
            hVar.b(z);
        }
    }

    void a(Configuration configuration) {
        onConfigurationChanged(configuration);
        h hVar = this.D;
        if (hVar != null) {
            hVar.a(configuration);
        }
    }

    void Y() {
        onLowMemory();
        h hVar = this.D;
        if (hVar != null) {
            hVar.y();
        }
    }

    boolean b(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.K) {
            return false;
        }
        if (this.O && this.P) {
            a(menu, menuInflater);
            z = true;
        }
        h hVar = this.D;
        return hVar != null ? z | hVar.a(menu, menuInflater) : z;
    }

    boolean c(Menu menu) {
        boolean z = false;
        if (this.K) {
            return false;
        }
        if (this.O && this.P) {
            a(menu);
            z = true;
        }
        h hVar = this.D;
        return hVar != null ? z | hVar.a(menu) : z;
    }

    boolean c(MenuItem menuItem) {
        if (this.K) {
            return false;
        }
        if (this.O && this.P && a(menuItem)) {
            return true;
        }
        h hVar = this.D;
        return hVar != null && hVar.a(menuItem);
    }

    boolean d(MenuItem menuItem) {
        if (this.K) {
            return false;
        }
        if (b(menuItem)) {
            return true;
        }
        h hVar = this.D;
        return hVar != null && hVar.b(menuItem);
    }

    void d(Menu menu) {
        if (this.K) {
            return;
        }
        if (this.O && this.P) {
            b(menu);
        }
        h hVar = this.D;
        if (hVar != null) {
            hVar.b(menu);
        }
    }

    void n(Bundle bundle) {
        Parcelable parcelableO;
        e(bundle);
        h hVar = this.D;
        if (hVar == null || (parcelableO = hVar.o()) == null) {
            return;
        }
        bundle.putParcelable("android:support:fragments", parcelableO);
    }

    void Z() {
        if (this.S != null) {
            this.ad.a(g.a.ON_PAUSE);
        }
        this.ac.a(g.a.ON_PAUSE);
        h hVar = this.D;
        if (hVar != null) {
            hVar.u();
        }
        this.k = 3;
        this.Q = false;
        G();
        if (this.Q) {
            return;
        }
        throw new p("Fragment " + this + " did not call through to super.onPause()");
    }

    void aa() {
        if (this.S != null) {
            this.ad.a(g.a.ON_STOP);
        }
        this.ac.a(g.a.ON_STOP);
        h hVar = this.D;
        if (hVar != null) {
            hVar.v();
        }
        this.k = 2;
        this.Q = false;
        i();
        if (this.Q) {
            return;
        }
        throw new p("Fragment " + this + " did not call through to super.onStop()");
    }

    void ab() {
        if (this.S != null) {
            this.ad.a(g.a.ON_DESTROY);
        }
        h hVar = this.D;
        if (hVar != null) {
            hVar.w();
        }
        this.k = 1;
        this.Q = false;
        j();
        if (!this.Q) {
            throw new p("Fragment " + this + " did not call through to super.onDestroyView()");
        }
        androidx.f.a.a.a(this).a();
        this.z = false;
    }

    void ac() {
        this.ac.a(g.a.ON_DESTROY);
        h hVar = this.D;
        if (hVar != null) {
            hVar.x();
        }
        this.k = 0;
        this.Q = false;
        this.ab = false;
        H();
        if (!this.Q) {
            throw new p("Fragment " + this + " did not call through to super.onDestroy()");
        }
        this.D = null;
    }

    void ad() {
        this.Q = false;
        f();
        this.aa = null;
        if (!this.Q) {
            throw new p("Fragment " + this + " did not call through to super.onDetach()");
        }
        h hVar = this.D;
        if (hVar != null) {
            if (!this.N) {
                throw new IllegalStateException("Child FragmentManager of " + this + " was not  destroyed and this fragment is not retaining instance");
            }
            hVar.x();
            this.D = null;
        }
    }

    void a(c cVar) {
        a();
        if (cVar == this.W.r) {
            return;
        }
        if (cVar != null && this.W.r != null) {
            throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (this.W.q) {
            this.W.r = cVar;
        }
        if (cVar != null) {
            cVar.b();
        }
    }

    private a a() {
        if (this.W == null) {
            this.W = new a();
        }
        return this.W;
    }

    int ae() {
        a aVar = this.W;
        if (aVar == null) {
            return 0;
        }
        return aVar.f1640d;
    }

    void b(int i) {
        if (this.W == null && i == 0) {
            return;
        }
        a().f1640d = i;
    }

    int af() {
        a aVar = this.W;
        if (aVar == null) {
            return 0;
        }
        return aVar.f1641e;
    }

    void b(int i, int i2) {
        if (this.W == null && i == 0 && i2 == 0) {
            return;
        }
        a();
        this.W.f1641e = i;
        this.W.f = i2;
    }

    int ag() {
        a aVar = this.W;
        if (aVar == null) {
            return 0;
        }
        return aVar.f;
    }

    androidx.core.app.n ah() {
        a aVar = this.W;
        if (aVar == null) {
            return null;
        }
        return aVar.o;
    }

    androidx.core.app.n ai() {
        a aVar = this.W;
        if (aVar == null) {
            return null;
        }
        return aVar.p;
    }

    View aj() {
        a aVar = this.W;
        if (aVar == null) {
            return null;
        }
        return aVar.f1637a;
    }

    void a(View view) {
        a().f1637a = view;
    }

    void a(Animator animator) {
        a().f1638b = animator;
    }

    Animator ak() {
        a aVar = this.W;
        if (aVar == null) {
            return null;
        }
        return aVar.f1638b;
    }

    int al() {
        a aVar = this.W;
        if (aVar == null) {
            return 0;
        }
        return aVar.f1639c;
    }

    void c(int i) {
        a().f1639c = i;
    }

    boolean am() {
        a aVar = this.W;
        if (aVar == null) {
            return false;
        }
        return aVar.q;
    }

    boolean an() {
        a aVar = this.W;
        if (aVar == null) {
            return false;
        }
        return aVar.s;
    }

    void l(boolean z) {
        a().s = z;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f1637a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Animator f1638b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1639c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1640d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1641e;
        int f;
        Boolean m;
        Boolean n;
        boolean q;
        c r;
        boolean s;
        Object g = null;
        Object h = Fragment.j;
        Object i = null;
        Object j = Fragment.j;
        Object k = null;
        Object l = Fragment.j;
        androidx.core.app.n o = null;
        androidx.core.app.n p = null;

        a() {
        }
    }
}
