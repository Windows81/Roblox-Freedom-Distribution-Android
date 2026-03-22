package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aey implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private aew<?, ?> f3888a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f3889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<afd> f3890c = new ArrayList();

    aey() {
    }

    private final byte[] b() throws IOException {
        byte[] bArr = new byte[a()];
        a(aet.a(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final aey clone() {
        int i = 0;
        aey aeyVar = new aey();
        try {
            aeyVar.f3888a = this.f3888a;
            if (this.f3890c == null) {
                aeyVar.f3890c = null;
            } else {
                aeyVar.f3890c.addAll(this.f3890c);
            }
            if (this.f3889b != null) {
                if (this.f3889b instanceof afb) {
                    aeyVar.f3889b = (afb) ((afb) this.f3889b).clone();
                } else if (this.f3889b instanceof byte[]) {
                    aeyVar.f3889b = ((byte[]) this.f3889b).clone();
                } else if (this.f3889b instanceof byte[][]) {
                    byte[][] bArr = (byte[][]) this.f3889b;
                    byte[][] bArr2 = new byte[bArr.length][];
                    aeyVar.f3889b = bArr2;
                    for (int i2 = 0; i2 < bArr.length; i2++) {
                        bArr2[i2] = (byte[]) bArr[i2].clone();
                    }
                } else if (this.f3889b instanceof boolean[]) {
                    aeyVar.f3889b = ((boolean[]) this.f3889b).clone();
                } else if (this.f3889b instanceof int[]) {
                    aeyVar.f3889b = ((int[]) this.f3889b).clone();
                } else if (this.f3889b instanceof long[]) {
                    aeyVar.f3889b = ((long[]) this.f3889b).clone();
                } else if (this.f3889b instanceof float[]) {
                    aeyVar.f3889b = ((float[]) this.f3889b).clone();
                } else if (this.f3889b instanceof double[]) {
                    aeyVar.f3889b = ((double[]) this.f3889b).clone();
                } else if (this.f3889b instanceof afb[]) {
                    afb[] afbVarArr = (afb[]) this.f3889b;
                    afb[] afbVarArr2 = new afb[afbVarArr.length];
                    aeyVar.f3889b = afbVarArr2;
                    while (true) {
                        int i3 = i;
                        if (i3 >= afbVarArr.length) {
                            break;
                        }
                        afbVarArr2[i3] = (afb) afbVarArr[i3].clone();
                        i = i3 + 1;
                    }
                }
            }
            return aeyVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    final int a() {
        int length = 0;
        if (this.f3889b != null) {
            throw new NoSuchMethodError();
        }
        Iterator<afd> it = this.f3890c.iterator();
        while (true) {
            int i = length;
            if (!it.hasNext()) {
                return i;
            }
            afd next = it.next();
            length = next.f3895b.length + aet.d(next.f3894a) + 0 + i;
        }
    }

    final void a(aet aetVar) throws IOException {
        if (this.f3889b != null) {
            throw new NoSuchMethodError();
        }
        for (afd afdVar : this.f3890c) {
            aetVar.c(afdVar.f3894a);
            aetVar.c(afdVar.f3895b);
        }
    }

    final void a(afd afdVar) throws IOException {
        if (this.f3890c != null) {
            this.f3890c.add(afdVar);
            return;
        }
        if (!(this.f3889b instanceof afb)) {
            if (this.f3889b instanceof afb[]) {
                Collections.singletonList(afdVar);
                throw new NoSuchMethodError();
            }
            Collections.singletonList(afdVar);
            throw new NoSuchMethodError();
        }
        byte[] bArr = afdVar.f3895b;
        aer aerVarA = aer.a(bArr, 0, bArr.length);
        int iG = aerVarA.g();
        if (iG != bArr.length - aet.a(iG)) {
            throw afa.a();
        }
        afb afbVarA = ((afb) this.f3889b).a(aerVarA);
        this.f3888a = this.f3888a;
        this.f3889b = afbVarA;
        this.f3890c = null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aey)) {
            return false;
        }
        aey aeyVar = (aey) obj;
        if (this.f3889b != null && aeyVar.f3889b != null) {
            if (this.f3888a == aeyVar.f3888a) {
                return !this.f3888a.f3883a.isArray() ? this.f3889b.equals(aeyVar.f3889b) : this.f3889b instanceof byte[] ? Arrays.equals((byte[]) this.f3889b, (byte[]) aeyVar.f3889b) : this.f3889b instanceof int[] ? Arrays.equals((int[]) this.f3889b, (int[]) aeyVar.f3889b) : this.f3889b instanceof long[] ? Arrays.equals((long[]) this.f3889b, (long[]) aeyVar.f3889b) : this.f3889b instanceof float[] ? Arrays.equals((float[]) this.f3889b, (float[]) aeyVar.f3889b) : this.f3889b instanceof double[] ? Arrays.equals((double[]) this.f3889b, (double[]) aeyVar.f3889b) : this.f3889b instanceof boolean[] ? Arrays.equals((boolean[]) this.f3889b, (boolean[]) aeyVar.f3889b) : Arrays.deepEquals((Object[]) this.f3889b, (Object[]) aeyVar.f3889b);
            }
            return false;
        }
        if (this.f3890c != null && aeyVar.f3890c != null) {
            return this.f3890c.equals(aeyVar.f3890c);
        }
        try {
            return Arrays.equals(b(), aeyVar.b());
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(b()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
