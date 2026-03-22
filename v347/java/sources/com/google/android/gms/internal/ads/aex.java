package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aex implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final aey f3884a = new aey();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f3886c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private aey[] f3887d;
    private int e;

    aex() {
        this(10);
    }

    private aex(int i) {
        this.f3885b = false;
        int iC = c(i);
        this.f3886c = new int[iC];
        this.f3887d = new aey[iC];
        this.e = 0;
    }

    private static int c(int i) {
        int i2 = i << 2;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            if (i2 <= (1 << i3) - 12) {
                i2 = (1 << i3) - 12;
                break;
            }
            i3++;
        }
        return i2 / 4;
    }

    private final int d(int i) {
        int i2 = 0;
        int i3 = this.e - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) >>> 1;
            int i5 = this.f3886c[i4];
            if (i5 < i) {
                i2 = i4 + 1;
            } else {
                if (i5 <= i) {
                    return i4;
                }
                i3 = i4 - 1;
            }
        }
        return i2 ^ (-1);
    }

    final int a() {
        return this.e;
    }

    final aey a(int i) {
        int iD = d(i);
        if (iD < 0 || this.f3887d[iD] == f3884a) {
            return null;
        }
        return this.f3887d[iD];
    }

    final void a(int i, aey aeyVar) {
        int iD = d(i);
        if (iD >= 0) {
            this.f3887d[iD] = aeyVar;
            return;
        }
        int i2 = iD ^ (-1);
        if (i2 < this.e && this.f3887d[i2] == f3884a) {
            this.f3886c[i2] = i;
            this.f3887d[i2] = aeyVar;
            return;
        }
        if (this.e >= this.f3886c.length) {
            int iC = c(this.e + 1);
            int[] iArr = new int[iC];
            aey[] aeyVarArr = new aey[iC];
            System.arraycopy(this.f3886c, 0, iArr, 0, this.f3886c.length);
            System.arraycopy(this.f3887d, 0, aeyVarArr, 0, this.f3887d.length);
            this.f3886c = iArr;
            this.f3887d = aeyVarArr;
        }
        if (this.e - i2 != 0) {
            System.arraycopy(this.f3886c, i2, this.f3886c, i2 + 1, this.e - i2);
            System.arraycopy(this.f3887d, i2, this.f3887d, i2 + 1, this.e - i2);
        }
        this.f3886c[i2] = i;
        this.f3887d[i2] = aeyVar;
        this.e++;
    }

    final aey b(int i) {
        return this.f3887d[i];
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.e;
        aex aexVar = new aex(i);
        System.arraycopy(this.f3886c, 0, aexVar.f3886c, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f3887d[i2] != null) {
                aexVar.f3887d[i2] = (aey) this.f3887d[i2].clone();
            }
        }
        aexVar.e = i;
        return aexVar;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof aex)) {
            return false;
        }
        aex aexVar = (aex) obj;
        if (this.e != aexVar.e) {
            return false;
        }
        int[] iArr = this.f3886c;
        int[] iArr2 = aexVar.f3886c;
        int i = this.e;
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
            aey[] aeyVarArr = this.f3887d;
            aey[] aeyVarArr2 = aexVar.f3887d;
            int i3 = this.e;
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    z2 = true;
                    break;
                }
                if (!aeyVarArr[i4].equals(aeyVarArr2[i4])) {
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
        for (int i = 0; i < this.e; i++) {
            iHashCode = (((iHashCode * 31) + this.f3886c[i]) * 31) + this.f3887d[i].hashCode();
        }
        return iHashCode;
    }
}
