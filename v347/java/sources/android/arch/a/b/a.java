package android.arch.a.b;

import android.arch.a.b.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a<K, V> extends b<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<K, b.c<K, V>> f23a = new HashMap<>();

    @Override // android.arch.a.b.b
    protected b.c<K, V> a(K k) {
        return this.f23a.get(k);
    }

    @Override // android.arch.a.b.b
    public V a(K k, V v) {
        b.c<K, V> cVarA = a(k);
        if (cVarA != null) {
            return cVarA.f29b;
        }
        this.f23a.put(k, b(k, v));
        return null;
    }

    @Override // android.arch.a.b.b
    public V b(K k) {
        V v = (V) super.b(k);
        this.f23a.remove(k);
        return v;
    }

    public boolean c(K k) {
        return this.f23a.containsKey(k);
    }

    public Map.Entry<K, V> d(K k) {
        if (c(k)) {
            return this.f23a.get(k).f31d;
        }
        return null;
    }
}
