package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f6016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f6018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f6019d;
    private long e;
    private final Map<String, String> f;

    public u(long j, String str, String str2, boolean z, long j2, Map<String, String> map) {
        com.google.android.gms.common.internal.w.a(str);
        com.google.android.gms.common.internal.w.a(str2);
        this.f6016a = 0L;
        this.f6017b = str;
        this.f6018c = str2;
        this.f6019d = z;
        this.e = j2;
        if (map != null) {
            this.f = new HashMap(map);
        } else {
            this.f = Collections.emptyMap();
        }
    }

    public final long a() {
        return this.f6016a;
    }

    public final void a(long j) {
        this.e = j;
    }

    public final String b() {
        return this.f6017b;
    }

    public final String c() {
        return this.f6018c;
    }

    public final boolean d() {
        return this.f6019d;
    }

    public final long e() {
        return this.e;
    }

    public final Map<String, String> f() {
        return this.f;
    }
}
