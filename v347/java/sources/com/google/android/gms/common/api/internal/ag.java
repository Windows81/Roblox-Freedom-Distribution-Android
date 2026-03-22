package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ag<O extends a.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.common.api.a<O> f3353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final O f3354d;

    public final String a() {
        return this.f3353c.b();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ag)) {
            return false;
        }
        ag agVar = (ag) obj;
        return !this.f3351a && !agVar.f3351a && com.google.android.gms.common.internal.v.a(this.f3353c, agVar.f3353c) && com.google.android.gms.common.internal.v.a(this.f3354d, agVar.f3354d);
    }

    public final int hashCode() {
        return this.f3352b;
    }
}
