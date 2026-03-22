package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class iu extends f<iu> {
    private static volatile iu[] g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f4575c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4576d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public iv[] f4577e = iv.e();
    private Boolean h = null;
    public iw f = null;

    public iu() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static iu[] e() {
        if (g == null) {
            synchronized (k.f4653b) {
                if (g == null) {
                    g = new iu[0];
                }
            }
        }
        return g;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        Integer num = this.f4575c;
        if (num != null) {
            iA += d.b(1, num.intValue());
        }
        String str = this.f4576d;
        if (str != null) {
            iA += d.b(2, str);
        }
        iv[] ivVarArr = this.f4577e;
        if (ivVarArr != null && ivVarArr.length > 0) {
            int i = 0;
            while (true) {
                iv[] ivVarArr2 = this.f4577e;
                if (i >= ivVarArr2.length) {
                    break;
                }
                iv ivVar = ivVarArr2[i];
                if (ivVar != null) {
                    iA += d.b(3, ivVar);
                }
                i++;
            }
        }
        Boolean bool = this.h;
        if (bool != null) {
            bool.booleanValue();
            iA += d.b(4) + 1;
        }
        iw iwVar = this.f;
        return iwVar != null ? iA + d.b(5, iwVar) : iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 8) {
                this.f4575c = Integer.valueOf(cVar.d());
            } else if (iA == 18) {
                this.f4576d = cVar.c();
            } else if (iA == 26) {
                int iA2 = p.a(cVar, 26);
                iv[] ivVarArr = this.f4577e;
                int length = ivVarArr == null ? 0 : ivVarArr.length;
                int i = iA2 + length;
                iv[] ivVarArr2 = new iv[i];
                if (length != 0) {
                    System.arraycopy(this.f4577e, 0, ivVarArr2, 0, length);
                }
                while (length < i - 1) {
                    ivVarArr2[length] = new iv();
                    cVar.a(ivVarArr2[length]);
                    cVar.a();
                    length++;
                }
                ivVarArr2[length] = new iv();
                cVar.a(ivVarArr2[length]);
                this.f4577e = ivVarArr2;
            } else if (iA == 32) {
                this.h = Boolean.valueOf(cVar.b());
            } else if (iA == 42) {
                if (this.f == null) {
                    this.f = new iw();
                }
                cVar.a(this.f);
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        Integer num = this.f4575c;
        if (num != null) {
            dVar.a(1, num.intValue());
        }
        String str = this.f4576d;
        if (str != null) {
            dVar.a(2, str);
        }
        iv[] ivVarArr = this.f4577e;
        if (ivVarArr != null && ivVarArr.length > 0) {
            int i = 0;
            while (true) {
                iv[] ivVarArr2 = this.f4577e;
                if (i >= ivVarArr2.length) {
                    break;
                }
                iv ivVar = ivVarArr2[i];
                if (ivVar != null) {
                    dVar.a(3, ivVar);
                }
                i++;
            }
        }
        Boolean bool = this.h;
        if (bool != null) {
            dVar.a(4, bool.booleanValue());
        }
        iw iwVar = this.f;
        if (iwVar != null) {
            dVar.a(5, iwVar);
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof iu)) {
            return false;
        }
        iu iuVar = (iu) obj;
        Integer num = this.f4575c;
        if (num == null) {
            if (iuVar.f4575c != null) {
                return false;
            }
        } else if (!num.equals(iuVar.f4575c)) {
            return false;
        }
        String str = this.f4576d;
        if (str == null) {
            if (iuVar.f4576d != null) {
                return false;
            }
        } else if (!str.equals(iuVar.f4576d)) {
            return false;
        }
        if (!k.a(this.f4577e, iuVar.f4577e)) {
            return false;
        }
        Boolean bool = this.h;
        if (bool == null) {
            if (iuVar.h != null) {
                return false;
            }
        } else if (!bool.equals(iuVar.h)) {
            return false;
        }
        iw iwVar = this.f;
        if (iwVar == null) {
            if (iuVar.f != null) {
                return false;
            }
        } else if (!iwVar.equals(iuVar.f)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? iuVar.f4308a == null || iuVar.f4308a.b() : this.f4308a.equals(iuVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.f4575c;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.f4576d;
        int iHashCode4 = (((iHashCode3 + (str == null ? 0 : str.hashCode())) * 31) + k.a(this.f4577e)) * 31;
        Boolean bool = this.h;
        int iHashCode5 = iHashCode4 + (bool == null ? 0 : bool.hashCode());
        iw iwVar = this.f;
        int iHashCode6 = ((iHashCode5 * 31) + (iwVar == null ? 0 : iwVar.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }
}
