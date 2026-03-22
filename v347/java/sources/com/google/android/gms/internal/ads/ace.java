package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ace<K, V> extends LinkedHashMap<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ace f3789b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f3790a;

    static {
        ace aceVar = new ace();
        f3789b = aceVar;
        aceVar.f3790a = false;
    }

    private ace() {
        this.f3790a = true;
    }

    private ace(Map<K, V> map) {
        super(map);
        this.f3790a = true;
    }

    private static int a(Object obj) {
        if (obj instanceof byte[]) {
            return abf.c((byte[]) obj);
        }
        if (obj instanceof abg) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    public static <K, V> ace<K, V> a() {
        return f3789b;
    }

    private final void e() {
        if (!this.f3790a) {
            throw new UnsupportedOperationException();
        }
    }

    public final void a(ace<K, V> aceVar) {
        e();
        if (aceVar.isEmpty()) {
            return;
        }
        putAll(aceVar);
    }

    public final ace<K, V> b() {
        return isEmpty() ? new ace<>() : new ace<>(this);
    }

    public final void c() {
        this.f3790a = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        e();
        super.clear();
    }

    public final boolean d() {
        return this.f3790a;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r3 = 1
            r4 = 0
            boolean r0 = r7 instanceof java.util.Map
            if (r0 == 0) goto L62
            java.util.Map r7 = (java.util.Map) r7
            if (r6 == r7) goto L60
            int r0 = r6.size()
            int r1 = r7.size()
            if (r0 == r1) goto L19
            r0 = r4
        L15:
            if (r0 == 0) goto L62
            r0 = r3
        L18:
            return r0
        L19:
            java.util.Set r0 = r6.entrySet()
            java.util.Iterator r5 = r0.iterator()
        L21:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L60
            java.lang.Object r0 = r5.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getKey()
            boolean r1 = r7.containsKey(r1)
            if (r1 != 0) goto L39
            r0 = r4
            goto L15
        L39:
            java.lang.Object r1 = r0.getValue()
            java.lang.Object r0 = r0.getKey()
            java.lang.Object r2 = r7.get(r0)
            boolean r0 = r1 instanceof byte[]
            if (r0 == 0) goto L5b
            boolean r0 = r2 instanceof byte[]
            if (r0 == 0) goto L5b
            r0 = r1
            byte[] r0 = (byte[]) r0
            r1 = r2
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
        L57:
            if (r0 != 0) goto L21
            r0 = r4
            goto L15
        L5b:
            boolean r0 = r1.equals(r2)
            goto L57
        L60:
            r0 = r3
            goto L15
        L62:
            r0 = r4
            goto L18
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ace.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iA = 0;
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        while (true) {
            int i = iA;
            if (!it.hasNext()) {
                return i;
            }
            Map.Entry<K, V> next = it.next();
            iA = (a(next.getValue()) ^ a(next.getKey())) + i;
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        e();
        abf.a(k);
        abf.a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        e();
        for (K k : map.keySet()) {
            abf.a(k);
            abf.a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        e();
        return (V) super.remove(obj);
    }
}
