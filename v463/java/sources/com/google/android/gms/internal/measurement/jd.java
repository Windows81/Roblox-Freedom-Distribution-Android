package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class jd extends f<jd> {
    private static volatile jd[] h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public je[] f4605c = je.e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4606d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f4607e = null;
    public Long f = null;
    public Integer g = null;

    public jd() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static jd[] e() {
        if (h == null) {
            synchronized (k.f4653b) {
                if (h == null) {
                    h = new jd[0];
                }
            }
        }
        return h;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        je[] jeVarArr = this.f4605c;
        if (jeVarArr != null && jeVarArr.length > 0) {
            int i = 0;
            while (true) {
                je[] jeVarArr2 = this.f4605c;
                if (i >= jeVarArr2.length) {
                    break;
                }
                je jeVar = jeVarArr2[i];
                if (jeVar != null) {
                    iA += d.b(1, jeVar);
                }
                i++;
            }
        }
        String str = this.f4606d;
        if (str != null) {
            iA += d.b(2, str);
        }
        Long l = this.f4607e;
        if (l != null) {
            iA += d.c(3, l.longValue());
        }
        Long l2 = this.f;
        if (l2 != null) {
            iA += d.c(4, l2.longValue());
        }
        Integer num = this.g;
        return num != null ? iA + d.b(5, num.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 10) {
                int iA2 = p.a(cVar, 10);
                je[] jeVarArr = this.f4605c;
                int length = jeVarArr == null ? 0 : jeVarArr.length;
                int i = iA2 + length;
                je[] jeVarArr2 = new je[i];
                if (length != 0) {
                    System.arraycopy(this.f4605c, 0, jeVarArr2, 0, length);
                }
                while (length < i - 1) {
                    jeVarArr2[length] = new je();
                    cVar.a(jeVarArr2[length]);
                    cVar.a();
                    length++;
                }
                jeVarArr2[length] = new je();
                cVar.a(jeVarArr2[length]);
                this.f4605c = jeVarArr2;
            } else if (iA == 18) {
                this.f4606d = cVar.c();
            } else if (iA == 24) {
                this.f4607e = Long.valueOf(cVar.e());
            } else if (iA == 32) {
                this.f = Long.valueOf(cVar.e());
            } else if (iA == 40) {
                this.g = Integer.valueOf(cVar.d());
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        je[] jeVarArr = this.f4605c;
        if (jeVarArr != null && jeVarArr.length > 0) {
            int i = 0;
            while (true) {
                je[] jeVarArr2 = this.f4605c;
                if (i >= jeVarArr2.length) {
                    break;
                }
                je jeVar = jeVarArr2[i];
                if (jeVar != null) {
                    dVar.a(1, jeVar);
                }
                i++;
            }
        }
        String str = this.f4606d;
        if (str != null) {
            dVar.a(2, str);
        }
        Long l = this.f4607e;
        if (l != null) {
            dVar.b(3, l.longValue());
        }
        Long l2 = this.f;
        if (l2 != null) {
            dVar.b(4, l2.longValue());
        }
        Integer num = this.g;
        if (num != null) {
            dVar.a(5, num.intValue());
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jd)) {
            return false;
        }
        jd jdVar = (jd) obj;
        if (!k.a(this.f4605c, jdVar.f4605c)) {
            return false;
        }
        String str = this.f4606d;
        if (str == null) {
            if (jdVar.f4606d != null) {
                return false;
            }
        } else if (!str.equals(jdVar.f4606d)) {
            return false;
        }
        Long l = this.f4607e;
        if (l == null) {
            if (jdVar.f4607e != null) {
                return false;
            }
        } else if (!l.equals(jdVar.f4607e)) {
            return false;
        }
        Long l2 = this.f;
        if (l2 == null) {
            if (jdVar.f != null) {
                return false;
            }
        } else if (!l2.equals(jdVar.f)) {
            return false;
        }
        Integer num = this.g;
        if (num == null) {
            if (jdVar.g != null) {
                return false;
            }
        } else if (!num.equals(jdVar.g)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? jdVar.f4308a == null || jdVar.f4308a.b() : this.f4308a.equals(jdVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = (((getClass().getName().hashCode() + 527) * 31) + k.a(this.f4605c)) * 31;
        String str = this.f4606d;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.f4607e;
        int iHashCode4 = (iHashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.f;
        int iHashCode5 = (iHashCode4 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Integer num = this.g;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }
}
