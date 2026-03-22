package android.support.design.widget;

import android.support.v4.g.k;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k.a<ArrayList<T>> f392a = new k.b(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final android.support.v4.g.m<T, ArrayList<T>> f393b = new android.support.v4.g.m<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<T> f394c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<T> f395d = new HashSet<>();

    e() {
    }

    void a(T t) {
        if (!this.f393b.containsKey(t)) {
            this.f393b.put(t, null);
        }
    }

    boolean b(T t) {
        return this.f393b.containsKey(t);
    }

    void a(T t, T t2) {
        if (!this.f393b.containsKey(t) || !this.f393b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayListC = this.f393b.get(t);
        if (arrayListC == null) {
            arrayListC = c();
            this.f393b.put(t, arrayListC);
        }
        arrayListC.add(t2);
    }

    List c(T t) {
        return this.f393b.get(t);
    }

    List<T> d(T t) {
        ArrayList arrayList = null;
        int size = this.f393b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListC = this.f393b.c(i);
            if (arrayListC != null && arrayListC.contains(t)) {
                ArrayList arrayList2 = arrayList == null ? new ArrayList() : arrayList;
                arrayList2.add(this.f393b.b(i));
                arrayList = arrayList2;
            }
        }
        return arrayList;
    }

    boolean e(T t) {
        int size = this.f393b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListC = this.f393b.c(i);
            if (arrayListC != null && arrayListC.contains(t)) {
                return true;
            }
        }
        return false;
    }

    void a() {
        int size = this.f393b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListC = this.f393b.c(i);
            if (arrayListC != null) {
                a((ArrayList) arrayListC);
            }
        }
        this.f393b.clear();
    }

    ArrayList<T> b() {
        this.f394c.clear();
        this.f395d.clear();
        int size = this.f393b.size();
        for (int i = 0; i < size; i++) {
            a(this.f393b.b(i), this.f394c, this.f395d);
        }
        return this.f394c;
    }

    private void a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (hashSet.contains(t)) {
                throw new RuntimeException("This graph contains cyclic dependencies");
            }
            hashSet.add(t);
            ArrayList<T> arrayList2 = this.f393b.get(t);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    a(arrayList2.get(i), arrayList, hashSet);
                }
            }
            hashSet.remove(t);
            arrayList.add(t);
        }
    }

    private ArrayList<T> c() {
        ArrayList<T> arrayListA = this.f392a.a();
        if (arrayListA == null) {
            return new ArrayList<>();
        }
        return arrayListA;
    }

    private void a(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f392a.a(arrayList);
    }
}
