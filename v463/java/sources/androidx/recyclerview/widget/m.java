package androidx.recyclerview.widget;

import androidx.core.g.d;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final androidx.c.a<RecyclerView.w, a> f2396a = new androidx.c.a<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final androidx.c.d<RecyclerView.w> f2397b = new androidx.c.d<>();

    interface b {
        void a(RecyclerView.w wVar);

        void a(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2);

        void b(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2);

        void c(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2);
    }

    m() {
    }

    void a() {
        this.f2396a.clear();
        this.f2397b.c();
    }

    void a(RecyclerView.w wVar, RecyclerView.f.c cVar) {
        a aVarA = this.f2396a.get(wVar);
        if (aVarA == null) {
            aVarA = a.a();
            this.f2396a.put(wVar, aVarA);
        }
        aVarA.f2400b = cVar;
        aVarA.f2399a |= 4;
    }

    boolean a(RecyclerView.w wVar) {
        a aVar = this.f2396a.get(wVar);
        return (aVar == null || (aVar.f2399a & 1) == 0) ? false : true;
    }

    RecyclerView.f.c b(RecyclerView.w wVar) {
        return a(wVar, 4);
    }

    RecyclerView.f.c c(RecyclerView.w wVar) {
        return a(wVar, 8);
    }

    private RecyclerView.f.c a(RecyclerView.w wVar, int i) {
        a aVarC;
        RecyclerView.f.c cVar;
        int iA = this.f2396a.a(wVar);
        if (iA < 0 || (aVarC = this.f2396a.c(iA)) == null || (aVarC.f2399a & i) == 0) {
            return null;
        }
        aVarC.f2399a &= i ^ (-1);
        if (i == 4) {
            cVar = aVarC.f2400b;
        } else if (i == 8) {
            cVar = aVarC.f2401c;
        } else {
            throw new IllegalArgumentException("Must provide flag PRE or POST");
        }
        if ((aVarC.f2399a & 12) == 0) {
            this.f2396a.d(iA);
            a.a(aVarC);
        }
        return cVar;
    }

    void a(long j, RecyclerView.w wVar) {
        this.f2397b.b(j, wVar);
    }

    void b(RecyclerView.w wVar, RecyclerView.f.c cVar) {
        a aVarA = this.f2396a.get(wVar);
        if (aVarA == null) {
            aVarA = a.a();
            this.f2396a.put(wVar, aVarA);
        }
        aVarA.f2399a |= 2;
        aVarA.f2400b = cVar;
    }

    boolean d(RecyclerView.w wVar) {
        a aVar = this.f2396a.get(wVar);
        return (aVar == null || (aVar.f2399a & 4) == 0) ? false : true;
    }

    RecyclerView.w a(long j) {
        return this.f2397b.a(j);
    }

    void c(RecyclerView.w wVar, RecyclerView.f.c cVar) {
        a aVarA = this.f2396a.get(wVar);
        if (aVarA == null) {
            aVarA = a.a();
            this.f2396a.put(wVar, aVarA);
        }
        aVarA.f2401c = cVar;
        aVarA.f2399a |= 8;
    }

    void e(RecyclerView.w wVar) {
        a aVarA = this.f2396a.get(wVar);
        if (aVarA == null) {
            aVarA = a.a();
            this.f2396a.put(wVar, aVarA);
        }
        aVarA.f2399a |= 1;
    }

    void f(RecyclerView.w wVar) {
        a aVar = this.f2396a.get(wVar);
        if (aVar == null) {
            return;
        }
        aVar.f2399a &= -2;
    }

    void a(b bVar) {
        for (int size = this.f2396a.size() - 1; size >= 0; size--) {
            RecyclerView.w wVarB = this.f2396a.b(size);
            a aVarD = this.f2396a.d(size);
            if ((aVarD.f2399a & 3) == 3) {
                bVar.a(wVarB);
            } else if ((aVarD.f2399a & 1) != 0) {
                if (aVarD.f2400b == null) {
                    bVar.a(wVarB);
                } else {
                    bVar.a(wVarB, aVarD.f2400b, aVarD.f2401c);
                }
            } else if ((aVarD.f2399a & 14) == 14) {
                bVar.b(wVarB, aVarD.f2400b, aVarD.f2401c);
            } else if ((aVarD.f2399a & 12) == 12) {
                bVar.c(wVarB, aVarD.f2400b, aVarD.f2401c);
            } else if ((aVarD.f2399a & 4) != 0) {
                bVar.a(wVarB, aVarD.f2400b, null);
            } else if ((aVarD.f2399a & 8) != 0) {
                bVar.b(wVarB, aVarD.f2400b, aVarD.f2401c);
            } else {
                int i = aVarD.f2399a;
            }
            a.a(aVarD);
        }
    }

    void g(RecyclerView.w wVar) {
        int iB = this.f2397b.b() - 1;
        while (true) {
            if (iB < 0) {
                break;
            }
            if (wVar == this.f2397b.c(iB)) {
                this.f2397b.a(iB);
                break;
            }
            iB--;
        }
        a aVarRemove = this.f2396a.remove(wVar);
        if (aVarRemove != null) {
            a.a(aVarRemove);
        }
    }

    void b() {
        a.b();
    }

    public void h(RecyclerView.w wVar) {
        f(wVar);
    }

    static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static d.a<a> f2398d = new d.b(20);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2399a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RecyclerView.f.c f2400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        RecyclerView.f.c f2401c;

        private a() {
        }

        static a a() {
            a aVarA = f2398d.a();
            return aVarA == null ? new a() : aVarA;
        }

        static void a(a aVar) {
            aVar.f2399a = 0;
            aVar.f2400b = null;
            aVar.f2401c = null;
            f2398d.a(aVar);
        }

        static void b() {
            while (f2398d.a() != null) {
            }
        }
    }
}
