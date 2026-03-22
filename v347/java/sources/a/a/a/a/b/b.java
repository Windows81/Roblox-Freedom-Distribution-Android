package a.a.a.a.b;

import java.io.Serializable;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class b<L, R> implements Serializable, Comparable<b<L, R>>, Map.Entry<L, R> {
    public abstract L a();

    public abstract R b();

    public static <L, R> b<L, R> a(L l, R r) {
        return new a(l, r);
    }

    @Override // java.util.Map.Entry
    public final L getKey() {
        return a();
    }

    @Override // java.util.Map.Entry
    public R getValue() {
        return b();
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(b<L, R> bVar) {
        return new a.a.a.a.a.a().a(a(), bVar.a()).a(b(), bVar.b()).a();
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return a.a.a.a.b.a(getKey(), entry.getKey()) && a.a.a.a.b.a(getValue(), entry.getValue());
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return (getKey() == null ? 0 : getKey().hashCode()) ^ (getValue() != null ? getValue().hashCode() : 0);
    }

    public String toString() {
        return new StringBuilder().append('(').append(a()).append(',').append(b()).append(')').toString();
    }
}
