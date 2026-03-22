package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.SystemClock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
final class il {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f5125a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5126b = -1;

    public final long a() {
        return this.f5126b;
    }

    public final void b() {
        this.f5126b = SystemClock.elapsedRealtime();
    }

    public final void c() {
        this.f5125a = SystemClock.elapsedRealtime();
    }

    public final Bundle d() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.f5125a);
        bundle.putLong("tclose", this.f5126b);
        return bundle;
    }
}
