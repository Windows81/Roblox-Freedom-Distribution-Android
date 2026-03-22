package com.google.firebase.iid;

import android.os.Bundle;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class m<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f5263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.google.android.gms.f.h<T> f5264b = new com.google.android.gms.f.h<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f5265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Bundle f5266d;

    m(int i, int i2, Bundle bundle) {
        this.f5263a = i;
        this.f5265c = i2;
        this.f5266d = bundle;
    }

    abstract void a(Bundle bundle);

    abstract boolean a();

    final void a(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(t);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 16 + String.valueOf(strValueOf2).length());
            sb.append("Finishing ");
            sb.append(strValueOf);
            sb.append(" with ");
            sb.append(strValueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f5264b.a(t);
    }

    final void a(n nVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(nVar);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 14 + String.valueOf(strValueOf2).length());
            sb.append("Failing ");
            sb.append(strValueOf);
            sb.append(" with ");
            sb.append(strValueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f5264b.a(nVar);
    }

    public String toString() {
        int i = this.f5265c;
        int i2 = this.f5263a;
        boolean zA = a();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=");
        sb.append(zA);
        sb.append("}");
        return sb.toString();
    }
}
