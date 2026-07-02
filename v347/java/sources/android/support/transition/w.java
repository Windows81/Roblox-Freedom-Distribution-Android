package android.support.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static u f565a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ThreadLocal<WeakReference<android.support.v4.g.a<ViewGroup, ArrayList<u>>>> f566b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ArrayList<ViewGroup> f567c = new ArrayList<>();

    static android.support.v4.g.a<ViewGroup, ArrayList<u>> a() {
        WeakReference<android.support.v4.g.a<ViewGroup, ArrayList<u>>> weakReference = f566b.get();
        if (weakReference == null || weakReference.get() == null) {
            weakReference = new WeakReference<>(new android.support.v4.g.a());
            f566b.set(weakReference);
        }
        return weakReference.get();
    }

    private static void b(ViewGroup viewGroup, u uVar) {
        if (uVar != null && viewGroup != null) {
            a aVar = new a(uVar, viewGroup);
            viewGroup.addOnAttachStateChangeListener(aVar);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }

    private static class a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        u f568a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewGroup f569b;

        a(u uVar, ViewGroup viewGroup) {
            this.f568a = uVar;
            this.f569b = viewGroup;
        }

        private void a() {
            this.f569b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f569b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            w.f567c.remove(this.f569b);
            ArrayList<u> arrayList = w.a().get(this.f569b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<u> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().e(this.f569b);
                }
            }
            this.f568a.a(true);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ArrayList<u> arrayList;
            ArrayList arrayList2;
            a();
            if (w.f567c.remove(this.f569b)) {
                final android.support.v4.g.a<ViewGroup, ArrayList<u>> aVarA = w.a();
                ArrayList<u> arrayList3 = aVarA.get(this.f569b);
                if (arrayList3 == null) {
                    ArrayList<u> arrayList4 = new ArrayList<>();
                    aVarA.put(this.f569b, arrayList4);
                    arrayList = arrayList4;
                    arrayList2 = null;
                } else if (arrayList3.size() <= 0) {
                    arrayList = arrayList3;
                    arrayList2 = null;
                } else {
                    arrayList = arrayList3;
                    arrayList2 = new ArrayList(arrayList3);
                }
                arrayList.add(this.f568a);
                this.f568a.a(new v() { // from class: android.support.transition.w.a.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.support.transition.v, android.support.transition.u.c
                    public void a(u uVar) {
                        ((ArrayList) aVarA.get(a.this.f569b)).remove(uVar);
                    }
                });
                this.f568a.a(this.f569b, false);
                if (arrayList2 != null) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((u) it.next()).e(this.f569b);
                    }
                }
                this.f568a.a(this.f569b);
            }
            return true;
        }
    }

    private static void c(ViewGroup viewGroup, u uVar) {
        ArrayList<u> arrayList = a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<u> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().d(viewGroup);
            }
        }
        if (uVar != null) {
            uVar.a(viewGroup, true);
        }
        t tVarA = t.a(viewGroup);
        if (tVarA != null) {
            tVarA.a();
        }
    }

    public static void a(ViewGroup viewGroup, u uVar) {
        if (!f567c.contains(viewGroup) && android.support.v4.view.s.v(viewGroup)) {
            f567c.add(viewGroup);
            if (uVar == null) {
                uVar = f565a;
            }
            u uVarClone = uVar.clone();
            c(viewGroup, uVarClone);
            t.a(viewGroup, null);
            b(viewGroup, uVarClone);
        }
    }
}
