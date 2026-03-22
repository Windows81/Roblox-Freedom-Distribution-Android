package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.h.r;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends k {
    private static TimeInterpolator i;
    private ArrayList<RecyclerView.w> j = new ArrayList<>();
    private ArrayList<RecyclerView.w> k = new ArrayList<>();
    private ArrayList<b> l = new ArrayList<>();
    private ArrayList<a> m = new ArrayList<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ArrayList<ArrayList<RecyclerView.w>> f2311a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<ArrayList<b>> f2312b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ArrayList<ArrayList<a>> f2313c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<RecyclerView.w> f2314d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList<RecyclerView.w> f2315e = new ArrayList<>();
    ArrayList<RecyclerView.w> f = new ArrayList<>();
    ArrayList<RecyclerView.w> g = new ArrayList<>();

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.w f2348a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2349b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2350c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2351d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2352e;

        b(RecyclerView.w wVar, int i, int i2, int i3, int i4) {
            this.f2348a = wVar;
            this.f2349b = i;
            this.f2350c = i2;
            this.f2351d = i3;
            this.f2352e = i4;
        }
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.w f2343a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView.w f2344b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2345c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2346d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2347e;
        public int f;

        private a(RecyclerView.w wVar, RecyclerView.w wVar2) {
            this.f2343a = wVar;
            this.f2344b = wVar2;
        }

        a(RecyclerView.w wVar, RecyclerView.w wVar2, int i, int i2, int i3, int i4) {
            this(wVar, wVar2);
            this.f2345c = i;
            this.f2346d = i2;
            this.f2347e = i3;
            this.f = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f2343a + ", newHolder=" + this.f2344b + ", fromX=" + this.f2345c + ", fromY=" + this.f2346d + ", toX=" + this.f2347e + ", toY=" + this.f + '}';
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public void a() {
        boolean z = !this.j.isEmpty();
        boolean z2 = !this.l.isEmpty();
        boolean z3 = !this.m.isEmpty();
        boolean z4 = !this.k.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.w> it = this.j.iterator();
            while (it.hasNext()) {
                u(it.next());
            }
            this.j.clear();
            if (z2) {
                final ArrayList<b> arrayList = new ArrayList<>();
                arrayList.addAll(this.l);
                this.f2312b.add(arrayList);
                this.l.clear();
                Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (b bVar : arrayList) {
                            c.this.b(bVar.f2348a, bVar.f2349b, bVar.f2350c, bVar.f2351d, bVar.f2352e);
                        }
                        arrayList.clear();
                        c.this.f2312b.remove(arrayList);
                    }
                };
                if (z) {
                    r.a(arrayList.get(0).f2348a.f2263a, runnable, g());
                } else {
                    runnable.run();
                }
            }
            if (z3) {
                final ArrayList<a> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.m);
                this.f2313c.add(arrayList2);
                this.m.clear();
                Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.c.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            c.this.a((a) it2.next());
                        }
                        arrayList2.clear();
                        c.this.f2313c.remove(arrayList2);
                    }
                };
                if (z) {
                    r.a(arrayList2.get(0).f2343a.f2263a, runnable2, g());
                } else {
                    runnable2.run();
                }
            }
            if (z4) {
                final ArrayList<RecyclerView.w> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.k);
                this.f2311a.add(arrayList3);
                this.k.clear();
                Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.c.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            c.this.c((RecyclerView.w) it2.next());
                        }
                        arrayList3.clear();
                        c.this.f2311a.remove(arrayList3);
                    }
                };
                if (z || z2 || z3) {
                    r.a(arrayList3.get(0).f2263a, runnable3, (z ? g() : 0L) + Math.max(z2 ? e() : 0L, z3 ? h() : 0L));
                } else {
                    runnable3.run();
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.k
    public boolean a(RecyclerView.w wVar) {
        v(wVar);
        this.j.add(wVar);
        return true;
    }

    private void u(final RecyclerView.w wVar) {
        final View view = wVar.f2263a;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f.add(wVar);
        viewPropertyAnimatorAnimate.setDuration(g()).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                c.this.l(wVar);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                view.setAlpha(1.0f);
                c.this.i(wVar);
                c.this.f.remove(wVar);
                c.this.c();
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.k
    public boolean b(RecyclerView.w wVar) {
        v(wVar);
        wVar.f2263a.setAlpha(0.0f);
        this.k.add(wVar);
        return true;
    }

    void c(final RecyclerView.w wVar) {
        final View view = wVar.f2263a;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f2314d.add(wVar);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(f()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                c.this.n(wVar);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                c.this.k(wVar);
                c.this.f2314d.remove(wVar);
                c.this.c();
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.k
    public boolean a(RecyclerView.w wVar, int i2, int i3, int i4, int i5) {
        View view = wVar.f2263a;
        int translationX = i2 + ((int) wVar.f2263a.getTranslationX());
        int translationY = i3 + ((int) wVar.f2263a.getTranslationY());
        v(wVar);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            j(wVar);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX(-i6);
        }
        if (i7 != 0) {
            view.setTranslationY(-i7);
        }
        this.l.add(new b(wVar, translationX, translationY, i4, i5));
        return true;
    }

    void b(final RecyclerView.w wVar, int i2, int i3, int i4, int i5) {
        final View view = wVar.f2263a;
        final int i6 = i4 - i2;
        final int i7 = i5 - i3;
        if (i6 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i7 != 0) {
            view.animate().translationY(0.0f);
        }
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f2315e.add(wVar);
        viewPropertyAnimatorAnimate.setDuration(e()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                c.this.m(wVar);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i6 != 0) {
                    view.setTranslationX(0.0f);
                }
                if (i7 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                c.this.j(wVar);
                c.this.f2315e.remove(wVar);
                c.this.c();
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.k
    public boolean a(RecyclerView.w wVar, RecyclerView.w wVar2, int i2, int i3, int i4, int i5) {
        if (wVar == wVar2) {
            return a(wVar, i2, i3, i4, i5);
        }
        float translationX = wVar.f2263a.getTranslationX();
        float translationY = wVar.f2263a.getTranslationY();
        float alpha = wVar.f2263a.getAlpha();
        v(wVar);
        int i6 = (int) ((i4 - i2) - translationX);
        int i7 = (int) ((i5 - i3) - translationY);
        wVar.f2263a.setTranslationX(translationX);
        wVar.f2263a.setTranslationY(translationY);
        wVar.f2263a.setAlpha(alpha);
        if (wVar2 != null) {
            v(wVar2);
            wVar2.f2263a.setTranslationX(-i6);
            wVar2.f2263a.setTranslationY(-i7);
            wVar2.f2263a.setAlpha(0.0f);
        }
        this.m.add(new a(wVar, wVar2, i2, i3, i4, i5));
        return true;
    }

    void a(final a aVar) {
        RecyclerView.w wVar = aVar.f2343a;
        final View view = wVar == null ? null : wVar.f2263a;
        RecyclerView.w wVar2 = aVar.f2344b;
        final View view2 = wVar2 != null ? wVar2.f2263a : null;
        if (view != null) {
            final ViewPropertyAnimator duration = view.animate().setDuration(h());
            this.g.add(aVar.f2343a);
            duration.translationX(aVar.f2347e - aVar.f2345c);
            duration.translationY(aVar.f - aVar.f2346d);
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    c.this.b(aVar.f2343a, true);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view.setAlpha(1.0f);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    c.this.a(aVar.f2343a, true);
                    c.this.g.remove(aVar.f2343a);
                    c.this.c();
                }
            }).start();
        }
        if (view2 != null) {
            final ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.g.add(aVar.f2344b);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(h()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.c.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    c.this.b(aVar.f2344b, false);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    viewPropertyAnimatorAnimate.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setTranslationX(0.0f);
                    view2.setTranslationY(0.0f);
                    c.this.a(aVar.f2344b, false);
                    c.this.g.remove(aVar.f2344b);
                    c.this.c();
                }
            }).start();
        }
    }

    private void a(List<a> list, RecyclerView.w wVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = list.get(size);
            if (a(aVar, wVar) && aVar.f2343a == null && aVar.f2344b == null) {
                list.remove(aVar);
            }
        }
    }

    private void b(a aVar) {
        if (aVar.f2343a != null) {
            a(aVar, aVar.f2343a);
        }
        if (aVar.f2344b != null) {
            a(aVar, aVar.f2344b);
        }
    }

    private boolean a(a aVar, RecyclerView.w wVar) {
        boolean z = false;
        if (aVar.f2344b == wVar) {
            aVar.f2344b = null;
        } else {
            if (aVar.f2343a != wVar) {
                return false;
            }
            aVar.f2343a = null;
            z = true;
        }
        wVar.f2263a.setAlpha(1.0f);
        wVar.f2263a.setTranslationX(0.0f);
        wVar.f2263a.setTranslationY(0.0f);
        a(wVar, z);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public void d(RecyclerView.w wVar) {
        View view = wVar.f2263a;
        view.animate().cancel();
        int size = this.l.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.l.get(size).f2348a == wVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                j(wVar);
                this.l.remove(size);
            }
        }
        a(this.m, wVar);
        if (this.j.remove(wVar)) {
            view.setAlpha(1.0f);
            i(wVar);
        }
        if (this.k.remove(wVar)) {
            view.setAlpha(1.0f);
            k(wVar);
        }
        for (int size2 = this.f2313c.size() - 1; size2 >= 0; size2--) {
            ArrayList<a> arrayList = this.f2313c.get(size2);
            a(arrayList, wVar);
            if (arrayList.isEmpty()) {
                this.f2313c.remove(size2);
            }
        }
        for (int size3 = this.f2312b.size() - 1; size3 >= 0; size3--) {
            ArrayList<b> arrayList2 = this.f2312b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).f2348a == wVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    j(wVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f2312b.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f2311a.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.w> arrayList3 = this.f2311a.get(size5);
            if (arrayList3.remove(wVar)) {
                view.setAlpha(1.0f);
                k(wVar);
                if (arrayList3.isEmpty()) {
                    this.f2311a.remove(size5);
                }
            }
        }
        this.f.remove(wVar);
        this.f2314d.remove(wVar);
        this.g.remove(wVar);
        this.f2315e.remove(wVar);
        c();
    }

    private void v(RecyclerView.w wVar) {
        if (i == null) {
            i = new ValueAnimator().getInterpolator();
        }
        wVar.f2263a.animate().setInterpolator(i);
        d(wVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public boolean b() {
        return (this.k.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.j.isEmpty() && this.f2315e.isEmpty() && this.f.isEmpty() && this.f2314d.isEmpty() && this.g.isEmpty() && this.f2312b.isEmpty() && this.f2311a.isEmpty() && this.f2313c.isEmpty()) ? false : true;
    }

    void c() {
        if (b()) {
            return;
        }
        i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public void d() {
        int size = this.l.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            b bVar = this.l.get(size);
            View view = bVar.f2348a.f2263a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            j(bVar.f2348a);
            this.l.remove(size);
        }
        for (int size2 = this.j.size() - 1; size2 >= 0; size2--) {
            i(this.j.get(size2));
            this.j.remove(size2);
        }
        int size3 = this.k.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.w wVar = this.k.get(size3);
            wVar.f2263a.setAlpha(1.0f);
            k(wVar);
            this.k.remove(size3);
        }
        for (int size4 = this.m.size() - 1; size4 >= 0; size4--) {
            b(this.m.get(size4));
        }
        this.m.clear();
        if (b()) {
            for (int size5 = this.f2312b.size() - 1; size5 >= 0; size5--) {
                ArrayList<b> arrayList = this.f2312b.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    b bVar2 = arrayList.get(size6);
                    View view2 = bVar2.f2348a.f2263a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    j(bVar2.f2348a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f2312b.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f2311a.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.w> arrayList2 = this.f2311a.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.w wVar2 = arrayList2.get(size8);
                    wVar2.f2263a.setAlpha(1.0f);
                    k(wVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f2311a.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f2313c.size() - 1; size9 >= 0; size9--) {
                ArrayList<a> arrayList3 = this.f2313c.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    b(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f2313c.remove(arrayList3);
                    }
                }
            }
            a(this.f);
            a(this.f2315e);
            a(this.f2314d);
            a(this.g);
            i();
        }
    }

    void a(List<RecyclerView.w> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).f2263a.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.f
    public boolean a(RecyclerView.w wVar, List<Object> list) {
        return !list.isEmpty() || super.a(wVar, list);
    }
}
