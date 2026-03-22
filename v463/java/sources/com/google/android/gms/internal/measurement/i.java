package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class i implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final j f4526a = new j();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4527b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f4528c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j[] f4529d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4530e;

    i() {
        this(10);
    }

    private i(int i) {
        this.f4527b = false;
        int iC = c(i);
        this.f4528c = new int[iC];
        this.f4529d = new j[iC];
        this.f4530e = 0;
    }

    private static int c(int i) {
        int i2 = i << 2;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        return i2 / 4;
    }

    private final int d(int i) {
        int i2 = this.f4530e - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.f4528c[i4];
            if (i5 < i) {
                i3 = i4 + 1;
            } else {
                if (i5 <= i) {
                    return i4;
                }
                i2 = i4 - 1;
            }
        }
        return i3 ^ (-1);
    }

    final int a() {
        return this.f4530e;
    }

    final j a(int i) {
        int iD = d(i);
        if (iD < 0) {
            return null;
        }
        j[] jVarArr = this.f4529d;
        if (jVarArr[iD] == f4526a) {
            return null;
        }
        return jVarArr[iD];
    }

    final void a(int i, j jVar) {
        int iD = d(i);
        if (iD >= 0) {
            this.f4529d[iD] = jVar;
            return;
        }
        int i2 = iD ^ (-1);
        if (i2 < this.f4530e) {
            j[] jVarArr = this.f4529d;
            if (jVarArr[i2] == f4526a) {
                this.f4528c[i2] = i;
                jVarArr[i2] = jVar;
                return;
            }
        }
        int i3 = this.f4530e;
        if (i3 >= this.f4528c.length) {
            int iC = c(i3 + 1);
            int[] iArr = new int[iC];
            j[] jVarArr2 = new j[iC];
            int[] iArr2 = this.f4528c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            j[] jVarArr3 = this.f4529d;
            System.arraycopy(jVarArr3, 0, jVarArr2, 0, jVarArr3.length);
            this.f4528c = iArr;
            this.f4529d = jVarArr2;
        }
        int i4 = this.f4530e;
        if (i4 - i2 != 0) {
            int[] iArr3 = this.f4528c;
            int i5 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i5, i4 - i2);
            j[] jVarArr4 = this.f4529d;
            System.arraycopy(jVarArr4, i2, jVarArr4, i5, this.f4530e - i2);
        }
        this.f4528c[i2] = i;
        this.f4529d[i2] = jVar;
        this.f4530e++;
    }

    final j b(int i) {
        return this.f4529d[i];
    }

    public final boolean b() {
        return this.f4530e == 0;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.f4530e;
        i iVar = new i(i);
        System.arraycopy(this.f4528c, 0, iVar.f4528c, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            j[] jVarArr = this.f4529d;
            if (jVarArr[i2] != null) {
                iVar.f4529d[i2] = (j) jVarArr[i2].clone();
            }
        }
        iVar.f4530e = i;
        return iVar;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        int i = this.f4530e;
        if (i != iVar.f4530e) {
            return false;
        }
        int[] iArr = this.f4528c;
        int[] iArr2 = iVar.f4528c;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            }
            if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            }
            i2++;
        }
        if (z) {
            j[] jVarArr = this.f4529d;
            j[] jVarArr2 = iVar.f4529d;
            int i3 = this.f4530e;
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    z2 = true;
                    break;
                }
                if (!jVarArr[i4].equals(jVarArr2[i4])) {
                    z2 = false;
                    break;
                }
                i4++;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 17;
        for (int i = 0; i < this.f4530e; i++) {
            iHashCode = (((iHashCode * 31) + this.f4528c[i]) * 31) + this.f4529d[i].hashCode();
        }
        return iHashCode;
    }
}
