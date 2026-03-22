package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {
    public abstract long a();

    public abstract int b();

    public abstract long c();

    public abstract String d();

    public abstract long e();

    public abstract String f();

    public abstract long g();

    public String toString() {
        long jA = a();
        int iB = b();
        long jC = c();
        String strF = f();
        return new StringBuilder(String.valueOf(strF).length() + 53).append(jA).append("\t").append(iB).append("\t").append(jC).append(strF).toString();
    }
}
