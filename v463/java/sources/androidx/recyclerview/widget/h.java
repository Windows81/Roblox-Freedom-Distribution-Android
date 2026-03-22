package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final RecyclerView.i f2383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Rect f2384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2385c;

    public abstract int a(View view);

    public abstract void a(int i);

    public abstract int b(View view);

    public abstract int c();

    public abstract int c(View view);

    public abstract int d();

    public abstract int d(View view);

    public abstract int e();

    public abstract int e(View view);

    public abstract int f();

    public abstract int f(View view);

    public abstract int g();

    public abstract int h();

    public abstract int i();

    private h(RecyclerView.i iVar) {
        this.f2385c = Integer.MIN_VALUE;
        this.f2384b = new Rect();
        this.f2383a = iVar;
    }

    public void a() {
        this.f2385c = f();
    }

    public int b() {
        if (Integer.MIN_VALUE == this.f2385c) {
            return 0;
        }
        return f() - this.f2385c;
    }

    public static h a(RecyclerView.i iVar, int i) {
        if (i == 0) {
            return a(iVar);
        }
        if (i == 1) {
            return b(iVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static h a(RecyclerView.i iVar) {
        return new h(iVar) { // from class: androidx.recyclerview.widget.h.1
            @Override // androidx.recyclerview.widget.h
            public int d() {
                return this.f2383a.y() - this.f2383a.C();
            }

            @Override // androidx.recyclerview.widget.h
            public int e() {
                return this.f2383a.y();
            }

            @Override // androidx.recyclerview.widget.h
            public void a(int i) {
                this.f2383a.j(i);
            }

            @Override // androidx.recyclerview.widget.h
            public int c() {
                return this.f2383a.A();
            }

            @Override // androidx.recyclerview.widget.h
            public int e(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f2383a.f(view) + jVar.leftMargin + jVar.rightMargin;
            }

            @Override // androidx.recyclerview.widget.h
            public int f(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f2383a.g(view) + jVar.topMargin + jVar.bottomMargin;
            }

            @Override // androidx.recyclerview.widget.h
            public int b(View view) {
                return this.f2383a.j(view) + ((RecyclerView.j) view.getLayoutParams()).rightMargin;
            }

            @Override // androidx.recyclerview.widget.h
            public int a(View view) {
                return this.f2383a.h(view) - ((RecyclerView.j) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.h
            public int c(View view) {
                this.f2383a.a(view, true, this.f2384b);
                return this.f2384b.right;
            }

            @Override // androidx.recyclerview.widget.h
            public int d(View view) {
                this.f2383a.a(view, true, this.f2384b);
                return this.f2384b.left;
            }

            @Override // androidx.recyclerview.widget.h
            public int f() {
                return (this.f2383a.y() - this.f2383a.A()) - this.f2383a.C();
            }

            @Override // androidx.recyclerview.widget.h
            public int g() {
                return this.f2383a.C();
            }

            @Override // androidx.recyclerview.widget.h
            public int h() {
                return this.f2383a.w();
            }

            @Override // androidx.recyclerview.widget.h
            public int i() {
                return this.f2383a.x();
            }
        };
    }

    public static h b(RecyclerView.i iVar) {
        return new h(iVar) { // from class: androidx.recyclerview.widget.h.2
            @Override // androidx.recyclerview.widget.h
            public int d() {
                return this.f2383a.z() - this.f2383a.D();
            }

            @Override // androidx.recyclerview.widget.h
            public int e() {
                return this.f2383a.z();
            }

            @Override // androidx.recyclerview.widget.h
            public void a(int i) {
                this.f2383a.k(i);
            }

            @Override // androidx.recyclerview.widget.h
            public int c() {
                return this.f2383a.B();
            }

            @Override // androidx.recyclerview.widget.h
            public int e(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f2383a.g(view) + jVar.topMargin + jVar.bottomMargin;
            }

            @Override // androidx.recyclerview.widget.h
            public int f(View view) {
                RecyclerView.j jVar = (RecyclerView.j) view.getLayoutParams();
                return this.f2383a.f(view) + jVar.leftMargin + jVar.rightMargin;
            }

            @Override // androidx.recyclerview.widget.h
            public int b(View view) {
                return this.f2383a.k(view) + ((RecyclerView.j) view.getLayoutParams()).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.h
            public int a(View view) {
                return this.f2383a.i(view) - ((RecyclerView.j) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.h
            public int c(View view) {
                this.f2383a.a(view, true, this.f2384b);
                return this.f2384b.bottom;
            }

            @Override // androidx.recyclerview.widget.h
            public int d(View view) {
                this.f2383a.a(view, true, this.f2384b);
                return this.f2384b.top;
            }

            @Override // androidx.recyclerview.widget.h
            public int f() {
                return (this.f2383a.z() - this.f2383a.B()) - this.f2383a.D();
            }

            @Override // androidx.recyclerview.widget.h
            public int g() {
                return this.f2383a.D();
            }

            @Override // androidx.recyclerview.widget.h
            public int h() {
                return this.f2383a.x();
            }

            @Override // androidx.recyclerview.widget.h
            public int i() {
                return this.f2383a.w();
            }
        };
    }
}
