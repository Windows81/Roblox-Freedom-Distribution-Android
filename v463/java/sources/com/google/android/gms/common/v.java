package com.google.android.gms.common;

import android.util.Log;
import com.google.android.gms.common.g;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@CheckReturnValue
class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final v f3893b = new v(true, null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final boolean f3894a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Throwable f3896d;

    v(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.f3894a = z;
        this.f3895c = str;
        this.f3896d = th;
    }

    static v a() {
        return f3893b;
    }

    static v a(String str) {
        return new v(false, str, null);
    }

    static v a(String str, g.a aVar, boolean z, boolean z2) {
        return new x(str, aVar, z, z2);
    }

    static v a(String str, Throwable th) {
        return new v(false, str, th);
    }

    @Nullable
    String b() {
        return this.f3895c;
    }

    final void c() {
        if (this.f3894a) {
            return;
        }
        if (this.f3896d != null) {
            Log.d("GoogleCertificatesRslt", b(), this.f3896d);
        } else {
            Log.d("GoogleCertificatesRslt", b());
        }
    }
}
