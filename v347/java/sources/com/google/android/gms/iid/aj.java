package com.google.android.gms.iid;

import android.os.Bundle;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class aj<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f3644a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.google.android.gms.d.g<T> f3645b = new com.google.android.gms.d.g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f3646c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Bundle f3647d;

    aj(int i, int i2, Bundle bundle) {
        this.f3644a = i;
        this.f3646c = i2;
        this.f3647d = bundle;
    }

    abstract void a(Bundle bundle);

    final void a(c cVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(cVar);
            Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(strValueOf).length() + 14 + String.valueOf(strValueOf2).length()).append("Failing ").append(strValueOf).append(" with ").append(strValueOf2).toString());
        }
        this.f3645b.a(cVar);
    }

    abstract boolean a();

    public String toString() {
        int i = this.f3646c;
        int i2 = this.f3644a;
        a();
        return new StringBuilder(55).append("Request { what=").append(i).append(" id=").append(i2).append(" oneWay=false}").toString();
    }
}
