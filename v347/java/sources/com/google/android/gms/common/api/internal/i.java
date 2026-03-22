package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class i<A extends a.b, ResultT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Feature[] f3388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f3389b;

    protected abstract void a(A a2, com.google.android.gms.d.g<ResultT> gVar) throws RemoteException;

    public final Feature[] a() {
        return this.f3388a;
    }

    public boolean b() {
        return this.f3389b;
    }
}
