package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class it extends f<it> {
    private static volatile it[] f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f4572c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ix[] f4573d = ix.e();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public iu[] f4574e = iu.e();

    public it() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static it[] e() {
        if (f == null) {
            synchronized (k.f4653b) {
                if (f == null) {
                    f = new it[0];
                }
            }
        }
        return f;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        Integer num = this.f4572c;
        if (num != null) {
            iA += d.b(1, num.intValue());
        }
        ix[] ixVarArr = this.f4573d;
        int i = 0;
        if (ixVarArr != null && ixVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                ix[] ixVarArr2 = this.f4573d;
                if (i2 >= ixVarArr2.length) {
                    break;
                }
                ix ixVar = ixVarArr2[i2];
                if (ixVar != null) {
                    iA += d.b(2, ixVar);
                }
                i2++;
            }
        }
        iu[] iuVarArr = this.f4574e;
        if (iuVarArr != null && iuVarArr.length > 0) {
            while (true) {
                iu[] iuVarArr2 = this.f4574e;
                if (i >= iuVarArr2.length) {
                    break;
                }
                iu iuVar = iuVarArr2[i];
                if (iuVar != null) {
                    iA += d.b(3, iuVar);
                }
                i++;
            }
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 8) {
                this.f4572c = Integer.valueOf(cVar.d());
            } else if (iA == 18) {
                int iA2 = p.a(cVar, 18);
                ix[] ixVarArr = this.f4573d;
                int length = ixVarArr == null ? 0 : ixVarArr.length;
                int i = iA2 + length;
                ix[] ixVarArr2 = new ix[i];
                if (length != 0) {
                    System.arraycopy(this.f4573d, 0, ixVarArr2, 0, length);
                }
                while (length < i - 1) {
                    ixVarArr2[length] = new ix();
                    cVar.a(ixVarArr2[length]);
                    cVar.a();
                    length++;
                }
                ixVarArr2[length] = new ix();
                cVar.a(ixVarArr2[length]);
                this.f4573d = ixVarArr2;
            } else if (iA == 26) {
                int iA3 = p.a(cVar, 26);
                iu[] iuVarArr = this.f4574e;
                int length2 = iuVarArr == null ? 0 : iuVarArr.length;
                int i2 = iA3 + length2;
                iu[] iuVarArr2 = new iu[i2];
                if (length2 != 0) {
                    System.arraycopy(this.f4574e, 0, iuVarArr2, 0, length2);
                }
                while (length2 < i2 - 1) {
                    iuVarArr2[length2] = new iu();
                    cVar.a(iuVarArr2[length2]);
                    cVar.a();
                    length2++;
                }
                iuVarArr2[length2] = new iu();
                cVar.a(iuVarArr2[length2]);
                this.f4574e = iuVarArr2;
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        Integer num = this.f4572c;
        if (num != null) {
            dVar.a(1, num.intValue());
        }
        ix[] ixVarArr = this.f4573d;
        int i = 0;
        if (ixVarArr != null && ixVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                ix[] ixVarArr2 = this.f4573d;
                if (i2 >= ixVarArr2.length) {
                    break;
                }
                ix ixVar = ixVarArr2[i2];
                if (ixVar != null) {
                    dVar.a(2, ixVar);
                }
                i2++;
            }
        }
        iu[] iuVarArr = this.f4574e;
        if (iuVarArr != null && iuVarArr.length > 0) {
            while (true) {
                iu[] iuVarArr2 = this.f4574e;
                if (i >= iuVarArr2.length) {
                    break;
                }
                iu iuVar = iuVarArr2[i];
                if (iuVar != null) {
                    dVar.a(3, iuVar);
                }
                i++;
            }
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof it)) {
            return false;
        }
        it itVar = (it) obj;
        Integer num = this.f4572c;
        if (num == null) {
            if (itVar.f4572c != null) {
                return false;
            }
        } else if (!num.equals(itVar.f4572c)) {
            return false;
        }
        if (k.a(this.f4573d, itVar.f4573d) && k.a(this.f4574e, itVar.f4574e)) {
            return (this.f4308a == null || this.f4308a.b()) ? itVar.f4308a == null || itVar.f4308a.b() : this.f4308a.equals(itVar.f4308a);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.f4572c;
        int iHashCode2 = 0;
        int iHashCode3 = (((((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + k.a(this.f4573d)) * 31) + k.a(this.f4574e)) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode3 + iHashCode2;
    }
}
