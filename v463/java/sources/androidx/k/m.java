package androidx.k;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class m implements Cloneable {
    private b H;
    private androidx.c.a<String, String> I;
    p g;
    private ArrayList<s> y;
    private ArrayList<s> z;
    private static final int[] h = {2, 1, 3, 4};
    private static final g i = new g() { // from class: androidx.k.m.1
        @Override // androidx.k.g
        public Path a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    };
    private static ThreadLocal<androidx.c.a<Animator, a>> A = new ThreadLocal<>();
    private String j = getClass().getName();
    private long k = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f2004a = -1;
    private TimeInterpolator l = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<Integer> f2005b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ArrayList<View> f2006c = new ArrayList<>();
    private ArrayList<String> m = null;
    private ArrayList<Class> n = null;
    private ArrayList<Integer> o = null;
    private ArrayList<View> p = null;
    private ArrayList<Class> q = null;
    private ArrayList<String> r = null;
    private ArrayList<Integer> s = null;
    private ArrayList<View> t = null;
    private ArrayList<Class> u = null;
    private t v = new t();
    private t w = new t();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    q f2007d = null;
    private int[] x = h;
    private ViewGroup B = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f2008e = false;
    ArrayList<Animator> f = new ArrayList<>();
    private int C = 0;
    private boolean D = false;
    private boolean E = false;
    private ArrayList<c> F = null;
    private ArrayList<Animator> G = new ArrayList<>();
    private g J = i;

    public static abstract class b {
    }

    public interface c {
        void a(m mVar);

        void b(m mVar);

        void c(m mVar);

        void d(m mVar);
    }

    public Animator a(ViewGroup viewGroup, s sVar, s sVar2) {
        return null;
    }

    public abstract void a(s sVar);

    public String[] a() {
        return null;
    }

    public abstract void b(s sVar);

    public m a(long j) {
        this.f2004a = j;
        return this;
    }

    public long b() {
        return this.f2004a;
    }

    public m b(long j) {
        this.k = j;
        return this;
    }

    public long c() {
        return this.k;
    }

    public m a(TimeInterpolator timeInterpolator) {
        this.l = timeInterpolator;
        return this;
    }

    public TimeInterpolator d() {
        return this.l;
    }

    private void a(androidx.c.a<View, s> aVar, androidx.c.a<View, s> aVar2) {
        s sVarRemove;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewB = aVar.b(size);
            if (viewB != null && a(viewB) && (sVarRemove = aVar2.remove(viewB)) != null && sVarRemove.f2031b != null && a(sVarRemove.f2031b)) {
                this.y.add(aVar.d(size));
                this.z.add(sVarRemove);
            }
        }
    }

    private void a(androidx.c.a<View, s> aVar, androidx.c.a<View, s> aVar2, androidx.c.d<View> dVar, androidx.c.d<View> dVar2) {
        View viewA;
        int iB = dVar.b();
        for (int i2 = 0; i2 < iB; i2++) {
            View viewC = dVar.c(i2);
            if (viewC != null && a(viewC) && (viewA = dVar2.a(dVar.b(i2))) != null && a(viewA)) {
                s sVar = aVar.get(viewC);
                s sVar2 = aVar2.get(viewA);
                if (sVar != null && sVar2 != null) {
                    this.y.add(sVar);
                    this.z.add(sVar2);
                    aVar.remove(viewC);
                    aVar2.remove(viewA);
                }
            }
        }
    }

    private void a(androidx.c.a<View, s> aVar, androidx.c.a<View, s> aVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            View viewValueAt = sparseArray.valueAt(i2);
            if (viewValueAt != null && a(viewValueAt) && (view = sparseArray2.get(sparseArray.keyAt(i2))) != null && a(view)) {
                s sVar = aVar.get(viewValueAt);
                s sVar2 = aVar2.get(view);
                if (sVar != null && sVar2 != null) {
                    this.y.add(sVar);
                    this.z.add(sVar2);
                    aVar.remove(viewValueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void a(androidx.c.a<View, s> aVar, androidx.c.a<View, s> aVar2, androidx.c.a<String, View> aVar3, androidx.c.a<String, View> aVar4) {
        View view;
        int size = aVar3.size();
        for (int i2 = 0; i2 < size; i2++) {
            View viewC = aVar3.c(i2);
            if (viewC != null && a(viewC) && (view = aVar4.get(aVar3.b(i2))) != null && a(view)) {
                s sVar = aVar.get(viewC);
                s sVar2 = aVar2.get(view);
                if (sVar != null && sVar2 != null) {
                    this.y.add(sVar);
                    this.z.add(sVar2);
                    aVar.remove(viewC);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void b(androidx.c.a<View, s> aVar, androidx.c.a<View, s> aVar2) {
        for (int i2 = 0; i2 < aVar.size(); i2++) {
            s sVarC = aVar.c(i2);
            if (a(sVarC.f2031b)) {
                this.y.add(sVarC);
                this.z.add(null);
            }
        }
        for (int i3 = 0; i3 < aVar2.size(); i3++) {
            s sVarC2 = aVar2.c(i3);
            if (a(sVarC2.f2031b)) {
                this.z.add(sVarC2);
                this.y.add(null);
            }
        }
    }

    private void a(t tVar, t tVar2) {
        androidx.c.a<View, s> aVar = new androidx.c.a<>(tVar.f2033a);
        androidx.c.a<View, s> aVar2 = new androidx.c.a<>(tVar2.f2033a);
        int i2 = 0;
        while (true) {
            int[] iArr = this.x;
            if (i2 < iArr.length) {
                int i3 = iArr[i2];
                if (i3 == 1) {
                    a(aVar, aVar2);
                } else if (i3 == 2) {
                    a(aVar, aVar2, tVar.f2036d, tVar2.f2036d);
                } else if (i3 == 3) {
                    a(aVar, aVar2, tVar.f2034b, tVar2.f2034b);
                } else if (i3 == 4) {
                    a(aVar, aVar2, tVar.f2035c, tVar2.f2035c);
                }
                i2++;
            } else {
                b(aVar, aVar2);
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void a(android.view.ViewGroup r21, androidx.k.t r22, androidx.k.t r23, java.util.ArrayList<androidx.k.s> r24, java.util.ArrayList<androidx.k.s> r25) {
        /*
            Method dump skipped, instruction units count: 346
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.k.m.a(android.view.ViewGroup, androidx.k.t, androidx.k.t, java.util.ArrayList, java.util.ArrayList):void");
    }

    boolean a(View view) {
        ArrayList<Class> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.o;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.p;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class> arrayList5 = this.q;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.q.get(i2).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.r != null && androidx.core.h.r.m(view) != null && this.r.contains(androidx.core.h.r.m(view))) {
            return false;
        }
        if ((this.f2005b.size() == 0 && this.f2006c.size() == 0 && (((arrayList = this.n) == null || arrayList.isEmpty()) && ((arrayList2 = this.m) == null || arrayList2.isEmpty()))) || this.f2005b.contains(Integer.valueOf(id)) || this.f2006c.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.m;
        if (arrayList6 != null && arrayList6.contains(androidx.core.h.r.m(view))) {
            return true;
        }
        if (this.n != null) {
            for (int i3 = 0; i3 < this.n.size(); i3++) {
                if (this.n.get(i3).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static androidx.c.a<Animator, a> q() {
        androidx.c.a<Animator, a> aVar = A.get();
        if (aVar != null) {
            return aVar;
        }
        androidx.c.a<Animator, a> aVar2 = new androidx.c.a<>();
        A.set(aVar2);
        return aVar2;
    }

    protected void e() {
        j();
        androidx.c.a<Animator, a> aVarQ = q();
        for (Animator animator : this.G) {
            if (aVarQ.containsKey(animator)) {
                j();
                a(animator, aVarQ);
            }
        }
        this.G.clear();
        k();
    }

    private void a(Animator animator, final androidx.c.a<Animator, a> aVar) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.k.m.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    m.this.f.add(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    aVar.remove(animator2);
                    m.this.f.remove(animator2);
                }
            });
            a(animator);
        }
    }

    public m b(View view) {
        this.f2006c.add(view);
        return this;
    }

    public m c(View view) {
        this.f2006c.remove(view);
        return this;
    }

    public List<Integer> f() {
        return this.f2005b;
    }

    public List<View> g() {
        return this.f2006c;
    }

    public List<String> h() {
        return this.m;
    }

    public List<Class> i() {
        return this.n;
    }

    void a(ViewGroup viewGroup, boolean z) {
        ArrayList<String> arrayList;
        ArrayList<Class> arrayList2;
        androidx.c.a<String, String> aVar;
        a(z);
        if ((this.f2005b.size() > 0 || this.f2006c.size() > 0) && (((arrayList = this.m) == null || arrayList.isEmpty()) && ((arrayList2 = this.n) == null || arrayList2.isEmpty()))) {
            for (int i2 = 0; i2 < this.f2005b.size(); i2++) {
                View viewFindViewById = viewGroup.findViewById(this.f2005b.get(i2).intValue());
                if (viewFindViewById != null) {
                    s sVar = new s();
                    sVar.f2031b = viewFindViewById;
                    if (z) {
                        a(sVar);
                    } else {
                        b(sVar);
                    }
                    sVar.f2032c.add(this);
                    c(sVar);
                    if (z) {
                        a(this.v, viewFindViewById, sVar);
                    } else {
                        a(this.w, viewFindViewById, sVar);
                    }
                }
            }
            for (int i3 = 0; i3 < this.f2006c.size(); i3++) {
                View view = this.f2006c.get(i3);
                s sVar2 = new s();
                sVar2.f2031b = view;
                if (z) {
                    a(sVar2);
                } else {
                    b(sVar2);
                }
                sVar2.f2032c.add(this);
                c(sVar2);
                if (z) {
                    a(this.v, view, sVar2);
                } else {
                    a(this.w, view, sVar2);
                }
            }
        } else {
            c(viewGroup, z);
        }
        if (z || (aVar = this.I) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            arrayList3.add(this.v.f2036d.remove(this.I.b(i4)));
        }
        for (int i5 = 0; i5 < size; i5++) {
            View view2 = (View) arrayList3.get(i5);
            if (view2 != null) {
                this.v.f2036d.put(this.I.c(i5), view2);
            }
        }
    }

    private static void a(t tVar, View view, s sVar) {
        tVar.f2033a.put(view, sVar);
        int id = view.getId();
        if (id >= 0) {
            if (tVar.f2034b.indexOfKey(id) >= 0) {
                tVar.f2034b.put(id, null);
            } else {
                tVar.f2034b.put(id, view);
            }
        }
        String strM = androidx.core.h.r.m(view);
        if (strM != null) {
            if (tVar.f2036d.containsKey(strM)) {
                tVar.f2036d.put(strM, null);
            } else {
                tVar.f2036d.put(strM, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (tVar.f2035c.c(itemIdAtPosition) >= 0) {
                    View viewA = tVar.f2035c.a(itemIdAtPosition);
                    if (viewA != null) {
                        androidx.core.h.r.a(viewA, false);
                        tVar.f2035c.b(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                androidx.core.h.r.a(view, true);
                tVar.f2035c.b(itemIdAtPosition, view);
            }
        }
    }

    void a(boolean z) {
        if (z) {
            this.v.f2033a.clear();
            this.v.f2034b.clear();
            this.v.f2035c.c();
        } else {
            this.w.f2033a.clear();
            this.w.f2034b.clear();
            this.w.f2035c.c();
        }
    }

    private void c(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.o;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.p;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class> arrayList3 = this.q;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (this.q.get(i2).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    s sVar = new s();
                    sVar.f2031b = view;
                    if (z) {
                        a(sVar);
                    } else {
                        b(sVar);
                    }
                    sVar.f2032c.add(this);
                    c(sVar);
                    if (z) {
                        a(this.v, view, sVar);
                    } else {
                        a(this.w, view, sVar);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.s;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.t;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class> arrayList6 = this.u;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i3 = 0; i3 < size2; i3++) {
                                    if (this.u.get(i3).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                                c(viewGroup.getChildAt(i4), z);
                            }
                        }
                    }
                }
            }
        }
    }

    public s a(View view, boolean z) {
        q qVar = this.f2007d;
        if (qVar != null) {
            return qVar.a(view, z);
        }
        return (z ? this.v : this.w).f2033a.get(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
    
        if (r3 < 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
    
        if (r8 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        r7 = r6.z;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
    
        r7 = r6.y;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003e, code lost:
    
        return r7.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.k.s b(android.view.View r7, boolean r8) {
        /*
            r6 = this;
            androidx.k.q r0 = r6.f2007d
            if (r0 == 0) goto L9
            androidx.k.s r7 = r0.b(r7, r8)
            return r7
        L9:
            if (r8 == 0) goto Le
            java.util.ArrayList<androidx.k.s> r0 = r6.y
            goto L10
        Le:
            java.util.ArrayList<androidx.k.s> r0 = r6.z
        L10:
            r1 = 0
            if (r0 != 0) goto L14
            return r1
        L14:
            int r2 = r0.size()
            r3 = -1
            r4 = 0
        L1a:
            if (r4 >= r2) goto L2e
            java.lang.Object r5 = r0.get(r4)
            androidx.k.s r5 = (androidx.k.s) r5
            if (r5 != 0) goto L25
            return r1
        L25:
            android.view.View r5 = r5.f2031b
            if (r5 != r7) goto L2b
            r3 = r4
            goto L2e
        L2b:
            int r4 = r4 + 1
            goto L1a
        L2e:
            if (r3 < 0) goto L3e
            if (r8 == 0) goto L35
            java.util.ArrayList<androidx.k.s> r7 = r6.z
            goto L37
        L35:
            java.util.ArrayList<androidx.k.s> r7 = r6.y
        L37:
            java.lang.Object r7 = r7.get(r3)
            r1 = r7
            androidx.k.s r1 = (androidx.k.s) r1
        L3e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.k.m.b(android.view.View, boolean):androidx.k.s");
    }

    public void d(View view) {
        if (this.E) {
            return;
        }
        androidx.c.a<Animator, a> aVarQ = q();
        int size = aVarQ.size();
        al alVarB = ad.b(view);
        for (int i2 = size - 1; i2 >= 0; i2--) {
            a aVarC = aVarQ.c(i2);
            if (aVarC.f2012a != null && alVarB.equals(aVarC.f2015d)) {
                androidx.k.a.a(aVarQ.b(i2));
            }
        }
        ArrayList<c> arrayList = this.F;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.F.clone();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((c) arrayList2.get(i3)).b(this);
            }
        }
        this.D = true;
    }

    public void e(View view) {
        if (this.D) {
            if (!this.E) {
                androidx.c.a<Animator, a> aVarQ = q();
                int size = aVarQ.size();
                al alVarB = ad.b(view);
                for (int i2 = size - 1; i2 >= 0; i2--) {
                    a aVarC = aVarQ.c(i2);
                    if (aVarC.f2012a != null && alVarB.equals(aVarC.f2015d)) {
                        androidx.k.a.b(aVarQ.b(i2));
                    }
                }
                ArrayList<c> arrayList = this.F;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.F.clone();
                    int size2 = arrayList2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        ((c) arrayList2.get(i3)).c(this);
                    }
                }
            }
            this.D = false;
        }
    }

    void a(ViewGroup viewGroup) {
        a aVar;
        this.y = new ArrayList<>();
        this.z = new ArrayList<>();
        a(this.v, this.w);
        androidx.c.a<Animator, a> aVarQ = q();
        int size = aVarQ.size();
        al alVarB = ad.b(viewGroup);
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animator animatorB = aVarQ.b(i2);
            if (animatorB != null && (aVar = aVarQ.get(animatorB)) != null && aVar.f2012a != null && alVarB.equals(aVar.f2015d)) {
                s sVar = aVar.f2014c;
                View view = aVar.f2012a;
                s sVarA = a(view, true);
                s sVarB = b(view, true);
                if (!(sVarA == null && sVarB == null) && aVar.f2016e.a(sVar, sVarB)) {
                    if (animatorB.isRunning() || animatorB.isStarted()) {
                        animatorB.cancel();
                    } else {
                        aVarQ.remove(animatorB);
                    }
                }
            }
        }
        a(viewGroup, this.v, this.w, this.y, this.z);
        e();
    }

    public boolean a(s sVar, s sVar2) {
        if (sVar == null || sVar2 == null) {
            return false;
        }
        String[] strArrA = a();
        if (strArrA != null) {
            for (String str : strArrA) {
                if (!a(sVar, sVar2, str)) {
                }
            }
            return false;
        }
        Iterator<String> it = sVar.f2030a.keySet().iterator();
        while (it.hasNext()) {
            if (a(sVar, sVar2, it.next())) {
            }
        }
        return false;
        return true;
    }

    private static boolean a(s sVar, s sVar2, String str) {
        Object obj = sVar.f2030a.get(str);
        Object obj2 = sVar2.f2030a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    protected void a(Animator animator) {
        if (animator == null) {
            k();
            return;
        }
        if (b() >= 0) {
            animator.setDuration(b());
        }
        if (c() >= 0) {
            animator.setStartDelay(c());
        }
        if (d() != null) {
            animator.setInterpolator(d());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.k.m.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                m.this.k();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    protected void j() {
        if (this.C == 0) {
            ArrayList<c> arrayList = this.F;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.F.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((c) arrayList2.get(i2)).d(this);
                }
            }
            this.E = false;
        }
        this.C++;
    }

    protected void k() {
        int i2 = this.C - 1;
        this.C = i2;
        if (i2 == 0) {
            ArrayList<c> arrayList = this.F;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.F.clone();
                int size = arrayList2.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ((c) arrayList2.get(i3)).a(this);
                }
            }
            for (int i4 = 0; i4 < this.v.f2035c.b(); i4++) {
                View viewC = this.v.f2035c.c(i4);
                if (viewC != null) {
                    androidx.core.h.r.a(viewC, false);
                }
            }
            for (int i5 = 0; i5 < this.w.f2035c.b(); i5++) {
                View viewC2 = this.w.f2035c.c(i5);
                if (viewC2 != null) {
                    androidx.core.h.r.a(viewC2, false);
                }
            }
            this.E = true;
        }
    }

    public m a(c cVar) {
        if (this.F == null) {
            this.F = new ArrayList<>();
        }
        this.F.add(cVar);
        return this;
    }

    public m b(c cVar) {
        ArrayList<c> arrayList = this.F;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(cVar);
        if (this.F.size() == 0) {
            this.F = null;
        }
        return this;
    }

    public void a(g gVar) {
        if (gVar == null) {
            this.J = i;
        } else {
            this.J = gVar;
        }
    }

    public g l() {
        return this.J;
    }

    public void a(b bVar) {
        this.H = bVar;
    }

    public b m() {
        return this.H;
    }

    public void a(p pVar) {
        this.g = pVar;
    }

    public p n() {
        return this.g;
    }

    void c(s sVar) {
        String[] strArrA;
        if (this.g == null || sVar.f2030a.isEmpty() || (strArrA = this.g.a()) == null) {
            return;
        }
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= strArrA.length) {
                z = true;
                break;
            } else if (!sVar.f2030a.containsKey(strArrA[i2])) {
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            return;
        }
        this.g.a(sVar);
    }

    public String toString() {
        return a("");
    }

    @Override // 
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public m clone() {
        try {
            m mVar = (m) super.clone();
            mVar.G = new ArrayList<>();
            mVar.v = new t();
            mVar.w = new t();
            mVar.y = null;
            mVar.z = null;
            return mVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public String p() {
        return this.j;
    }

    String a(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f2004a != -1) {
            str2 = str2 + "dur(" + this.f2004a + ") ";
        }
        if (this.k != -1) {
            str2 = str2 + "dly(" + this.k + ") ";
        }
        if (this.l != null) {
            str2 = str2 + "interp(" + this.l + ") ";
        }
        if (this.f2005b.size() <= 0 && this.f2006c.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.f2005b.size() > 0) {
            for (int i2 = 0; i2 < this.f2005b.size(); i2++) {
                if (i2 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.f2005b.get(i2);
            }
        }
        if (this.f2006c.size() > 0) {
            for (int i3 = 0; i3 < this.f2006c.size(); i3++) {
                if (i3 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.f2006c.get(i3);
            }
        }
        return str3 + ")";
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f2012a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f2013b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        s f2014c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        al f2015d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        m f2016e;

        a(View view, String str, m mVar, al alVar, s sVar) {
            this.f2012a = view;
            this.f2013b = str;
            this.f2014c = sVar;
            this.f2015d = alVar;
            this.f2016e = mVar;
        }
    }
}
