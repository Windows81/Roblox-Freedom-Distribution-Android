package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class abo<K> implements Map.Entry<K, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map.Entry<K, abm> f3763a;

    private abo(Map.Entry<K, abm> entry) {
        this.f3763a = entry;
    }

    public final abm a() {
        return this.f3763a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f3763a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f3763a.getValue() == null) {
            return null;
        }
        return abm.a();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof ack) {
            return this.f3763a.getValue().a((ack) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
