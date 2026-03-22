package microsoft.aspnet.signalr.client;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class SimpleEntry<K, V> implements Map.Entry<K, V> {
    K mKey;
    V mValue;

    public SimpleEntry(K k, V v) {
        this.mKey = k;
        this.mValue = v;
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return this.mKey;
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return this.mValue;
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        this.mValue = v;
        return this.mValue;
    }
}
