package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cg<O extends a.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.common.api.a<O> f3590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final O f3591d;

    private cg(com.google.android.gms.common.api.a<O> aVar) {
        this.f3588a = true;
        this.f3590c = aVar;
        this.f3591d = null;
        this.f3589b = System.identityHashCode(this);
    }

    private cg(com.google.android.gms.common.api.a<O> aVar, O o) {
        this.f3588a = false;
        this.f3590c = aVar;
        this.f3591d = o;
        this.f3589b = com.google.android.gms.common.internal.y.a(aVar, o);
    }

    public static <O extends a.d> cg<O> a(com.google.android.gms.common.api.a<O> aVar) {
        return new cg<>(aVar);
    }

    public static <O extends a.d> cg<O> a(com.google.android.gms.common.api.a<O> aVar, O o) {
        return new cg<>(aVar, o);
    }

    public final String a() {
        return this.f3590c.d();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cg)) {
            return false;
        }
        cg cgVar = (cg) obj;
        return !this.f3588a && !cgVar.f3588a && com.google.android.gms.common.internal.y.a(this.f3590c, cgVar.f3590c) && com.google.android.gms.common.internal.y.a(this.f3591d, cgVar.f3591d);
    }

    public final int hashCode() {
        return this.f3589b;
    }
}
