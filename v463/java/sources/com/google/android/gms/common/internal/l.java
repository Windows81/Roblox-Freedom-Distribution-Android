package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f3804a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static l f3805b;

    protected static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3806a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f3807b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ComponentName f3808c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f3809d;

        public a(String str, String str2, int i) {
            this.f3806a = aa.a(str);
            this.f3807b = aa.a(str2);
            this.f3809d = i;
        }

        public final Intent a(Context context) {
            return this.f3806a != null ? new Intent(this.f3806a).setPackage(this.f3807b) : new Intent().setComponent(this.f3808c);
        }

        public final String a() {
            return this.f3807b;
        }

        public final ComponentName b() {
            return this.f3808c;
        }

        public final int c() {
            return this.f3809d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y.a(this.f3806a, aVar.f3806a) && y.a(this.f3807b, aVar.f3807b) && y.a(this.f3808c, aVar.f3808c) && this.f3809d == aVar.f3809d;
        }

        public final int hashCode() {
            return y.a(this.f3806a, this.f3807b, this.f3808c, Integer.valueOf(this.f3809d));
        }

        public final String toString() {
            String str = this.f3806a;
            return str == null ? this.f3808c.flattenToString() : str;
        }
    }

    public static l a(Context context) {
        synchronized (f3804a) {
            if (f3805b == null) {
                f3805b = new ak(context.getApplicationContext());
            }
        }
        return f3805b;
    }

    protected abstract boolean a(a aVar, ServiceConnection serviceConnection, String str);

    public boolean a(String str, String str2, int i, ServiceConnection serviceConnection, String str3) {
        return a(new a(str, str2, i), serviceConnection, str3);
    }

    protected abstract void b(a aVar, ServiceConnection serviceConnection, String str);

    public void b(String str, String str2, int i, ServiceConnection serviceConnection, String str3) {
        b(new a(str, str2, i), serviceConnection, str3);
    }
}
