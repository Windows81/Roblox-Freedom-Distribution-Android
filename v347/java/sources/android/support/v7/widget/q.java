package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final ThreadLocal<q> f1698a = new ThreadLocal<>();
    static Comparator<b> e = new Comparator<b>() { // from class: android.support.v7.widget.q.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(b bVar, b bVar2) {
            if ((bVar.f1709d == null) != (bVar2.f1709d == null)) {
                return bVar.f1709d == null ? 1 : -1;
            }
            if (bVar.f1706a != bVar2.f1706a) {
                return bVar.f1706a ? -1 : 1;
            }
            int i = bVar2.f1707b - bVar.f1707b;
            if (i == 0) {
                int i2 = bVar.f1708c - bVar2.f1708c;
                if (i2 == 0) {
                    return 0;
                }
                return i2;
            }
            return i;
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f1700c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f1701d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<RecyclerView> f1699b = new ArrayList<>();
    private ArrayList<b> f = new ArrayList<>();

    q() {
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1706a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1707b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1708c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RecyclerView f1709d;
        public int e;

        b() {
        }

        public void a() {
            this.f1706a = false;
            this.f1707b = 0;
            this.f1708c = 0;
            this.f1709d = null;
            this.e = 0;
        }
    }

    static class a implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1702a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1703b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int[] f1704c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1705d;

        a() {
        }

        void a(int i, int i2) {
            this.f1702a = i;
            this.f1703b = i2;
        }

        void a(RecyclerView recyclerView, boolean z) {
            this.f1705d = 0;
            if (this.f1704c != null) {
                Arrays.fill(this.f1704c, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (recyclerView.mAdapter != null && layoutManager != null && layoutManager.isItemPrefetchEnabled()) {
                if (z) {
                    if (!recyclerView.mAdapterHelper.d()) {
                        layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                    }
                } else if (!recyclerView.hasPendingAdapterUpdates()) {
                    layoutManager.collectAdjacentPrefetchPositions(this.f1702a, this.f1703b, recyclerView.mState, this);
                }
                if (this.f1705d > layoutManager.mPrefetchMaxCountObserved) {
                    layoutManager.mPrefetchMaxCountObserved = this.f1705d;
                    layoutManager.mPrefetchMaxObservedInInitialPrefetch = z;
                    recyclerView.mRecycler.updateViewCacheSize();
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry
        public void addPosition(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.f1705d * 2;
            if (this.f1704c == null) {
                this.f1704c = new int[4];
                Arrays.fill(this.f1704c, -1);
            } else if (i3 >= this.f1704c.length) {
                int[] iArr = this.f1704c;
                this.f1704c = new int[i3 * 2];
                System.arraycopy(iArr, 0, this.f1704c, 0, iArr.length);
            }
            this.f1704c[i3] = i;
            this.f1704c[i3 + 1] = i2;
            this.f1705d++;
        }

        boolean a(int i) {
            if (this.f1704c == null) {
                return false;
            }
            int i2 = this.f1705d * 2;
            for (int i3 = 0; i3 < i2; i3 += 2) {
                if (this.f1704c[i3] == i) {
                    return true;
                }
            }
            return false;
        }

        void a() {
            if (this.f1704c != null) {
                Arrays.fill(this.f1704c, -1);
            }
            this.f1705d = 0;
        }
    }

    public void a(RecyclerView recyclerView) {
        this.f1699b.add(recyclerView);
    }

    public void b(RecyclerView recyclerView) {
        this.f1699b.remove(recyclerView);
    }

    void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f1700c == 0) {
            this.f1700c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.a(i, i2);
    }

    private void a() {
        b bVar;
        int i;
        int size = this.f1699b.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            RecyclerView recyclerView = this.f1699b.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.a(recyclerView, false);
                i = recyclerView.mPrefetchRegistry.f1705d + i3;
            } else {
                i = i3;
            }
            i2++;
            i3 = i;
        }
        this.f.ensureCapacity(i3);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView2 = this.f1699b.get(i5);
            if (recyclerView2.getWindowVisibility() == 0) {
                a aVar = recyclerView2.mPrefetchRegistry;
                int iAbs = Math.abs(aVar.f1702a) + Math.abs(aVar.f1703b);
                int i6 = i4;
                for (int i7 = 0; i7 < aVar.f1705d * 2; i7 += 2) {
                    if (i6 >= this.f.size()) {
                        bVar = new b();
                        this.f.add(bVar);
                    } else {
                        bVar = this.f.get(i6);
                    }
                    int i8 = aVar.f1704c[i7 + 1];
                    bVar.f1706a = i8 <= iAbs;
                    bVar.f1707b = iAbs;
                    bVar.f1708c = i8;
                    bVar.f1709d = recyclerView2;
                    bVar.e = aVar.f1704c[i7];
                    i6++;
                }
                i4 = i6;
            }
        }
        Collections.sort(this.f, e);
    }

    static boolean a(RecyclerView recyclerView, int i) {
        int iC = recyclerView.mChildHelper.c();
        for (int i2 = 0; i2 < iC; i2++) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.d(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private RecyclerView.ViewHolder a(RecyclerView recyclerView, int i, long j) {
        if (a(recyclerView, i)) {
            return null;
        }
        RecyclerView.Recycler recycler = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.ViewHolder viewHolderTryGetViewHolderForPositionByDeadline = recycler.tryGetViewHolderForPositionByDeadline(i, false, j);
            if (viewHolderTryGetViewHolderForPositionByDeadline != null) {
                if (viewHolderTryGetViewHolderForPositionByDeadline.isBound() && !viewHolderTryGetViewHolderForPositionByDeadline.isInvalid()) {
                    recycler.recycleView(viewHolderTryGetViewHolderForPositionByDeadline.itemView);
                } else {
                    recycler.addViewHolderToRecycledViewPool(viewHolderTryGetViewHolderForPositionByDeadline, false);
                }
            }
            return viewHolderTryGetViewHolderForPositionByDeadline;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    private void a(RecyclerView recyclerView, long j) {
        if (recyclerView != null) {
            if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.c() != 0) {
                recyclerView.removeAndRecycleViews();
            }
            a aVar = recyclerView.mPrefetchRegistry;
            aVar.a(recyclerView, true);
            if (aVar.f1705d != 0) {
                try {
                    android.support.v4.os.e.a("RV Nested Prefetch");
                    recyclerView.mState.prepareForNestedPrefetch(recyclerView.mAdapter);
                    for (int i = 0; i < aVar.f1705d * 2; i += 2) {
                        a(recyclerView, aVar.f1704c[i], j);
                    }
                } finally {
                    android.support.v4.os.e.a();
                }
            }
        }
    }

    private void a(b bVar, long j) {
        RecyclerView.ViewHolder viewHolderA = a(bVar.f1709d, bVar.e, bVar.f1706a ? Long.MAX_VALUE : j);
        if (viewHolderA != null && viewHolderA.mNestedRecyclerView != null && viewHolderA.isBound() && !viewHolderA.isInvalid()) {
            a(viewHolderA.mNestedRecyclerView.get(), j);
        }
    }

    private void b(long j) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f.size()) {
                b bVar = this.f.get(i2);
                if (bVar.f1709d != null) {
                    a(bVar, j);
                    bVar.a();
                    i = i2 + 1;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    void a(long j) {
        a();
        b(j);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            android.support.v4.os.e.a("RV Prefetch");
            if (this.f1699b.isEmpty()) {
                return;
            }
            int size = this.f1699b.size();
            int i = 0;
            long jMax = 0;
            while (i < size) {
                RecyclerView recyclerView = this.f1699b.get(i);
                i++;
                jMax = recyclerView.getWindowVisibility() == 0 ? Math.max(recyclerView.getDrawingTime(), jMax) : jMax;
            }
            if (jMax == 0) {
                return;
            }
            a(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f1701d);
        } finally {
            this.f1700c = 0L;
            android.support.v4.os.e.a();
        }
    }
}
