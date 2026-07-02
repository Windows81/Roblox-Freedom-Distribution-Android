package com.google.c.b;

import com.google.c.b.aa;
import com.google.c.b.z;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class d<K, V> extends y<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final transient Map.Entry<K, V>[] f6114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final transient z<K, V>[] f6115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final transient int f6116c;

    static <K, V> d<K, V> a(int i, Map.Entry<K, V>[] entryArr) {
        z aVar;
        com.google.c.a.e.b(i, entryArr.length);
        Map.Entry<K, V>[] entryArrA = i == entryArr.length ? entryArr : z.a(i);
        int iA = s.a(i, 1.2d);
        z[] zVarArrA = z.a(iA);
        int i2 = iA - 1;
        for (int i3 = 0; i3 < i; i3++) {
            Map.Entry<K, V> entry = entryArr[i3];
            K key = entry.getKey();
            V value = entry.getValue();
            p.a(key, value);
            int iA2 = s.a(key.hashCode()) & i2;
            z zVar = zVarArrA[iA2];
            if (zVar == null) {
                aVar = (entry instanceof z) && ((z) entry).c() ? (z) entry : new z(key, value);
            } else {
                aVar = new z.a(key, value, zVar);
            }
            zVarArrA[iA2] = aVar;
            entryArrA[i3] = aVar;
            a(key, aVar, (z<?, ?>) zVar);
        }
        return new d<>(entryArrA, zVarArrA, i2);
    }

    private d(Map.Entry<K, V>[] entryArr, z<K, V>[] zVarArr, int i) {
        this.f6114a = entryArr;
        this.f6115b = zVarArr;
        this.f6116c = i;
    }

    static void a(Object obj, Map.Entry<?, ?> entry, z<?, ?> zVar) {
        while (zVar != null) {
            a(!obj.equals(zVar.getKey()), "key", entry, zVar);
            zVar = zVar.a();
        }
    }

    @Override // com.google.c.b.y, java.util.Map
    public V get(Object obj) {
        return (V) a(obj, this.f6115b, this.f6116c);
    }

    static <V> V a(Object obj, z<?, V>[] zVarArr, int i) {
        if (obj == null) {
            return null;
        }
        for (z<?, V> zVarA = zVarArr[s.a(obj.hashCode()) & i]; zVarA != null; zVarA = zVarA.a()) {
            if (obj.equals(zVarA.getKey())) {
                return zVarA.getValue();
            }
        }
        return null;
    }

    @Override // java.util.Map
    public int size() {
        return this.f6114a.length;
    }

    @Override // com.google.c.b.y
    boolean c() {
        return false;
    }

    @Override // com.google.c.b.y
    ad<Map.Entry<K, V>> a() {
        return new aa.a(this, this.f6114a);
    }
}
