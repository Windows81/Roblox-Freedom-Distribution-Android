package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class iy extends f<iy> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f4587c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4588d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Boolean f4589e = null;
    public String[] f = p.f4675c;

    public iy() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.m
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final iy a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 8) {
                int i = cVar.i();
                try {
                    int iD = cVar.d();
                    if (iD < 0 || iD > 6) {
                        StringBuilder sb = new StringBuilder(41);
                        sb.append(iD);
                        sb.append(" is not a valid enum MatchType");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.f4587c = Integer.valueOf(iD);
                } catch (IllegalArgumentException unused) {
                    cVar.e(i);
                    a(cVar, iA);
                }
            } else if (iA == 18) {
                this.f4588d = cVar.c();
            } else if (iA == 24) {
                this.f4589e = Boolean.valueOf(cVar.b());
            } else if (iA == 34) {
                int iA2 = p.a(cVar, 34);
                String[] strArr = this.f;
                int length = strArr == null ? 0 : strArr.length;
                int i2 = iA2 + length;
                String[] strArr2 = new String[i2];
                if (length != 0) {
                    System.arraycopy(this.f, 0, strArr2, 0, length);
                }
                while (length < i2 - 1) {
                    strArr2[length] = cVar.c();
                    cVar.a();
                    length++;
                }
                strArr2[length] = cVar.c();
                this.f = strArr2;
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        Integer num = this.f4587c;
        if (num != null) {
            iA += d.b(1, num.intValue());
        }
        String str = this.f4588d;
        if (str != null) {
            iA += d.b(2, str);
        }
        Boolean bool = this.f4589e;
        if (bool != null) {
            bool.booleanValue();
            iA += d.b(3) + 1;
        }
        String[] strArr = this.f;
        if (strArr == null || strArr.length <= 0) {
            return iA;
        }
        int i = 0;
        int iA2 = 0;
        int i2 = 0;
        while (true) {
            String[] strArr2 = this.f;
            if (i >= strArr2.length) {
                return iA + iA2 + (i2 * 1);
            }
            String str2 = strArr2[i];
            if (str2 != null) {
                i2++;
                iA2 += d.a(str2);
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        Integer num = this.f4587c;
        if (num != null) {
            dVar.a(1, num.intValue());
        }
        String str = this.f4588d;
        if (str != null) {
            dVar.a(2, str);
        }
        Boolean bool = this.f4589e;
        if (bool != null) {
            dVar.a(3, bool.booleanValue());
        }
        String[] strArr = this.f;
        if (strArr != null && strArr.length > 0) {
            int i = 0;
            while (true) {
                String[] strArr2 = this.f;
                if (i >= strArr2.length) {
                    break;
                }
                String str2 = strArr2[i];
                if (str2 != null) {
                    dVar.a(4, str2);
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
        if (!(obj instanceof iy)) {
            return false;
        }
        iy iyVar = (iy) obj;
        Integer num = this.f4587c;
        if (num == null) {
            if (iyVar.f4587c != null) {
                return false;
            }
        } else if (!num.equals(iyVar.f4587c)) {
            return false;
        }
        String str = this.f4588d;
        if (str == null) {
            if (iyVar.f4588d != null) {
                return false;
            }
        } else if (!str.equals(iyVar.f4588d)) {
            return false;
        }
        Boolean bool = this.f4589e;
        if (bool == null) {
            if (iyVar.f4589e != null) {
                return false;
            }
        } else if (!bool.equals(iyVar.f4589e)) {
            return false;
        }
        if (k.a(this.f, iyVar.f)) {
            return (this.f4308a == null || this.f4308a.b()) ? iyVar.f4308a == null || iyVar.f4308a.b() : this.f4308a.equals(iyVar.f4308a);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.f4587c;
        int iHashCode2 = 0;
        int iIntValue = (iHashCode + (num == null ? 0 : num.intValue())) * 31;
        String str = this.f4588d;
        int iHashCode3 = (iIntValue + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.f4589e;
        int iHashCode4 = (((iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31) + k.a(this.f)) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode4 + iHashCode2;
    }
}
