package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ah {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f4018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f4021d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f4022e;
    private final Map<String, String> f;

    public ah(long j, String str, String str2, boolean z, long j2, Map<String, String> map) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.a(str2);
        this.f4018a = 0L;
        this.f4019b = str;
        this.f4020c = str2;
        this.f4021d = z;
        this.f4022e = j2;
        this.f = map != null ? new HashMap<>(map) : Collections.emptyMap();
    }

    public final long a() {
        return this.f4018a;
    }

    public final void a(long j) {
        this.f4022e = j;
    }

    public final String b() {
        return this.f4019b;
    }

    public final String c() {
        return this.f4020c;
    }

    public final boolean d() {
        return this.f4021d;
    }

    public final long e() {
        return this.f4022e;
    }

    public final Map<String, String> f() {
        return this.f;
    }
}
