package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class e implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final ThreadLocal<e> f2363a = new ThreadLocal<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static Comparator<b> f2364e = new Comparator<b>() { // from class: androidx.recyclerview.widget.e.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            if ((bVar.f2375d == null) != (bVar2.f2375d == null)) {
                return bVar.f2375d == null ? 1 : -1;
            }
            if (bVar.f2372a != bVar2.f2372a) {
                return bVar.f2372a ? -1 : 1;
            }
            int i = bVar2.f2373b - bVar.f2373b;
            if (i != 0) {
                return i;
            }
            int i2 = bVar.f2374c - bVar2.f2374c;
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f2366c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f2367d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<RecyclerView> f2365b = new ArrayList<>();
    private ArrayList<b> f = new ArrayList<>();

    e() {
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2372a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2373b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2374c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RecyclerView f2375d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2376e;

        b() {
        }

        public void a() {
            this.f2372a = false;
            this.f2373b = 0;
            this.f2374c = 0;
            this.f2375d = null;
            this.f2376e = 0;
        }
    }

    static class a implements RecyclerView.i.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2368a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2369b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int[] f2370c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2371d;

        a() {
        }

        void a(int i, int i2) {
            this.f2368a = i;
            this.f2369b = i2;
        }

        void a(RecyclerView recyclerView, boolean z) {
            this.f2371d = 0;
            int[] iArr = this.f2370c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.i iVar = recyclerView.n;
            if (recyclerView.m == null || iVar == null || !iVar.p()) {
                return;
            }
            if (z) {
                if (!recyclerView.f.d()) {
                    iVar.a(recyclerView.m.a(), this);
                }
            } else if (!recyclerView.v()) {
                iVar.a(this.f2368a, this.f2369b, recyclerView.D, this);
            }
            if (this.f2371d > iVar.x) {
                iVar.x = this.f2371d;
                iVar.y = z;
                recyclerView.f2198e.b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i.a
        public void b(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.f2371d * 2;
            int[] iArr = this.f2370c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f2370c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i3 >= iArr.length) {
                int[] iArr3 = new int[i3 * 2];
                this.f2370c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f2370c;
            iArr4[i3] = i;
            iArr4[i3 + 1] = i2;
            this.f2371d++;
        }

        boolean a(int i) {
            if (this.f2370c != null) {
                int i2 = this.f2371d * 2;
                for (int i3 = 0; i3 < i2; i3 += 2) {
                    if (this.f2370c[i3] == i) {
                        return true;
                    }
                }
            }
            return false;
        }

        void a() {
            int[] iArr = this.f2370c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f2371d = 0;
        }
    }

    public void a(RecyclerView recyclerView) {
        this.f2365b.add(recyclerView);
    }

    public void b(RecyclerView recyclerView) {
        this.f2365b.remove(recyclerView);
    }

    void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f2366c == 0) {
            this.f2366c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.C.a(i, i2);
    }

    private void a() {
        b bVar;
        int size = this.f2365b.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView = this.f2365b.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.C.a(recyclerView, false);
                i += recyclerView.C.f2371d;
            }
        }
        this.f.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView2 = this.f2365b.get(i4);
            if (recyclerView2.getWindowVisibility() == 0) {
                a aVar = recyclerView2.C;
                int iAbs = Math.abs(aVar.f2368a) + Math.abs(aVar.f2369b);
                for (int i5 = 0; i5 < aVar.f2371d * 2; i5 += 2) {
                    if (i3 >= this.f.size()) {
                        bVar = new b();
                        this.f.add(bVar);
                    } else {
                        bVar = this.f.get(i3);
                    }
                    int i6 = aVar.f2370c[i5 + 1];
                    bVar.f2372a = i6 <= iAbs;
                    bVar.f2373b = iAbs;
                    bVar.f2374c = i6;
                    bVar.f2375d = recyclerView2;
                    bVar.f2376e = aVar.f2370c[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.f, f2364e);
    }

    static boolean a(RecyclerView recyclerView, int i) {
        int iC = recyclerView.g.c();
        for (int i2 = 0; i2 < iC; i2++) {
            RecyclerView.w wVarE = RecyclerView.e(recyclerView.g.d(i2));
            if (wVarE.f2265c == i && !wVarE.n()) {
                return true;
            }
        }
        return false;
    }

    private RecyclerView.w a(RecyclerView recyclerView, int i, long j) {
        if (a(recyclerView, i)) {
            return null;
        }
        RecyclerView.p pVar = recyclerView.f2198e;
        try {
            recyclerView.l();
            RecyclerView.w wVarA = pVar.a(i, false, j);
            if (wVarA != null) {
                if (wVarA.p() && !wVarA.n()) {
                    pVar.a(wVarA.f2263a);
                } else {
                    pVar.a(wVarA, false);
                }
            }
            return wVarA;
        } finally {
            recyclerView.b(false);
        }
    }

    private void a(RecyclerView recyclerView, long j) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.x && recyclerView.g.c() != 0) {
            recyclerView.c();
        }
        a aVar = recyclerView.C;
        aVar.a(recyclerView, true);
        if (aVar.f2371d != 0) {
            try {
                androidx.core.d.d.a("RV Nested Prefetch");
                recyclerView.D.a(recyclerView.m);
                for (int i = 0; i < aVar.f2371d * 2; i += 2) {
                    a(recyclerView, aVar.f2370c[i], j);
                }
            } finally {
                androidx.core.d.d.a();
            }
        }
    }

    private void a(b bVar, long j) {
        RecyclerView.w wVarA = a(bVar.f2375d, bVar.f2376e, bVar.f2372a ? Long.MAX_VALUE : j);
        if (wVarA == null || wVarA.f2264b == null || !wVarA.p() || wVarA.n()) {
            return;
        }
        a(wVarA.f2264b.get(), j);
    }

    private void b(long j) {
        for (int i = 0; i < this.f.size(); i++) {
            b bVar = this.f.get(i);
            if (bVar.f2375d == null) {
                return;
            }
            a(bVar, j);
            bVar.a();
        }
    }

    void a(long j) {
        a();
        b(j);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            androidx.core.d.d.a("RV Prefetch");
            if (!this.f2365b.isEmpty()) {
                int size = this.f2365b.size();
                long jMax = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = this.f2365b.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    a(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f2367d);
                }
            }
        } finally {
            this.f2366c = 0L;
            androidx.core.d.d.a();
        }
    }
}
