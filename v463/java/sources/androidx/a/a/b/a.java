package androidx.a.a.b;

import androidx.a.a.b.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a<K, V> extends b<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<K, b.c<K, V>> f569b = new HashMap<>();

    @Override // androidx.a.a.b.b
    protected b.c<K, V> a(K k) {
        return this.f569b.get(k);
    }

    @Override // androidx.a.a.b.b
    public V a(K k, V v) {
        b.c<K, V> cVarA = a(k);
        if (cVarA != null) {
            return cVarA.f575b;
        }
        this.f569b.put(k, b(k, v));
        return null;
    }

    @Override // androidx.a.a.b.b
    public V b(K k) {
        V v = (V) super.b(k);
        this.f569b.remove(k);
        return v;
    }

    public boolean c(K k) {
        return this.f569b.containsKey(k);
    }

    public Map.Entry<K, V> d(K k) {
        if (c(k)) {
            return this.f569b.get(k).f577d;
        }
        return null;
    }
}
