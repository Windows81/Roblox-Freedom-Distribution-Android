package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f1684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a f1685b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List<View> f1686c = new ArrayList();

    interface b {
        int a();

        int a(View view);

        void a(int i);

        void a(View view, int i);

        void a(View view, int i, ViewGroup.LayoutParams layoutParams);

        RecyclerView.ViewHolder b(View view);

        View b(int i);

        void b();

        void c(int i);

        void c(View view);

        void d(View view);
    }

    n(b bVar) {
        this.f1684a = bVar;
    }

    private void g(View view) {
        this.f1686c.add(view);
        this.f1684a.c(view);
    }

    private boolean h(View view) {
        if (!this.f1686c.remove(view)) {
            return false;
        }
        this.f1684a.d(view);
        return true;
    }

    void a(View view, boolean z) {
        a(view, -1, z);
    }

    void a(View view, int i, boolean z) {
        int iF;
        if (i < 0) {
            iF = this.f1684a.a();
        } else {
            iF = f(i);
        }
        this.f1685b.a(iF, z);
        if (z) {
            g(view);
        }
        this.f1684a.a(view, iF);
    }

    private int f(int i) {
        if (i < 0) {
            return -1;
        }
        int iA = this.f1684a.a();
        int i2 = i;
        while (i2 < iA) {
            int iE = i - (i2 - this.f1685b.e(i2));
            if (iE == 0) {
                while (this.f1685b.c(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iE;
        }
        return -1;
    }

    void a(View view) {
        int iA = this.f1684a.a(view);
        if (iA >= 0) {
            if (this.f1685b.d(iA)) {
                h(view);
            }
            this.f1684a.a(iA);
        }
    }

    void a(int i) {
        int iF = f(i);
        View viewB = this.f1684a.b(iF);
        if (viewB != null) {
            if (this.f1685b.d(iF)) {
                h(viewB);
            }
            this.f1684a.a(iF);
        }
    }

    View b(int i) {
        return this.f1684a.b(f(i));
    }

    void a() {
        this.f1685b.a();
        for (int size = this.f1686c.size() - 1; size >= 0; size--) {
            this.f1684a.d(this.f1686c.get(size));
            this.f1686c.remove(size);
        }
        this.f1684a.b();
    }

    View c(int i) {
        int size = this.f1686c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f1686c.get(i2);
            RecyclerView.ViewHolder viewHolderB = this.f1684a.b(view);
            if (viewHolderB.getLayoutPosition() == i && !viewHolderB.isInvalid() && !viewHolderB.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    void a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int iF;
        if (i < 0) {
            iF = this.f1684a.a();
        } else {
            iF = f(i);
        }
        this.f1685b.a(iF, z);
        if (z) {
            g(view);
        }
        this.f1684a.a(view, iF, layoutParams);
    }

    int b() {
        return this.f1684a.a() - this.f1686c.size();
    }

    int c() {
        return this.f1684a.a();
    }

    View d(int i) {
        return this.f1684a.b(i);
    }

    void e(int i) {
        int iF = f(i);
        this.f1685b.d(iF);
        this.f1684a.c(iF);
    }

    int b(View view) {
        int iA = this.f1684a.a(view);
        if (iA == -1 || this.f1685b.c(iA)) {
            return -1;
        }
        return iA - this.f1685b.e(iA);
    }

    boolean c(View view) {
        return this.f1686c.contains(view);
    }

    void d(View view) {
        int iA = this.f1684a.a(view);
        if (iA < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        this.f1685b.a(iA);
        g(view);
    }

    void e(View view) {
        int iA = this.f1684a.a(view);
        if (iA < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (!this.f1685b.c(iA)) {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
        this.f1685b.b(iA);
        h(view);
    }

    public String toString() {
        return this.f1685b.toString() + ", hidden list:" + this.f1686c.size();
    }

    boolean f(View view) {
        int iA = this.f1684a.a(view);
        if (iA == -1) {
            if (h(view)) {
            }
            return true;
        }
        if (this.f1685b.c(iA)) {
            this.f1685b.d(iA);
            if (!h(view)) {
            }
            this.f1684a.a(iA);
            return true;
        }
        return false;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f1687a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        a f1688b;

        a() {
        }

        void a(int i) {
            if (i >= 64) {
                b();
                this.f1688b.a(i - 64);
            } else {
                this.f1687a |= 1 << i;
            }
        }

        private void b() {
            if (this.f1688b == null) {
                this.f1688b = new a();
            }
        }

        void b(int i) {
            if (i >= 64) {
                if (this.f1688b != null) {
                    this.f1688b.b(i - 64);
                    return;
                }
                return;
            }
            this.f1687a &= (1 << i) ^ (-1);
        }

        boolean c(int i) {
            if (i < 64) {
                return (this.f1687a & (1 << i)) != 0;
            }
            b();
            return this.f1688b.c(i - 64);
        }

        void a() {
            this.f1687a = 0L;
            if (this.f1688b != null) {
                this.f1688b.a();
            }
        }

        void a(int i, boolean z) {
            if (i >= 64) {
                b();
                this.f1688b.a(i - 64, z);
                return;
            }
            boolean z2 = (this.f1687a & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            this.f1687a = (((j ^ (-1)) & this.f1687a) << 1) | (this.f1687a & j);
            if (z) {
                a(i);
            } else {
                b(i);
            }
            if (z2 || this.f1688b != null) {
                b();
                this.f1688b.a(0, z2);
            }
        }

        boolean d(int i) {
            if (i >= 64) {
                b();
                return this.f1688b.d(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.f1687a & j) != 0;
            this.f1687a &= j ^ (-1);
            long j2 = j - 1;
            this.f1687a = Long.rotateRight((j2 ^ (-1)) & this.f1687a, 1) | (this.f1687a & j2);
            if (this.f1688b != null) {
                if (this.f1688b.c(0)) {
                    a(63);
                }
                this.f1688b.d(0);
                return z;
            }
            return z;
        }

        int e(int i) {
            if (this.f1688b == null) {
                if (i >= 64) {
                    return Long.bitCount(this.f1687a);
                }
                return Long.bitCount(this.f1687a & ((1 << i) - 1));
            }
            if (i < 64) {
                return Long.bitCount(this.f1687a & ((1 << i) - 1));
            }
            return this.f1688b.e(i - 64) + Long.bitCount(this.f1687a);
        }

        public String toString() {
            return this.f1688b == null ? Long.toBinaryString(this.f1687a) : this.f1688b.toString() + "xx" + Long.toBinaryString(this.f1687a);
        }
    }
}
