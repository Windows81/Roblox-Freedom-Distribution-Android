package android.support.v7.widget;

import android.support.v4.g.k;
import android.support.v7.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
class ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final android.support.v4.g.a<RecyclerView.ViewHolder, a> f1616a = new android.support.v4.g.a<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final android.support.v4.g.f<RecyclerView.ViewHolder> f1617b = new android.support.v4.g.f<>();

    interface b {
        void a(RecyclerView.ViewHolder viewHolder);

        void a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void b(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void c(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);
    }

    ac() {
    }

    void a() {
        this.f1616a.clear();
        this.f1617b.c();
    }

    void a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        a aVarA = this.f1616a.get(viewHolder);
        if (aVarA == null) {
            aVarA = a.a();
            this.f1616a.put(viewHolder, aVarA);
        }
        aVarA.f1620b = itemHolderInfo;
        aVarA.f1619a |= 4;
    }

    boolean a(RecyclerView.ViewHolder viewHolder) {
        a aVar = this.f1616a.get(viewHolder);
        return (aVar == null || (aVar.f1619a & 1) == 0) ? false : true;
    }

    RecyclerView.ItemAnimator.ItemHolderInfo b(RecyclerView.ViewHolder viewHolder) {
        return a(viewHolder, 4);
    }

    RecyclerView.ItemAnimator.ItemHolderInfo c(RecyclerView.ViewHolder viewHolder) {
        return a(viewHolder, 8);
    }

    private RecyclerView.ItemAnimator.ItemHolderInfo a(RecyclerView.ViewHolder viewHolder, int i) {
        a aVarC;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo = null;
        int iA = this.f1616a.a(viewHolder);
        if (iA >= 0 && (aVarC = this.f1616a.c(iA)) != null && (aVarC.f1619a & i) != 0) {
            aVarC.f1619a &= i ^ (-1);
            if (i == 4) {
                itemHolderInfo = aVarC.f1620b;
            } else if (i == 8) {
                itemHolderInfo = aVarC.f1621c;
            } else {
                throw new IllegalArgumentException("Must provide flag PRE or POST");
            }
            if ((aVarC.f1619a & 12) == 0) {
                this.f1616a.d(iA);
                a.a(aVarC);
            }
        }
        return itemHolderInfo;
    }

    void a(long j, RecyclerView.ViewHolder viewHolder) {
        this.f1617b.b(j, viewHolder);
    }

    void b(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        a aVarA = this.f1616a.get(viewHolder);
        if (aVarA == null) {
            aVarA = a.a();
            this.f1616a.put(viewHolder, aVarA);
        }
        aVarA.f1619a |= 2;
        aVarA.f1620b = itemHolderInfo;
    }

    boolean d(RecyclerView.ViewHolder viewHolder) {
        a aVar = this.f1616a.get(viewHolder);
        return (aVar == null || (aVar.f1619a & 4) == 0) ? false : true;
    }

    RecyclerView.ViewHolder a(long j) {
        return this.f1617b.a(j);
    }

    void c(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        a aVarA = this.f1616a.get(viewHolder);
        if (aVarA == null) {
            aVarA = a.a();
            this.f1616a.put(viewHolder, aVarA);
        }
        aVarA.f1621c = itemHolderInfo;
        aVarA.f1619a |= 8;
    }

    void e(RecyclerView.ViewHolder viewHolder) {
        a aVarA = this.f1616a.get(viewHolder);
        if (aVarA == null) {
            aVarA = a.a();
            this.f1616a.put(viewHolder, aVarA);
        }
        aVarA.f1619a |= 1;
    }

    void f(RecyclerView.ViewHolder viewHolder) {
        a aVar = this.f1616a.get(viewHolder);
        if (aVar != null) {
            aVar.f1619a &= -2;
        }
    }

    void a(b bVar) {
        for (int size = this.f1616a.size() - 1; size >= 0; size--) {
            RecyclerView.ViewHolder viewHolderB = this.f1616a.b(size);
            a aVarD = this.f1616a.d(size);
            if ((aVarD.f1619a & 3) == 3) {
                bVar.a(viewHolderB);
            } else if ((aVarD.f1619a & 1) != 0) {
                if (aVarD.f1620b == null) {
                    bVar.a(viewHolderB);
                } else {
                    bVar.a(viewHolderB, aVarD.f1620b, aVarD.f1621c);
                }
            } else if ((aVarD.f1619a & 14) == 14) {
                bVar.b(viewHolderB, aVarD.f1620b, aVarD.f1621c);
            } else if ((aVarD.f1619a & 12) == 12) {
                bVar.c(viewHolderB, aVarD.f1620b, aVarD.f1621c);
            } else if ((aVarD.f1619a & 4) != 0) {
                bVar.a(viewHolderB, aVarD.f1620b, null);
            } else if ((aVarD.f1619a & 8) != 0) {
                bVar.b(viewHolderB, aVarD.f1620b, aVarD.f1621c);
            } else if ((aVarD.f1619a & 2) != 0) {
            }
            a.a(aVarD);
        }
    }

    void g(RecyclerView.ViewHolder viewHolder) {
        int iB = this.f1617b.b() - 1;
        while (true) {
            if (iB < 0) {
                break;
            }
            if (viewHolder != this.f1617b.c(iB)) {
                iB--;
            } else {
                this.f1617b.a(iB);
                break;
            }
        }
        a aVarRemove = this.f1616a.remove(viewHolder);
        if (aVarRemove != null) {
            a.a(aVarRemove);
        }
    }

    void b() {
        a.b();
    }

    public void h(RecyclerView.ViewHolder viewHolder) {
        f(viewHolder);
    }

    static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static k.a<a> f1618d = new k.b(20);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1619a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RecyclerView.ItemAnimator.ItemHolderInfo f1620b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        RecyclerView.ItemAnimator.ItemHolderInfo f1621c;

        private a() {
        }

        static a a() {
            a aVarA = f1618d.a();
            return aVarA == null ? new a() : aVarA;
        }

        static void a(a aVar) {
            aVar.f1619a = 0;
            aVar.f1620b = null;
            aVar.f1621c = null;
            f1618d.a(aVar);
        }

        static void b() {
            while (f1618d.a() != null) {
            }
        }
    }
}
