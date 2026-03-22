package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final InterfaceC0056b f2306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a f2307b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List<View> f2308c = new ArrayList();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.b$b, reason: collision with other inner class name */
    interface InterfaceC0056b {
        int a();

        int a(View view);

        void a(int i);

        void a(View view, int i);

        void a(View view, int i, ViewGroup.LayoutParams layoutParams);

        View b(int i);

        RecyclerView.w b(View view);

        void b();

        void c(int i);

        void c(View view);

        void d(View view);
    }

    b(InterfaceC0056b interfaceC0056b) {
        this.f2306a = interfaceC0056b;
    }

    private void g(View view) {
        this.f2308c.add(view);
        this.f2306a.c(view);
    }

    private boolean h(View view) {
        if (!this.f2308c.remove(view)) {
            return false;
        }
        this.f2306a.d(view);
        return true;
    }

    void a(View view, boolean z) {
        a(view, -1, z);
    }

    void a(View view, int i, boolean z) {
        int iF;
        if (i < 0) {
            iF = this.f2306a.a();
        } else {
            iF = f(i);
        }
        this.f2307b.a(iF, z);
        if (z) {
            g(view);
        }
        this.f2306a.a(view, iF);
    }

    private int f(int i) {
        if (i < 0) {
            return -1;
        }
        int iA = this.f2306a.a();
        int i2 = i;
        while (i2 < iA) {
            int iE = i - (i2 - this.f2307b.e(i2));
            if (iE == 0) {
                while (this.f2307b.c(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iE;
        }
        return -1;
    }

    void a(View view) {
        int iA = this.f2306a.a(view);
        if (iA < 0) {
            return;
        }
        if (this.f2307b.d(iA)) {
            h(view);
        }
        this.f2306a.a(iA);
    }

    void a(int i) {
        int iF = f(i);
        View viewB = this.f2306a.b(iF);
        if (viewB == null) {
            return;
        }
        if (this.f2307b.d(iF)) {
            h(viewB);
        }
        this.f2306a.a(iF);
    }

    View b(int i) {
        return this.f2306a.b(f(i));
    }

    void a() {
        this.f2307b.a();
        for (int size = this.f2308c.size() - 1; size >= 0; size--) {
            this.f2306a.d(this.f2308c.get(size));
            this.f2308c.remove(size);
        }
        this.f2306a.b();
    }

    View c(int i) {
        int size = this.f2308c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f2308c.get(i2);
            RecyclerView.w wVarB = this.f2306a.b(view);
            if (wVarB.d() == i && !wVarB.n() && !wVarB.q()) {
                return view;
            }
        }
        return null;
    }

    void a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int iF;
        if (i < 0) {
            iF = this.f2306a.a();
        } else {
            iF = f(i);
        }
        this.f2307b.a(iF, z);
        if (z) {
            g(view);
        }
        this.f2306a.a(view, iF, layoutParams);
    }

    int b() {
        return this.f2306a.a() - this.f2308c.size();
    }

    int c() {
        return this.f2306a.a();
    }

    View d(int i) {
        return this.f2306a.b(i);
    }

    void e(int i) {
        int iF = f(i);
        this.f2307b.d(iF);
        this.f2306a.c(iF);
    }

    int b(View view) {
        int iA = this.f2306a.a(view);
        if (iA == -1 || this.f2307b.c(iA)) {
            return -1;
        }
        return iA - this.f2307b.e(iA);
    }

    boolean c(View view) {
        return this.f2308c.contains(view);
    }

    void d(View view) {
        int iA = this.f2306a.a(view);
        if (iA < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        this.f2307b.a(iA);
        g(view);
    }

    void e(View view) {
        int iA = this.f2306a.a(view);
        if (iA < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (!this.f2307b.c(iA)) {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
        this.f2307b.b(iA);
        h(view);
    }

    public String toString() {
        return this.f2307b.toString() + ", hidden list:" + this.f2308c.size();
    }

    boolean f(View view) {
        int iA = this.f2306a.a(view);
        if (iA == -1) {
            h(view);
            return true;
        }
        if (!this.f2307b.c(iA)) {
            return false;
        }
        this.f2307b.d(iA);
        h(view);
        this.f2306a.a(iA);
        return true;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f2309a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        a f2310b;

        a() {
        }

        void a(int i) {
            if (i >= 64) {
                b();
                this.f2310b.a(i - 64);
            } else {
                this.f2309a |= 1 << i;
            }
        }

        private void b() {
            if (this.f2310b == null) {
                this.f2310b = new a();
            }
        }

        void b(int i) {
            if (i >= 64) {
                a aVar = this.f2310b;
                if (aVar != null) {
                    aVar.b(i - 64);
                    return;
                }
                return;
            }
            this.f2309a &= (1 << i) ^ (-1);
        }

        boolean c(int i) {
            if (i < 64) {
                return (this.f2309a & (1 << i)) != 0;
            }
            b();
            return this.f2310b.c(i - 64);
        }

        void a() {
            this.f2309a = 0L;
            a aVar = this.f2310b;
            if (aVar != null) {
                aVar.a();
            }
        }

        void a(int i, boolean z) {
            if (i >= 64) {
                b();
                this.f2310b.a(i - 64, z);
                return;
            }
            boolean z2 = (this.f2309a & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            long j2 = this.f2309a;
            this.f2309a = ((j2 & (j ^ (-1))) << 1) | (j2 & j);
            if (z) {
                a(i);
            } else {
                b(i);
            }
            if (z2 || this.f2310b != null) {
                b();
                this.f2310b.a(0, z2);
            }
        }

        boolean d(int i) {
            if (i >= 64) {
                b();
                return this.f2310b.d(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.f2309a & j) != 0;
            long j2 = this.f2309a & (j ^ (-1));
            this.f2309a = j2;
            long j3 = j - 1;
            this.f2309a = (j2 & j3) | Long.rotateRight((j3 ^ (-1)) & j2, 1);
            a aVar = this.f2310b;
            if (aVar != null) {
                if (aVar.c(0)) {
                    a(63);
                }
                this.f2310b.d(0);
            }
            return z;
        }

        int e(int i) {
            a aVar = this.f2310b;
            if (aVar == null) {
                if (i >= 64) {
                    return Long.bitCount(this.f2309a);
                }
                return Long.bitCount(this.f2309a & ((1 << i) - 1));
            }
            if (i < 64) {
                return Long.bitCount(this.f2309a & ((1 << i) - 1));
            }
            return aVar.e(i - 64) + Long.bitCount(this.f2309a);
        }

        public String toString() {
            if (this.f2310b == null) {
                return Long.toBinaryString(this.f2309a);
            }
            return this.f2310b.toString() + "xx" + Long.toBinaryString(this.f2309a);
        }
    }
}
