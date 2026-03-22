package com.roblox.client.datastructures;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f5980a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5981b;

    public d(int i, T t) {
        this.f5981b = i;
        this.f5980a = t;
    }

    public boolean equals(Object obj) {
        T t;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f5981b != dVar.f5981b || (t = this.f5980a) == null) {
            return dVar.f5980a == null;
        }
        return t.equals(dVar.f5980a);
    }
}
