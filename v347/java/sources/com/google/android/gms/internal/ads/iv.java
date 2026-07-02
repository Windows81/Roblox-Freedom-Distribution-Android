package com.google.android.gms.internal.ads;

import android.os.Bundle;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class iv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("mLock")
    private int f5150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    private int f5151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final iw f5152d;
    private final String e;

    private iv(iw iwVar, String str) {
        this.f5149a = new Object();
        this.f5152d = iwVar;
        this.e = str;
    }

    public iv(String str) {
        this(com.google.android.gms.ads.internal.aw.j(), str);
    }

    public final String a() {
        return this.e;
    }

    public final void a(int i, int i2) {
        synchronized (this.f5149a) {
            this.f5150b = i;
            this.f5151c = i2;
            this.f5152d.a(this);
        }
    }

    public final Bundle b() {
        Bundle bundle;
        synchronized (this.f5149a) {
            bundle = new Bundle();
            bundle.putInt("pmnli", this.f5150b);
            bundle.putInt("pmnll", this.f5151c);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        iv ivVar = (iv) obj;
        return this.e != null ? this.e.equals(ivVar.e) : ivVar.e == null;
    }

    public final int hashCode() {
        if (this.e != null) {
            return this.e.hashCode();
        }
        return 0;
    }
}
