package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class adn<K, V> implements Comparable<adn>, Map.Entry<K, V> {

    /* JADX INFO: Incorrect field signature: TK; */
    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Comparable f3836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private V f3837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ adg f3838c;

    /* JADX WARN: Multi-variable type inference failed */
    adn(adg adgVar, K k, V v) {
        this.f3838c = adgVar;
        this.f3836a = k;
        this.f3837b = v;
    }

    adn(adg adgVar, Map.Entry<K, V> entry) {
        this(adgVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(adn adnVar) {
        return ((Comparable) getKey()).compareTo((Comparable) adnVar.getKey());
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return a(this.f3836a, entry.getKey()) && a(this.f3837b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f3836a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f3837b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return (this.f3836a == null ? 0 : this.f3836a.hashCode()) ^ (this.f3837b != null ? this.f3837b.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f3838c.f();
        V v2 = this.f3837b;
        this.f3837b = v;
        return v2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f3836a);
        String strValueOf2 = String.valueOf(this.f3837b);
        return new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(strValueOf2).length()).append(strValueOf).append("=").append(strValueOf2).toString();
    }
}
