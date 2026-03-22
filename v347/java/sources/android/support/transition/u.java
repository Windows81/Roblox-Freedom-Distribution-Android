package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class u implements Cloneable {
    private static final int[] g = {2, 1, 3, 4};
    private static final l h = new l() { // from class: android.support.transition.u.1
        @Override // android.support.transition.l
        public Path a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    };
    private static ThreadLocal<android.support.v4.g.a<Animator, a>> z = new ThreadLocal<>();
    private b H;
    private android.support.v4.g.a<String, String> I;
    x f;
    private ArrayList<aa> x;
    private ArrayList<aa> y;
    private String i = getClass().getName();
    private long j = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f554a = -1;
    private TimeInterpolator k = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<Integer> f555b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ArrayList<View> f556c = new ArrayList<>();
    private ArrayList<String> l = null;
    private ArrayList<Class> m = null;
    private ArrayList<Integer> n = null;
    private ArrayList<View> o = null;
    private ArrayList<Class> p = null;
    private ArrayList<String> q = null;
    private ArrayList<Integer> r = null;
    private ArrayList<View> s = null;
    private ArrayList<Class> t = null;
    private ab u = new ab();
    private ab v = new ab();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    y f557d = null;
    private int[] w = g;
    private ViewGroup A = null;
    boolean e = false;
    private ArrayList<Animator> B = new ArrayList<>();
    private int C = 0;
    private boolean D = false;
    private boolean E = false;
    private ArrayList<c> F = null;
    private ArrayList<Animator> G = new ArrayList<>();
    private l J = h;

    public static abstract class b {
    }

    public interface c {
        void a(u uVar);

        void b(u uVar);

        void c(u uVar);

        void d(u uVar);
    }

    public abstract void a(aa aaVar);

    public abstract void b(aa aaVar);

    public u a(long j) {
        this.f554a = j;
        return this;
    }

    public long b() {
        return this.f554a;
    }

    public u b(long j) {
        this.j = j;
        return this;
    }

    public long c() {
        return this.j;
    }

    public TimeInterpolator d() {
        return this.k;
    }

    public String[] a() {
        return null;
    }

    public Animator a(ViewGroup viewGroup, aa aaVar, aa aaVar2) {
        return null;
    }

    private void a(android.support.v4.g.a<View, aa> aVar, android.support.v4.g.a<View, aa> aVar2) {
        aa aaVarRemove;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewB = aVar.b(size);
            if (viewB != null && a(viewB) && (aaVarRemove = aVar2.remove(viewB)) != null && aaVarRemove.f475b != null && a(aaVarRemove.f475b)) {
                this.x.add(aVar.d(size));
                this.y.add(aaVarRemove);
            }
        }
    }

    private void a(android.support.v4.g.a<View, aa> aVar, android.support.v4.g.a<View, aa> aVar2, android.support.v4.g.f<View> fVar, android.support.v4.g.f<View> fVar2) {
        View viewA;
        int iB = fVar.b();
        for (int i = 0; i < iB; i++) {
            View viewC = fVar.c(i);
            if (viewC != null && a(viewC) && (viewA = fVar2.a(fVar.b(i))) != null && a(viewA)) {
                aa aaVar = aVar.get(viewC);
                aa aaVar2 = aVar2.get(viewA);
                if (aaVar != null && aaVar2 != null) {
                    this.x.add(aaVar);
                    this.y.add(aaVar2);
                    aVar.remove(viewC);
                    aVar2.remove(viewA);
                }
            }
        }
    }

    private void a(android.support.v4.g.a<View, aa> aVar, android.support.v4.g.a<View, aa> aVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            View viewValueAt = sparseArray.valueAt(i);
            if (viewValueAt != null && a(viewValueAt) && (view = sparseArray2.get(sparseArray.keyAt(i))) != null && a(view)) {
                aa aaVar = aVar.get(viewValueAt);
                aa aaVar2 = aVar2.get(view);
                if (aaVar != null && aaVar2 != null) {
                    this.x.add(aaVar);
                    this.y.add(aaVar2);
                    aVar.remove(viewValueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void a(android.support.v4.g.a<View, aa> aVar, android.support.v4.g.a<View, aa> aVar2, android.support.v4.g.a<String, View> aVar3, android.support.v4.g.a<String, View> aVar4) {
        View view;
        int size = aVar3.size();
        for (int i = 0; i < size; i++) {
            View viewC = aVar3.c(i);
            if (viewC != null && a(viewC) && (view = aVar4.get(aVar3.b(i))) != null && a(view)) {
                aa aaVar = aVar.get(viewC);
                aa aaVar2 = aVar2.get(view);
                if (aaVar != null && aaVar2 != null) {
                    this.x.add(aaVar);
                    this.y.add(aaVar2);
                    aVar.remove(viewC);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void b(android.support.v4.g.a<View, aa> aVar, android.support.v4.g.a<View, aa> aVar2) {
        for (int i = 0; i < aVar.size(); i++) {
            aa aaVarC = aVar.c(i);
            if (a(aaVarC.f475b)) {
                this.x.add(aaVarC);
                this.y.add(null);
            }
        }
        for (int i2 = 0; i2 < aVar2.size(); i2++) {
            aa aaVarC2 = aVar2.c(i2);
            if (a(aaVarC2.f475b)) {
                this.y.add(aaVarC2);
                this.x.add(null);
            }
        }
    }

    private void a(ab abVar, ab abVar2) {
        android.support.v4.g.a<View, aa> aVar = new android.support.v4.g.a<>(abVar.f477a);
        android.support.v4.g.a<View, aa> aVar2 = new android.support.v4.g.a<>(abVar2.f477a);
        for (int i = 0; i < this.w.length; i++) {
            switch (this.w[i]) {
                case 1:
                    a(aVar, aVar2);
                    break;
                case 2:
                    a(aVar, aVar2, abVar.f480d, abVar2.f480d);
                    break;
                case 3:
                    a(aVar, aVar2, abVar.f478b, abVar2.f478b);
                    break;
                case 4:
                    a(aVar, aVar2, abVar.f479c, abVar2.f479c);
                    break;
            }
        }
        b(aVar, aVar2);
    }

    protected void a(ViewGroup viewGroup, ab abVar, ab abVar2, ArrayList<aa> arrayList, ArrayList<aa> arrayList2) {
        Animator animatorA;
        View view;
        aa aaVar;
        Animator animator;
        Animator animator2;
        android.support.v4.g.a<Animator, a> aVarO = o();
        long jMin = Long.MAX_VALUE;
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= size) {
                break;
            }
            aa aaVar2 = arrayList.get(i2);
            aa aaVar3 = arrayList2.get(i2);
            aa aaVar4 = (aaVar2 == null || aaVar2.f476c.contains(this)) ? aaVar2 : null;
            aa aaVar5 = (aaVar3 == null || aaVar3.f476c.contains(this)) ? aaVar3 : null;
            if (aaVar4 != null || aaVar5 != null) {
                if ((aaVar4 == null || aaVar5 == null || a(aaVar4, aaVar5)) && (animatorA = a(viewGroup, aaVar4, aaVar5)) != null) {
                    aa aaVar6 = null;
                    if (aaVar5 != null) {
                        View view2 = aaVar5.f475b;
                        String[] strArrA = a();
                        if (view2 != null && strArrA != null && strArrA.length > 0) {
                            aa aaVar7 = new aa();
                            aaVar7.f475b = view2;
                            aa aaVar8 = abVar2.f477a.get(view2);
                            if (aaVar8 != null) {
                                for (int i3 = 0; i3 < strArrA.length; i3++) {
                                    aaVar7.f474a.put(strArrA[i3], aaVar8.f474a.get(strArrA[i3]));
                                }
                            }
                            int size2 = aVarO.size();
                            int i4 = 0;
                            while (true) {
                                if (i4 >= size2) {
                                    aaVar6 = aaVar7;
                                    animator2 = animatorA;
                                    break;
                                }
                                a aVar = aVarO.get(aVarO.b(i4));
                                if (aVar.f563c == null || aVar.f561a != view2 || !aVar.f562b.equals(n()) || !aVar.f563c.equals(aaVar7)) {
                                    i4++;
                                } else {
                                    animator2 = null;
                                    aaVar6 = aaVar7;
                                    break;
                                }
                            }
                        } else {
                            animator2 = animatorA;
                        }
                        aaVar = aaVar6;
                        animator = animator2;
                        view = view2;
                    } else {
                        view = aaVar4.f475b;
                        aaVar = null;
                        animator = animatorA;
                    }
                    if (animator != null) {
                        if (this.f != null) {
                            long jA = this.f.a(viewGroup, this, aaVar4, aaVar5);
                            sparseIntArray.put(this.G.size(), (int) jA);
                            jMin = Math.min(jA, jMin);
                        }
                        aVarO.put(animator, new a(view, n(), this, am.b(viewGroup), aaVar));
                        this.G.add(animator);
                    }
                }
            }
            i = i2 + 1;
        }
        if (jMin != 0) {
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 < sparseIntArray.size()) {
                    Animator animator3 = this.G.get(sparseIntArray.keyAt(i6));
                    animator3.setStartDelay((((long) sparseIntArray.valueAt(i6)) - jMin) + animator3.getStartDelay());
                    i5 = i6 + 1;
                } else {
                    return;
                }
            }
        }
    }

    boolean a(View view) {
        int id = view.getId();
        if (this.n != null && this.n.contains(Integer.valueOf(id))) {
            return false;
        }
        if (this.o != null && this.o.contains(view)) {
            return false;
        }
        if (this.p != null) {
            int size = this.p.size();
            for (int i = 0; i < size; i++) {
                if (this.p.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.q != null && android.support.v4.view.s.l(view) != null && this.q.contains(android.support.v4.view.s.l(view))) {
            return false;
        }
        if (this.f555b.size() == 0 && this.f556c.size() == 0 && ((this.m == null || this.m.isEmpty()) && (this.l == null || this.l.isEmpty()))) {
            return true;
        }
        if (this.f555b.contains(Integer.valueOf(id)) || this.f556c.contains(view)) {
            return true;
        }
        if (this.l != null && this.l.contains(android.support.v4.view.s.l(view))) {
            return true;
        }
        if (this.m == null) {
            return false;
        }
        for (int i2 = 0; i2 < this.m.size(); i2++) {
            if (this.m.get(i2).isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    private static android.support.v4.g.a<Animator, a> o() {
        android.support.v4.g.a<Animator, a> aVar = z.get();
        if (aVar == null) {
            android.support.v4.g.a<Animator, a> aVar2 = new android.support.v4.g.a<>();
            z.set(aVar2);
            return aVar2;
        }
        return aVar;
    }

    protected void e() {
        j();
        android.support.v4.g.a<Animator, a> aVarO = o();
        for (Animator animator : this.G) {
            if (aVarO.containsKey(animator)) {
                j();
                a(animator, aVarO);
            }
        }
        this.G.clear();
        k();
    }

    private void a(Animator animator, final android.support.v4.g.a<Animator, a> aVar) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.u.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    u.this.B.add(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    aVar.remove(animator2);
                    u.this.B.remove(animator2);
                }
            });
            a(animator);
        }
    }

    public u b(View view) {
        this.f556c.add(view);
        return this;
    }

    public u c(View view) {
        this.f556c.remove(view);
        return this;
    }

    public List<Integer> f() {
        return this.f555b;
    }

    public List<View> g() {
        return this.f556c;
    }

    public List<String> h() {
        return this.l;
    }

    public List<Class> i() {
        return this.m;
    }

    void a(ViewGroup viewGroup, boolean z2) {
        a(z2);
        if ((this.f555b.size() > 0 || this.f556c.size() > 0) && ((this.l == null || this.l.isEmpty()) && (this.m == null || this.m.isEmpty()))) {
            for (int i = 0; i < this.f555b.size(); i++) {
                View viewFindViewById = viewGroup.findViewById(this.f555b.get(i).intValue());
                if (viewFindViewById != null) {
                    aa aaVar = new aa();
                    aaVar.f475b = viewFindViewById;
                    if (z2) {
                        a(aaVar);
                    } else {
                        b(aaVar);
                    }
                    aaVar.f476c.add(this);
                    c(aaVar);
                    if (z2) {
                        a(this.u, viewFindViewById, aaVar);
                    } else {
                        a(this.v, viewFindViewById, aaVar);
                    }
                }
            }
            for (int i2 = 0; i2 < this.f556c.size(); i2++) {
                View view = this.f556c.get(i2);
                aa aaVar2 = new aa();
                aaVar2.f475b = view;
                if (z2) {
                    a(aaVar2);
                } else {
                    b(aaVar2);
                }
                aaVar2.f476c.add(this);
                c(aaVar2);
                if (z2) {
                    a(this.u, view, aaVar2);
                } else {
                    a(this.v, view, aaVar2);
                }
            }
        } else {
            c(viewGroup, z2);
        }
        if (!z2 && this.I != null) {
            int size = this.I.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(this.u.f480d.remove(this.I.b(i3)));
            }
            for (int i4 = 0; i4 < size; i4++) {
                View view2 = (View) arrayList.get(i4);
                if (view2 != null) {
                    this.u.f480d.put(this.I.c(i4), view2);
                }
            }
        }
    }

    private static void a(ab abVar, View view, aa aaVar) {
        abVar.f477a.put(view, aaVar);
        int id = view.getId();
        if (id >= 0) {
            if (abVar.f478b.indexOfKey(id) >= 0) {
                abVar.f478b.put(id, null);
            } else {
                abVar.f478b.put(id, view);
            }
        }
        String strL = android.support.v4.view.s.l(view);
        if (strL != null) {
            if (abVar.f480d.containsKey(strL)) {
                abVar.f480d.put(strL, null);
            } else {
                abVar.f480d.put(strL, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (abVar.f479c.d(itemIdAtPosition) >= 0) {
                    View viewA = abVar.f479c.a(itemIdAtPosition);
                    if (viewA != null) {
                        android.support.v4.view.s.a(viewA, false);
                        abVar.f479c.b(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                android.support.v4.view.s.a(view, true);
                abVar.f479c.b(itemIdAtPosition, view);
            }
        }
    }

    void a(boolean z2) {
        if (z2) {
            this.u.f477a.clear();
            this.u.f478b.clear();
            this.u.f479c.c();
        } else {
            this.v.f477a.clear();
            this.v.f478b.clear();
            this.v.f479c.c();
        }
    }

    private void c(View view, boolean z2) {
        if (view != null) {
            int id = view.getId();
            if (this.n == null || !this.n.contains(Integer.valueOf(id))) {
                if (this.o == null || !this.o.contains(view)) {
                    if (this.p != null) {
                        int size = this.p.size();
                        for (int i = 0; i < size; i++) {
                            if (this.p.get(i).isInstance(view)) {
                                return;
                            }
                        }
                    }
                    if (view.getParent() instanceof ViewGroup) {
                        aa aaVar = new aa();
                        aaVar.f475b = view;
                        if (z2) {
                            a(aaVar);
                        } else {
                            b(aaVar);
                        }
                        aaVar.f476c.add(this);
                        c(aaVar);
                        if (z2) {
                            a(this.u, view, aaVar);
                        } else {
                            a(this.v, view, aaVar);
                        }
                    }
                    if (view instanceof ViewGroup) {
                        if (this.r == null || !this.r.contains(Integer.valueOf(id))) {
                            if (this.s == null || !this.s.contains(view)) {
                                if (this.t != null) {
                                    int size2 = this.t.size();
                                    for (int i2 = 0; i2 < size2; i2++) {
                                        if (this.t.get(i2).isInstance(view)) {
                                            return;
                                        }
                                    }
                                }
                                ViewGroup viewGroup = (ViewGroup) view;
                                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                    c(viewGroup.getChildAt(i3), z2);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public aa a(View view, boolean z2) {
        if (this.f557d != null) {
            return this.f557d.a(view, z2);
        }
        return (z2 ? this.u : this.v).f477a.get(view);
    }

    aa b(View view, boolean z2) {
        aa aaVar;
        if (this.f557d != null) {
            return this.f557d.b(view, z2);
        }
        ArrayList<aa> arrayList = z2 ? this.x : this.y;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            aa aaVar2 = arrayList.get(i);
            if (aaVar2 == null) {
                return null;
            }
            if (aaVar2.f475b == view) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            aaVar = (z2 ? this.y : this.x).get(i);
        } else {
            aaVar = null;
        }
        return aaVar;
    }

    public void d(View view) {
        if (!this.E) {
            android.support.v4.g.a<Animator, a> aVarO = o();
            int size = aVarO.size();
            aw awVarB = am.b(view);
            for (int i = size - 1; i >= 0; i--) {
                a aVarC = aVarO.c(i);
                if (aVarC.f561a != null && awVarB.equals(aVarC.f564d)) {
                    android.support.transition.a.a(aVarO.b(i));
                }
            }
            if (this.F != null && this.F.size() > 0) {
                ArrayList arrayList = (ArrayList) this.F.clone();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ((c) arrayList.get(i2)).b(this);
                }
            }
            this.D = true;
        }
    }

    public void e(View view) {
        if (this.D) {
            if (!this.E) {
                android.support.v4.g.a<Animator, a> aVarO = o();
                int size = aVarO.size();
                aw awVarB = am.b(view);
                for (int i = size - 1; i >= 0; i--) {
                    a aVarC = aVarO.c(i);
                    if (aVarC.f561a != null && awVarB.equals(aVarC.f564d)) {
                        android.support.transition.a.b(aVarO.b(i));
                    }
                }
                if (this.F != null && this.F.size() > 0) {
                    ArrayList arrayList = (ArrayList) this.F.clone();
                    int size2 = arrayList.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((c) arrayList.get(i2)).c(this);
                    }
                }
            }
            this.D = false;
        }
    }

    void a(ViewGroup viewGroup) {
        a aVar;
        this.x = new ArrayList<>();
        this.y = new ArrayList<>();
        a(this.u, this.v);
        android.support.v4.g.a<Animator, a> aVarO = o();
        int size = aVarO.size();
        aw awVarB = am.b(viewGroup);
        for (int i = size - 1; i >= 0; i--) {
            Animator animatorB = aVarO.b(i);
            if (animatorB != null && (aVar = aVarO.get(animatorB)) != null && aVar.f561a != null && awVarB.equals(aVar.f564d)) {
                aa aaVar = aVar.f563c;
                View view = aVar.f561a;
                aa aaVarA = a(view, true);
                aa aaVarB = b(view, true);
                if (!(aaVarA == null && aaVarB == null) && aVar.e.a(aaVar, aaVarB)) {
                    if (animatorB.isRunning() || animatorB.isStarted()) {
                        animatorB.cancel();
                    } else {
                        aVarO.remove(animatorB);
                    }
                }
            }
        }
        a(viewGroup, this.u, this.v, this.x, this.y);
        e();
    }

    public boolean a(aa aaVar, aa aaVar2) {
        boolean z2;
        if (aaVar == null || aaVar2 == null) {
            return false;
        }
        String[] strArrA = a();
        if (strArrA != null) {
            int length = strArrA.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z2 = false;
                    break;
                }
                if (a(aaVar, aaVar2, strArrA[i])) {
                    z2 = true;
                    break;
                }
                i++;
            }
            return z2;
        }
        Iterator<String> it = aaVar.f474a.keySet().iterator();
        while (it.hasNext()) {
            if (a(aaVar, aaVar2, it.next())) {
                return true;
            }
        }
        return false;
    }

    private static boolean a(aa aaVar, aa aaVar2, String str) {
        Object obj = aaVar.f474a.get(str);
        Object obj2 = aaVar2.f474a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        return obj == null || obj2 == null || !obj.equals(obj2);
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
        animator.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.u.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                u.this.k();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    protected void j() {
        if (this.C == 0) {
            if (this.F != null && this.F.size() > 0) {
                ArrayList arrayList = (ArrayList) this.F.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((c) arrayList.get(i)).d(this);
                }
            }
            this.E = false;
        }
        this.C++;
    }

    protected void k() {
        this.C--;
        if (this.C == 0) {
            if (this.F != null && this.F.size() > 0) {
                ArrayList arrayList = (ArrayList) this.F.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((c) arrayList.get(i)).a(this);
                }
            }
            for (int i2 = 0; i2 < this.u.f479c.b(); i2++) {
                View viewC = this.u.f479c.c(i2);
                if (viewC != null) {
                    android.support.v4.view.s.a(viewC, false);
                }
            }
            for (int i3 = 0; i3 < this.v.f479c.b(); i3++) {
                View viewC2 = this.v.f479c.c(i3);
                if (viewC2 != null) {
                    android.support.v4.view.s.a(viewC2, false);
                }
            }
            this.E = true;
        }
    }

    public u a(c cVar) {
        if (this.F == null) {
            this.F = new ArrayList<>();
        }
        this.F.add(cVar);
        return this;
    }

    public u b(c cVar) {
        if (this.F != null) {
            this.F.remove(cVar);
            if (this.F.size() == 0) {
                this.F = null;
            }
        }
        return this;
    }

    public l l() {
        return this.J;
    }

    public void a(b bVar) {
        this.H = bVar;
    }

    void c(aa aaVar) {
        String[] strArrA;
        boolean z2 = false;
        if (this.f != null && !aaVar.f474a.isEmpty() && (strArrA = this.f.a()) != null) {
            int i = 0;
            while (true) {
                if (i >= strArrA.length) {
                    z2 = true;
                    break;
                } else if (!aaVar.f474a.containsKey(strArrA[i])) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z2) {
                this.f.a(aaVar);
            }
        }
    }

    public String toString() {
        return a("");
    }

    @Override // 
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public u clone() {
        try {
            u uVar = (u) super.clone();
            uVar.G = new ArrayList<>();
            uVar.u = new ab();
            uVar.v = new ab();
            uVar.x = null;
            uVar.y = null;
            return uVar;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    public String n() {
        return this.i;
    }

    String a(String str) {
        String str2;
        String str3 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f554a != -1) {
            str3 = str3 + "dur(" + this.f554a + ") ";
        }
        if (this.j != -1) {
            str3 = str3 + "dly(" + this.j + ") ";
        }
        if (this.k != null) {
            str3 = str3 + "interp(" + this.k + ") ";
        }
        if (this.f555b.size() > 0 || this.f556c.size() > 0) {
            String str4 = str3 + "tgts(";
            if (this.f555b.size() > 0) {
                str2 = str4;
                for (int i = 0; i < this.f555b.size(); i++) {
                    if (i > 0) {
                        str2 = str2 + ", ";
                    }
                    str2 = str2 + this.f555b.get(i);
                }
            } else {
                str2 = str4;
            }
            if (this.f556c.size() > 0) {
                for (int i2 = 0; i2 < this.f556c.size(); i2++) {
                    if (i2 > 0) {
                        str2 = str2 + ", ";
                    }
                    str2 = str2 + this.f556c.get(i2);
                }
            }
            return str2 + ")";
        }
        return str3;
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f561a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f562b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        aa f563c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        aw f564d;
        u e;

        a(View view, String str, u uVar, aw awVar, aa aaVar) {
            this.f561a = view;
            this.f562b = str;
            this.f563c = aaVar;
            this.f564d = awVar;
            this.e = uVar;
        }
    }
}
