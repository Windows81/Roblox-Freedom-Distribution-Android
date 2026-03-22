package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
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
        StringBuilder sb = new StringBuilder(String.valueOf(strF).length() + 53);
        sb.append(jA);
        sb.append("\t");
        sb.append(iB);
        sb.append("\t");
        sb.append(jC);
        sb.append(strF);
        return sb.toString();
    }
}
