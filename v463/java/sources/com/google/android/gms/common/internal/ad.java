package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ad<T extends IInterface> extends j<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a.h<T> f3740e;

    @Override // com.google.android.gms.common.internal.d
    protected T a(IBinder iBinder) {
        return (T) this.f3740e.a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected void a(int i, T t) {
        this.f3740e.a(i, t);
    }

    @Override // com.google.android.gms.common.internal.d
    protected String a_() {
        return this.f3740e.a();
    }

    @Override // com.google.android.gms.common.internal.d
    protected String b() {
        return this.f3740e.b();
    }

    public a.h<T> e() {
        return this.f3740e;
    }

    @Override // com.google.android.gms.common.internal.j, com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public int f() {
        return super.f();
    }
}
