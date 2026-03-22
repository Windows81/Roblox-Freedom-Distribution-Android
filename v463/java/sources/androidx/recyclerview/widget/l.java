package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f2389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f2390b = new a();

    interface b {
        int a();

        int a(View view);

        View a(int i);

        int b();

        int b(View view);
    }

    l(b bVar) {
        this.f2389a = bVar;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2391a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2392b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2393c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2394d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2395e;

        int a(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        a() {
        }

        void a(int i, int i2, int i3, int i4) {
            this.f2392b = i;
            this.f2393c = i2;
            this.f2394d = i3;
            this.f2395e = i4;
        }

        void a(int i) {
            this.f2391a = i | this.f2391a;
        }

        void a() {
            this.f2391a = 0;
        }

        boolean b() {
            int i = this.f2391a;
            if ((i & 7) != 0 && (i & (a(this.f2394d, this.f2392b) << 0)) == 0) {
                return false;
            }
            int i2 = this.f2391a;
            if ((i2 & 112) != 0 && (i2 & (a(this.f2394d, this.f2393c) << 4)) == 0) {
                return false;
            }
            int i3 = this.f2391a;
            if ((i3 & 1792) != 0 && (i3 & (a(this.f2395e, this.f2392b) << 8)) == 0) {
                return false;
            }
            int i4 = this.f2391a;
            return (i4 & 28672) == 0 || (i4 & (a(this.f2395e, this.f2393c) << 12)) != 0;
        }
    }

    View a(int i, int i2, int i3, int i4) {
        int iA = this.f2389a.a();
        int iB = this.f2389a.b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View viewA = this.f2389a.a(i);
            this.f2390b.a(iA, iB, this.f2389a.a(viewA), this.f2389a.b(viewA));
            if (i3 != 0) {
                this.f2390b.a();
                this.f2390b.a(i3);
                if (this.f2390b.b()) {
                    return viewA;
                }
            }
            if (i4 != 0) {
                this.f2390b.a();
                this.f2390b.a(i4);
                if (this.f2390b.b()) {
                    view = viewA;
                }
            }
            i += i5;
        }
        return view;
    }

    boolean a(View view, int i) {
        this.f2390b.a(this.f2389a.a(), this.f2389a.b(), this.f2389a.a(view), this.f2389a.b(view));
        if (i == 0) {
            return false;
        }
        this.f2390b.a();
        this.f2390b.a(i);
        return this.f2390b.b();
    }
}
