package com.google.firebase.components;

import com.google.android.gms.common.internal.aa;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f5146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5148c;

    private f(Class<?> cls, int i, int i2) {
        this.f5146a = (Class) aa.a(cls, "Null dependency anInterface.");
        this.f5147b = i;
        this.f5148c = i2;
    }

    public static f a(Class<?> cls) {
        return new f(cls, 1, 0);
    }

    public final Class<?> a() {
        return this.f5146a;
    }

    public final boolean b() {
        return this.f5147b == 1;
    }

    public final boolean c() {
        return this.f5148c == 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (this.f5146a == fVar.f5146a && this.f5147b == fVar.f5147b && this.f5148c == fVar.f5148c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f5146a.hashCode() ^ 1000003) * 1000003) ^ this.f5147b) * 1000003) ^ this.f5148c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f5146a);
        sb.append(", required=");
        sb.append(this.f5147b == 1);
        sb.append(", direct=");
        sb.append(this.f5148c == 0);
        sb.append("}");
        return sb.toString();
    }
}
