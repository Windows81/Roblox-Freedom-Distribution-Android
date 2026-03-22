package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class jh extends f<jh> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long[] f4615c = p.f4674b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long[] f4616d = p.f4674b;

    public jh() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        long[] jArr;
        int iA = super.a();
        long[] jArr2 = this.f4615c;
        int i = 0;
        if (jArr2 != null && jArr2.length > 0) {
            int i2 = 0;
            int iA2 = 0;
            while (true) {
                jArr = this.f4615c;
                if (i2 >= jArr.length) {
                    break;
                }
                iA2 += d.a(jArr[i2]);
                i2++;
            }
            iA = iA + iA2 + (jArr.length * 1);
        }
        long[] jArr3 = this.f4616d;
        if (jArr3 == null || jArr3.length <= 0) {
            return iA;
        }
        int iA3 = 0;
        while (true) {
            long[] jArr4 = this.f4616d;
            if (i >= jArr4.length) {
                return iA + iA3 + (jArr4.length * 1);
            }
            iA3 += d.a(jArr4[i]);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        int iC;
        long jE;
        long jE2;
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA != 8) {
                if (iA == 10) {
                    iC = cVar.c(cVar.d());
                    int i = cVar.i();
                    int i2 = 0;
                    while (cVar.h() > 0) {
                        cVar.e();
                        i2++;
                    }
                    cVar.e(i);
                    long[] jArr = this.f4615c;
                    int length = jArr == null ? 0 : jArr.length;
                    int i3 = i2 + length;
                    long[] jArr2 = new long[i3];
                    if (length != 0) {
                        System.arraycopy(this.f4615c, 0, jArr2, 0, length);
                    }
                    while (length < i3) {
                        jArr2[length] = cVar.e();
                        length++;
                    }
                    this.f4615c = jArr2;
                } else if (iA == 16) {
                    int iA2 = p.a(cVar, 16);
                    long[] jArr3 = this.f4616d;
                    int length2 = jArr3 == null ? 0 : jArr3.length;
                    int i4 = iA2 + length2;
                    long[] jArr4 = new long[i4];
                    if (length2 != 0) {
                        System.arraycopy(this.f4616d, 0, jArr4, 0, length2);
                    }
                    while (true) {
                        int i5 = i4 - 1;
                        jE = cVar.e();
                        if (length2 >= i5) {
                            break;
                        }
                        jArr4[length2] = jE;
                        cVar.a();
                        length2++;
                    }
                    jArr4[length2] = jE;
                    this.f4616d = jArr4;
                } else if (iA == 18) {
                    iC = cVar.c(cVar.d());
                    int i6 = cVar.i();
                    int i7 = 0;
                    while (cVar.h() > 0) {
                        cVar.e();
                        i7++;
                    }
                    cVar.e(i6);
                    long[] jArr5 = this.f4616d;
                    int length3 = jArr5 == null ? 0 : jArr5.length;
                    int i8 = i7 + length3;
                    long[] jArr6 = new long[i8];
                    if (length3 != 0) {
                        System.arraycopy(this.f4616d, 0, jArr6, 0, length3);
                    }
                    while (length3 < i8) {
                        jArr6[length3] = cVar.e();
                        length3++;
                    }
                    this.f4616d = jArr6;
                } else if (!super.a(cVar, iA)) {
                    return this;
                }
                cVar.d(iC);
            } else {
                int iA3 = p.a(cVar, 8);
                long[] jArr7 = this.f4615c;
                int length4 = jArr7 == null ? 0 : jArr7.length;
                int i9 = iA3 + length4;
                long[] jArr8 = new long[i9];
                if (length4 != 0) {
                    System.arraycopy(this.f4615c, 0, jArr8, 0, length4);
                }
                while (true) {
                    int i10 = i9 - 1;
                    jE2 = cVar.e();
                    if (length4 >= i10) {
                        break;
                    }
                    jArr8[length4] = jE2;
                    cVar.a();
                    length4++;
                }
                jArr8[length4] = jE2;
                this.f4615c = jArr8;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        long[] jArr = this.f4615c;
        int i = 0;
        if (jArr != null && jArr.length > 0) {
            int i2 = 0;
            while (true) {
                long[] jArr2 = this.f4615c;
                if (i2 >= jArr2.length) {
                    break;
                }
                dVar.a(1, jArr2[i2]);
                i2++;
            }
        }
        long[] jArr3 = this.f4616d;
        if (jArr3 != null && jArr3.length > 0) {
            while (true) {
                long[] jArr4 = this.f4616d;
                if (i >= jArr4.length) {
                    break;
                }
                dVar.a(2, jArr4[i]);
                i++;
            }
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jh)) {
            return false;
        }
        jh jhVar = (jh) obj;
        if (k.a(this.f4615c, jhVar.f4615c) && k.a(this.f4616d, jhVar.f4616d)) {
            return (this.f4308a == null || this.f4308a.b()) ? jhVar.f4308a == null || jhVar.f4308a.b() : this.f4308a.equals(jhVar.f4308a);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((getClass().getName().hashCode() + 527) * 31) + k.a(this.f4615c)) * 31) + k.a(this.f4616d)) * 31) + ((this.f4308a == null || this.f4308a.b()) ? 0 : this.f4308a.hashCode());
    }
}
