package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: classes.dex */
public class z<T extends IInterface> extends j<T> {
    private final a.h<T> e;

    public a.h<T> A() {
        return this.e;
    }

    @Override // com.google.android.gms.common.internal.d
    protected T a(IBinder iBinder) {
        return (T) this.e.a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected void a(int i, T t) {
        this.e.a(i, t);
    }

    @Override // com.google.android.gms.common.internal.j, com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public int g() {
        return super.g();
    }

    @Override // com.google.android.gms.common.internal.d
    protected String i() {
        return this.e.a();
    }

    @Override // com.google.android.gms.common.internal.d
    protected String l() {
        return this.e.b();
    }
}
