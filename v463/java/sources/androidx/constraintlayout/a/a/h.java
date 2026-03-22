package androidx.constraintlayout.a.a;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<f> f1148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f1152e;
    List<f> f;
    List<f> g;
    HashSet<f> h;
    HashSet<f> i;
    List<f> j;
    List<f> k;

    h(List<f> list) {
        this.f1149b = -1;
        this.f1150c = -1;
        this.f1151d = false;
        this.f1152e = new int[]{-1, -1};
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = new HashSet<>();
        this.i = new HashSet<>();
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.f1148a = list;
    }

    h(List<f> list, boolean z) {
        this.f1149b = -1;
        this.f1150c = -1;
        this.f1151d = false;
        this.f1152e = new int[]{-1, -1};
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = new HashSet<>();
        this.i = new HashSet<>();
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.f1148a = list;
        this.f1151d = z;
    }

    public List<f> a(int i) {
        if (i == 0) {
            return this.f;
        }
        if (i == 1) {
            return this.g;
        }
        return null;
    }

    Set<f> b(int i) {
        if (i == 0) {
            return this.h;
        }
        if (i == 1) {
            return this.i;
        }
        return null;
    }

    void a(f fVar, int i) {
        if (i == 0) {
            this.h.add(fVar);
        } else if (i == 1) {
            this.i.add(fVar);
        }
    }

    List<f> a() {
        if (!this.j.isEmpty()) {
            return this.j;
        }
        int size = this.f1148a.size();
        for (int i = 0; i < size; i++) {
            f fVar = this.f1148a.get(i);
            if (!fVar.W) {
                a((ArrayList<f>) this.j, fVar);
            }
        }
        this.k.clear();
        this.k.addAll(this.f1148a);
        this.k.removeAll(this.j);
        return this.j;
    }

    private void a(ArrayList<f> arrayList, f fVar) {
        if (fVar.Y) {
            return;
        }
        arrayList.add(fVar);
        fVar.Y = true;
        if (fVar.h()) {
            return;
        }
        if (fVar instanceof j) {
            j jVar = (j) fVar;
            int i = jVar.aj;
            for (int i2 = 0; i2 < i; i2++) {
                a(arrayList, jVar.ai[i2]);
            }
        }
        int length = fVar.A.length;
        for (int i3 = 0; i3 < length; i3++) {
            e eVar = fVar.A[i3].f1120c;
            if (eVar != null) {
                f fVar2 = eVar.f1118a;
                if (eVar != null && fVar2 != fVar.k()) {
                    a(arrayList, fVar2);
                }
            }
        }
    }

    void b() {
        int size = this.k.size();
        for (int i = 0; i < size; i++) {
            a(this.k.get(i));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(androidx.constraintlayout.a.a.f r7) {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.h.a(androidx.constraintlayout.a.a.f):void");
    }
}
