package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class zv implements Serializable, Iterable<Byte> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zv f5750a = new aac(abf.f3755b);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final zz f5751b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5752c = 0;

    static {
        zw zwVar = null;
        f5751b = zq.a() ? new aad(zwVar) : new zx(zwVar);
    }

    zv() {
    }

    public static zv a(String str) {
        return new aac(str.getBytes(abf.f3754a));
    }

    public static zv a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static zv a(byte[] bArr, int i, int i2) {
        return new aac(f5751b.a(bArr, i, i2));
    }

    static int b(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException(new StringBuilder(32).append("Beginning index: ").append(i).append(" < 0").toString());
        }
        if (i2 < i) {
            throw new IndexOutOfBoundsException(new StringBuilder(66).append("Beginning index larger than ending index: ").append(i).append(", ").append(i2).toString());
        }
        throw new IndexOutOfBoundsException(new StringBuilder(37).append("End index: ").append(i2).append(" >= ").append(i3).toString());
    }

    static aaa b(int i) {
        return new aaa(i, null);
    }

    static zv b(byte[] bArr) {
        return new aac(bArr);
    }

    public abstract byte a(int i);

    public abstract int a();

    protected abstract int a(int i, int i2, int i3);

    public abstract zv a(int i, int i2);

    protected abstract String a(Charset charset);

    abstract void a(zu zuVar) throws IOException;

    protected abstract void a(byte[] bArr, int i, int i2, int i3);

    public final byte[] b() {
        int iA = a();
        if (iA == 0) {
            return abf.f3755b;
        }
        byte[] bArr = new byte[iA];
        a(bArr, 0, 0, iA);
        return bArr;
    }

    public final String c() {
        return a() == 0 ? "" : a(abf.f3754a);
    }

    public abstract boolean d();

    public abstract aae e();

    public abstract boolean equals(Object obj);

    protected final int f() {
        return this.f5752c;
    }

    public final int hashCode() {
        int iA = this.f5752c;
        if (iA == 0) {
            int iA2 = a();
            iA = a(iA2, 0, iA2);
            if (iA == 0) {
                iA = 1;
            }
            this.f5752c = iA;
        }
        return iA;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zw(this);
    }

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(a()));
    }
}
