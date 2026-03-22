package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class alp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final long f4177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4179c;

    alp(long j, String str, int i) {
        this.f4177a = j;
        this.f4178b = str;
        this.f4179c = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof alp)) {
            return false;
        }
        return ((alp) obj).f4177a == this.f4177a && ((alp) obj).f4179c == this.f4179c;
    }

    public final int hashCode() {
        return (int) this.f4177a;
    }
}
