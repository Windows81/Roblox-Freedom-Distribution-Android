package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class j implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g<?, ?> f4593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f4594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<o> f4595c = new ArrayList();

    j() {
    }

    private final byte[] b() throws IOException {
        byte[] bArr = new byte[a()];
        a(d.a(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final j clone() {
        Object objClone;
        j jVar = new j();
        try {
            jVar.f4593a = this.f4593a;
            if (this.f4595c == null) {
                jVar.f4595c = null;
            } else {
                jVar.f4595c.addAll(this.f4595c);
            }
            if (this.f4594b != null) {
                if (this.f4594b instanceof m) {
                    objClone = (m) ((m) this.f4594b).clone();
                } else if (this.f4594b instanceof byte[]) {
                    objClone = ((byte[]) this.f4594b).clone();
                } else {
                    int i = 0;
                    if (this.f4594b instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f4594b;
                        byte[][] bArr2 = new byte[bArr.length][];
                        jVar.f4594b = bArr2;
                        while (i < bArr.length) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                            i++;
                        }
                    } else if (this.f4594b instanceof boolean[]) {
                        objClone = ((boolean[]) this.f4594b).clone();
                    } else if (this.f4594b instanceof int[]) {
                        objClone = ((int[]) this.f4594b).clone();
                    } else if (this.f4594b instanceof long[]) {
                        objClone = ((long[]) this.f4594b).clone();
                    } else if (this.f4594b instanceof float[]) {
                        objClone = ((float[]) this.f4594b).clone();
                    } else if (this.f4594b instanceof double[]) {
                        objClone = ((double[]) this.f4594b).clone();
                    } else if (this.f4594b instanceof m[]) {
                        m[] mVarArr = (m[]) this.f4594b;
                        m[] mVarArr2 = new m[mVarArr.length];
                        jVar.f4594b = mVarArr2;
                        while (i < mVarArr.length) {
                            mVarArr2[i] = (m) mVarArr[i].clone();
                            i++;
                        }
                    }
                }
                jVar.f4594b = objClone;
            }
            return jVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    final int a() {
        Object obj = this.f4594b;
        if (obj == null) {
            int iD = 0;
            for (o oVar : this.f4595c) {
                iD += d.d(oVar.f4671a) + 0 + oVar.f4672b.length;
            }
            return iD;
        }
        g<?, ?> gVar = this.f4593a;
        if (!gVar.f4380c) {
            return gVar.a(obj);
        }
        int length = Array.getLength(obj);
        int iA = 0;
        for (int i = 0; i < length; i++) {
            if (Array.get(obj, i) != null) {
                iA += gVar.a(Array.get(obj, i));
            }
        }
        return iA;
    }

    final void a(d dVar) throws IOException {
        Object obj = this.f4594b;
        if (obj == null) {
            for (o oVar : this.f4595c) {
                dVar.c(oVar.f4671a);
                dVar.b(oVar.f4672b);
            }
            return;
        }
        g<?, ?> gVar = this.f4593a;
        if (!gVar.f4380c) {
            gVar.a(obj, dVar);
            return;
        }
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                gVar.a(obj2, dVar);
            }
        }
    }

    final void a(o oVar) throws IOException {
        Object objA;
        List<o> list = this.f4595c;
        if (list != null) {
            list.add(oVar);
            return;
        }
        Object obj = this.f4594b;
        if (obj instanceof m) {
            byte[] bArr = oVar.f4672b;
            c cVarA = c.a(bArr, 0, bArr.length);
            int iD = cVarA.d();
            if (iD != bArr.length - d.a(iD)) {
                throw l.a();
            }
            objA = ((m) this.f4594b).a(cVarA);
        } else if (obj instanceof m[]) {
            m[] mVarArr = (m[]) this.f4593a.a(Collections.singletonList(oVar));
            m[] mVarArr2 = (m[]) this.f4594b;
            m[] mVarArr3 = (m[]) Arrays.copyOf(mVarArr2, mVarArr2.length + mVarArr.length);
            System.arraycopy(mVarArr, 0, mVarArr3, mVarArr2.length, mVarArr.length);
            objA = mVarArr3;
        } else {
            objA = this.f4593a.a(Collections.singletonList(oVar));
        }
        this.f4593a = this.f4593a;
        this.f4594b = objA;
        this.f4595c = null;
    }

    public final boolean equals(Object obj) {
        List<o> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f4594b == null || jVar.f4594b == null) {
            List<o> list2 = this.f4595c;
            if (list2 != null && (list = jVar.f4595c) != null) {
                return list2.equals(list);
            }
            try {
                return Arrays.equals(b(), jVar.b());
            } catch (IOException e2) {
                throw new IllegalStateException(e2);
            }
        }
        g<?, ?> gVar = this.f4593a;
        if (gVar != jVar.f4593a) {
            return false;
        }
        if (!gVar.f4378a.isArray()) {
            return this.f4594b.equals(jVar.f4594b);
        }
        Object obj2 = this.f4594b;
        return obj2 instanceof byte[] ? Arrays.equals((byte[]) obj2, (byte[]) jVar.f4594b) : obj2 instanceof int[] ? Arrays.equals((int[]) obj2, (int[]) jVar.f4594b) : obj2 instanceof long[] ? Arrays.equals((long[]) obj2, (long[]) jVar.f4594b) : obj2 instanceof float[] ? Arrays.equals((float[]) obj2, (float[]) jVar.f4594b) : obj2 instanceof double[] ? Arrays.equals((double[]) obj2, (double[]) jVar.f4594b) : obj2 instanceof boolean[] ? Arrays.equals((boolean[]) obj2, (boolean[]) jVar.f4594b) : Arrays.deepEquals((Object[]) obj2, (Object[]) jVar.f4594b);
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(b()) + 527;
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }
}
