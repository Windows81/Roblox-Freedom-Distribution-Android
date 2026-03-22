package androidx.k;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static m f2018b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ThreadLocal<WeakReference<androidx.c.a<ViewGroup, ArrayList<m>>>> f2019c = new ThreadLocal<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static ArrayList<ViewGroup> f2017a = new ArrayList<>();

    static androidx.c.a<ViewGroup, ArrayList<m>> a() {
        androidx.c.a<ViewGroup, ArrayList<m>> aVar;
        WeakReference<androidx.c.a<ViewGroup, ArrayList<m>>> weakReference = f2019c.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        androidx.c.a<ViewGroup, ArrayList<m>> aVar2 = new androidx.c.a<>();
        f2019c.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    private static void b(ViewGroup viewGroup, m mVar) {
        if (mVar == null || viewGroup == null) {
            return;
        }
        a aVar = new a(mVar, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    private static class a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        m f2020a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ViewGroup f2021b;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        a(m mVar, ViewGroup viewGroup) {
            this.f2020a = mVar;
            this.f2021b = viewGroup;
        }

        private void a() {
            this.f2021b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f2021b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            o.f2017a.remove(this.f2021b);
            ArrayList<m> arrayList = o.a().get(this.f2021b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<m> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().e(this.f2021b);
                }
            }
            this.f2020a.a(true);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!o.f2017a.remove(this.f2021b)) {
                return true;
            }
            final androidx.c.a<ViewGroup, ArrayList<m>> aVarA = o.a();
            ArrayList<m> arrayList = aVarA.get(this.f2021b);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                aVarA.put(this.f2021b, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f2020a);
            this.f2020a.a(new n() { // from class: androidx.k.o.a.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // androidx.k.n, androidx.k.m.c
                public void a(m mVar) {
                    ((ArrayList) aVarA.get(a.this.f2021b)).remove(mVar);
                }
            });
            this.f2020a.a(this.f2021b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((m) it.next()).e(this.f2021b);
                }
            }
            this.f2020a.a(this.f2021b);
            return true;
        }
    }

    private static void c(ViewGroup viewGroup, m mVar) {
        ArrayList<m> arrayList = a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<m> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().d(viewGroup);
            }
        }
        if (mVar != null) {
            mVar.a(viewGroup, true);
        }
        l lVarA = l.a(viewGroup);
        if (lVarA != null) {
            lVarA.a();
        }
    }

    public static void a(ViewGroup viewGroup, m mVar) {
        if (f2017a.contains(viewGroup) || !androidx.core.h.r.w(viewGroup)) {
            return;
        }
        f2017a.add(viewGroup);
        if (mVar == null) {
            mVar = f2018b;
        }
        m mVarClone = mVar.clone();
        c(viewGroup, mVarClone);
        l.a(viewGroup, null);
        b(viewGroup, mVarClone);
    }
}
