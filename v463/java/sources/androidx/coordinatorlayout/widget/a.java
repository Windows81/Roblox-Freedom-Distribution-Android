package androidx.coordinatorlayout.widget;

import androidx.c.g;
import androidx.core.g.d;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d.a<ArrayList<T>> f1243a = new d.b(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g<T, ArrayList<T>> f1244b = new g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<T> f1245c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<T> f1246d = new HashSet<>();

    public void a(T t) {
        if (this.f1244b.containsKey(t)) {
            return;
        }
        this.f1244b.put(t, null);
    }

    public boolean b(T t) {
        return this.f1244b.containsKey(t);
    }

    public void a(T t, T t2) {
        if (!this.f1244b.containsKey(t) || !this.f1244b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayListC = this.f1244b.get(t);
        if (arrayListC == null) {
            arrayListC = c();
            this.f1244b.put(t, arrayListC);
        }
        arrayListC.add(t2);
    }

    public List c(T t) {
        return this.f1244b.get(t);
    }

    public List<T> d(T t) {
        int size = this.f1244b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListC = this.f1244b.c(i);
            if (arrayListC != null && arrayListC.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f1244b.b(i));
            }
        }
        return arrayList;
    }

    public boolean e(T t) {
        int size = this.f1244b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListC = this.f1244b.c(i);
            if (arrayListC != null && arrayListC.contains(t)) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        int size = this.f1244b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListC = this.f1244b.c(i);
            if (arrayListC != null) {
                a((ArrayList) arrayListC);
            }
        }
        this.f1244b.clear();
    }

    public ArrayList<T> b() {
        this.f1245c.clear();
        this.f1246d.clear();
        int size = this.f1244b.size();
        for (int i = 0; i < size; i++) {
            a(this.f1244b.b(i), this.f1245c, this.f1246d);
        }
        return this.f1245c;
    }

    private void a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.f1244b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                a(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    private ArrayList<T> c() {
        ArrayList<T> arrayListA = this.f1243a.a();
        return arrayListA == null ? new ArrayList<>() : arrayListA;
    }

    private void a(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f1243a.a(arrayList);
    }
}
