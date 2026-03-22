package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class pg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<apn> f5428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final InputStream f5430d;

    public pg(int i, List<apn> list) {
        this(i, list, -1, null);
    }

    public pg(int i, List<apn> list, int i2, InputStream inputStream) {
        this.f5427a = i;
        this.f5428b = list;
        this.f5429c = i2;
        this.f5430d = inputStream;
    }

    public final int a() {
        return this.f5427a;
    }

    public final List<apn> b() {
        return Collections.unmodifiableList(this.f5428b);
    }

    public final int c() {
        return this.f5429c;
    }

    public final InputStream d() {
        return this.f5430d;
    }
}
