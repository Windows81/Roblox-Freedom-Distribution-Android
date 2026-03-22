package androidx.databinding;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.b;
import androidx.databinding.b.a;
import androidx.lifecycle.g;
import androidx.lifecycle.r;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class ViewDataBinding extends androidx.databinding.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static int f1562a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f1563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f1564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f1565e;
    private static final a f;
    private static final a g;
    private static final a h;
    private static final b.a<i, ViewDataBinding, Void> i;
    private static final ReferenceQueue<ViewDataBinding> j;
    private static final View.OnAttachStateChangeListener k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final e f1566b;
    private final Runnable l;
    private boolean m;
    private boolean n;
    private d[] o;
    private final View p;
    private androidx.databinding.b<i, ViewDataBinding, Void> q;
    private boolean r;
    private Choreographer s;
    private final Choreographer.FrameCallback t;
    private Handler u;
    private ViewDataBinding v;
    private androidx.lifecycle.j w;

    private interface a {
    }

    protected static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[][] f1570a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[][] f1571b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[][] f1572c;
    }

    private interface c<T> {
        void a(T t);
    }

    protected abstract void b();

    public abstract boolean c();

    static {
        int i2 = Build.VERSION.SDK_INT;
        f1562a = i2;
        f1563c = 8;
        f1564d = i2 >= 16;
        f1565e = new a() { // from class: androidx.databinding.ViewDataBinding.1
        };
        f = new a() { // from class: androidx.databinding.ViewDataBinding.2
        };
        g = new a() { // from class: androidx.databinding.ViewDataBinding.3
        };
        h = new a() { // from class: androidx.databinding.ViewDataBinding.4
        };
        i = new b.a<i, ViewDataBinding, Void>() { // from class: androidx.databinding.ViewDataBinding.5
            @Override // androidx.databinding.b.a
            public void a(i iVar, ViewDataBinding viewDataBinding, int i3, Void r4) {
                if (i3 == 1) {
                    if (iVar.a(viewDataBinding)) {
                        return;
                    }
                    viewDataBinding.n = true;
                } else if (i3 == 2) {
                    iVar.b(viewDataBinding);
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    iVar.c(viewDataBinding);
                }
            }
        };
        j = new ReferenceQueue<>();
        if (Build.VERSION.SDK_INT < 19) {
            k = null;
        } else {
            k = new View.OnAttachStateChangeListener() { // from class: androidx.databinding.ViewDataBinding.6
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    ViewDataBinding.b(view).l.run();
                    view.removeOnAttachStateChangeListener(this);
                }
            };
        }
    }

    protected ViewDataBinding(e eVar, View view, int i2) {
        this.l = new Runnable() { // from class: androidx.databinding.ViewDataBinding.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    ViewDataBinding.this.m = false;
                }
                ViewDataBinding.i();
                if (Build.VERSION.SDK_INT >= 19 && !ViewDataBinding.this.p.isAttachedToWindow()) {
                    ViewDataBinding.this.p.removeOnAttachStateChangeListener(ViewDataBinding.k);
                    ViewDataBinding.this.p.addOnAttachStateChangeListener(ViewDataBinding.k);
                } else {
                    ViewDataBinding.this.a();
                }
            }
        };
        this.m = false;
        this.n = false;
        this.f1566b = eVar;
        this.o = new d[i2];
        this.p = view;
        if (Looper.myLooper() == null) {
            throw new IllegalStateException("DataBinding must be created in view's UI Thread");
        }
        if (f1564d) {
            this.s = Choreographer.getInstance();
            this.t = new Choreographer.FrameCallback() { // from class: androidx.databinding.ViewDataBinding.8
                @Override // android.view.Choreographer.FrameCallback
                public void doFrame(long j2) {
                    ViewDataBinding.this.l.run();
                }
            };
        } else {
            this.t = null;
            this.u = new Handler(Looper.myLooper());
        }
    }

    protected ViewDataBinding(Object obj, View view, int i2) {
        this(a(obj), view, i2);
    }

    private static e a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof e)) {
            throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
        }
        return (e) obj;
    }

    protected void a(View view) {
        view.setTag(a.C0038a.dataBinding, this);
    }

    public void a() {
        ViewDataBinding viewDataBinding = this.v;
        if (viewDataBinding == null) {
            h();
        } else {
            viewDataBinding.a();
        }
    }

    private void h() {
        if (this.r) {
            e();
            return;
        }
        if (c()) {
            this.r = true;
            this.n = false;
            androidx.databinding.b<i, ViewDataBinding, Void> bVar = this.q;
            if (bVar != null) {
                bVar.a(this, 1, null);
                if (this.n) {
                    this.q.a(this, 2, null);
                }
            }
            if (!this.n) {
                b();
                androidx.databinding.b<i, ViewDataBinding, Void> bVar2 = this.q;
                if (bVar2 != null) {
                    bVar2.a(this, 3, null);
                }
            }
            this.r = false;
        }
    }

    static ViewDataBinding b(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(a.C0038a.dataBinding);
        }
        return null;
    }

    public View d() {
        return this.p;
    }

    protected void e() {
        ViewDataBinding viewDataBinding = this.v;
        if (viewDataBinding != null) {
            viewDataBinding.e();
            return;
        }
        androidx.lifecycle.j jVar = this.w;
        if (jVar == null || jVar.g().a().a(g.b.STARTED)) {
            synchronized (this) {
                if (this.m) {
                    return;
                }
                this.m = true;
                if (f1564d) {
                    this.s.postFrameCallback(this.t);
                } else {
                    this.u.post(this.l);
                }
            }
        }
    }

    protected void a(Class<?> cls) {
        if (this.f1566b != null) {
            return;
        }
        throw new IllegalStateException("Required DataBindingComponent is null in class " + getClass().getSimpleName() + ". A BindingAdapter in " + cls.getCanonicalName() + " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don't use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static.");
    }

    protected static Object[] a(e eVar, View view, int i2, b bVar, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i2];
        a(eVar, view, objArr, bVar, sparseIntArray, true);
        return objArr;
    }

    protected static int a(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return view.getContext().getColor(i2);
        }
        return view.getResources().getColor(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(androidx.databinding.e r16, android.view.View r17, java.lang.Object[] r18, androidx.databinding.ViewDataBinding.b r19, android.util.SparseIntArray r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.ViewDataBinding.a(androidx.databinding.e, android.view.View, java.lang.Object[], androidx.databinding.ViewDataBinding$b, android.util.SparseIntArray, boolean):void");
    }

    private static int a(String str, int i2, b bVar, int i3) {
        CharSequence charSequenceSubSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = bVar.f1570a[i3];
        int length = strArr.length;
        while (i2 < length) {
            if (TextUtils.equals(charSequenceSubSequence, strArr[i2])) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private static int a(ViewGroup viewGroup, int i2) {
        String str = (String) viewGroup.getChildAt(i2).getTag();
        String strSubstring = str.substring(0, str.length() - 1);
        int length = strSubstring.length();
        int childCount = viewGroup.getChildCount();
        for (int i3 = i2 + 1; i3 < childCount; i3++) {
            View childAt = viewGroup.getChildAt(i3);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            if (str2 != null && str2.startsWith(strSubstring)) {
                if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i2;
                }
                if (a(str2, length)) {
                    i2 = i3;
                }
            }
        }
        return i2;
    }

    private static boolean a(String str, int i2) {
        int length = str.length();
        if (length == i2) {
            return false;
        }
        while (i2 < length) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
            i2++;
        }
        return true;
    }

    private static int b(String str, int i2) {
        int iCharAt = 0;
        while (i2 < str.length()) {
            iCharAt = (iCharAt * 10) + (str.charAt(i2) - '0');
            i2++;
        }
        return iCharAt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i() {
        while (true) {
            Reference<? extends ViewDataBinding> referencePoll = j.poll();
            if (referencePoll == null) {
                return;
            }
            if (referencePoll instanceof d) {
                ((d) referencePoll).a();
            }
        }
    }

    private static class d<T> extends WeakReference<ViewDataBinding> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c<T> f1573a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private T f1574b;

        public boolean a() {
            boolean z;
            T t = this.f1574b;
            if (t != null) {
                this.f1573a.a(t);
                z = true;
            } else {
                z = false;
            }
            this.f1574b = null;
            return z;
        }
    }

    static class OnStartListener implements androidx.lifecycle.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final WeakReference<ViewDataBinding> f1569a;

        @r(a = g.a.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.f1569a.get();
            if (viewDataBinding != null) {
                viewDataBinding.a();
            }
        }
    }
}
