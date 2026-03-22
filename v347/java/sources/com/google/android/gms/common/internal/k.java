package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f3502a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static k f3503b;

    protected static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3504a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f3505b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ComponentName f3506c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f3507d;

        public a(String str, String str2, int i) {
            this.f3504a = w.a(str);
            this.f3505b = w.a(str2);
            this.f3507d = i;
        }

        public final Intent a(Context context) {
            return this.f3504a != null ? new Intent(this.f3504a).setPackage(this.f3505b) : new Intent().setComponent(this.f3506c);
        }

        public final String a() {
            return this.f3505b;
        }

        public final ComponentName b() {
            return this.f3506c;
        }

        public final int c() {
            return this.f3507d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return v.a(this.f3504a, aVar.f3504a) && v.a(this.f3505b, aVar.f3505b) && v.a(this.f3506c, aVar.f3506c) && this.f3507d == aVar.f3507d;
        }

        public final int hashCode() {
            return v.a(this.f3504a, this.f3505b, this.f3506c, Integer.valueOf(this.f3507d));
        }

        public final String toString() {
            return this.f3504a == null ? this.f3506c.flattenToString() : this.f3504a;
        }
    }

    public static k a(Context context) {
        synchronized (f3502a) {
            if (f3503b == null) {
                f3503b = new af(context.getApplicationContext());
            }
        }
        return f3503b;
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
