package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class zw implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5753a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ zv f5755c;

    zw(zv zvVar) {
        this.f5755c = zvVar;
        this.f5754b = this.f5755c.a();
    }

    private final byte a() {
        try {
            zv zvVar = this.f5755c;
            int i = this.f5753a;
            this.f5753a = i + 1;
            return zvVar.a(i);
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5753a < this.f5754b;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return Byte.valueOf(a());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
