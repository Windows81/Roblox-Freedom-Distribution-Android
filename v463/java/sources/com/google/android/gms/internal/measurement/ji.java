package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ji extends f<ji> {
    private static volatile ji[] h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f4617c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4618d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4619e = null;
    public Long f = null;
    private Float i = null;
    public Double g = null;

    public ji() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static ji[] e() {
        if (h == null) {
            synchronized (k.f4653b) {
                if (h == null) {
                    h = new ji[0];
                }
            }
        }
        return h;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        Long l = this.f4617c;
        if (l != null) {
            iA += d.c(1, l.longValue());
        }
        String str = this.f4618d;
        if (str != null) {
            iA += d.b(2, str);
        }
        String str2 = this.f4619e;
        if (str2 != null) {
            iA += d.b(3, str2);
        }
        Long l2 = this.f;
        if (l2 != null) {
            iA += d.c(4, l2.longValue());
        }
        Float f = this.i;
        if (f != null) {
            f.floatValue();
            iA += d.b(5) + 4;
        }
        Double d2 = this.g;
        if (d2 == null) {
            return iA;
        }
        d2.doubleValue();
        return iA + d.b(6) + 8;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 8) {
                this.f4617c = Long.valueOf(cVar.e());
            } else if (iA == 18) {
                this.f4618d = cVar.c();
            } else if (iA == 26) {
                this.f4619e = cVar.c();
            } else if (iA == 32) {
                this.f = Long.valueOf(cVar.e());
            } else if (iA == 45) {
                this.i = Float.valueOf(Float.intBitsToFloat(cVar.f()));
            } else if (iA == 49) {
                this.g = Double.valueOf(Double.longBitsToDouble(cVar.g()));
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        Long l = this.f4617c;
        if (l != null) {
            dVar.b(1, l.longValue());
        }
        String str = this.f4618d;
        if (str != null) {
            dVar.a(2, str);
        }
        String str2 = this.f4619e;
        if (str2 != null) {
            dVar.a(3, str2);
        }
        Long l2 = this.f;
        if (l2 != null) {
            dVar.b(4, l2.longValue());
        }
        Float f = this.i;
        if (f != null) {
            dVar.a(5, f.floatValue());
        }
        Double d2 = this.g;
        if (d2 != null) {
            dVar.a(6, d2.doubleValue());
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ji)) {
            return false;
        }
        ji jiVar = (ji) obj;
        Long l = this.f4617c;
        if (l == null) {
            if (jiVar.f4617c != null) {
                return false;
            }
        } else if (!l.equals(jiVar.f4617c)) {
            return false;
        }
        String str = this.f4618d;
        if (str == null) {
            if (jiVar.f4618d != null) {
                return false;
            }
        } else if (!str.equals(jiVar.f4618d)) {
            return false;
        }
        String str2 = this.f4619e;
        if (str2 == null) {
            if (jiVar.f4619e != null) {
                return false;
            }
        } else if (!str2.equals(jiVar.f4619e)) {
            return false;
        }
        Long l2 = this.f;
        if (l2 == null) {
            if (jiVar.f != null) {
                return false;
            }
        } else if (!l2.equals(jiVar.f)) {
            return false;
        }
        Float f = this.i;
        if (f == null) {
            if (jiVar.i != null) {
                return false;
            }
        } else if (!f.equals(jiVar.i)) {
            return false;
        }
        Double d2 = this.g;
        if (d2 == null) {
            if (jiVar.g != null) {
                return false;
            }
        } else if (!d2.equals(jiVar.g)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? jiVar.f4308a == null || jiVar.f4308a.b() : this.f4308a.equals(jiVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Long l = this.f4617c;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.f4618d;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f4619e;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l2 = this.f;
        int iHashCode6 = (iHashCode5 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Float f = this.i;
        int iHashCode7 = (iHashCode6 + (f == null ? 0 : f.hashCode())) * 31;
        Double d2 = this.g;
        int iHashCode8 = (iHashCode7 + (d2 == null ? 0 : d2.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode8 + iHashCode2;
    }
}
