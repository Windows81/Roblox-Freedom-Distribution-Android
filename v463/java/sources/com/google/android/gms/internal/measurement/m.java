package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected volatile int f4670b = -1;

    protected int a() {
        return 0;
    }

    public abstract m a(c cVar) throws IOException;

    public void a(d dVar) throws IOException {
    }

    @Override // 
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public m clone() throws CloneNotSupportedException {
        return (m) super.clone();
    }

    public final int c() {
        if (this.f4670b < 0) {
            d();
        }
        return this.f4670b;
    }

    public final int d() {
        int iA = a();
        this.f4670b = iA;
        return iA;
    }

    public String toString() {
        return n.a(this);
    }
}
