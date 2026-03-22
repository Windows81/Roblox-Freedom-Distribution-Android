package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class je extends f<je> {
    private static volatile je[] g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f4608c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4609d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f4610e = null;
    private Float h = null;
    public Double f = null;

    public je() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static je[] e() {
        if (g == null) {
            synchronized (k.f4653b) {
                if (g == null) {
                    g = new je[0];
                }
            }
        }
        return g;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        String str = this.f4608c;
        if (str != null) {
            iA += d.b(1, str);
        }
        String str2 = this.f4609d;
        if (str2 != null) {
            iA += d.b(2, str2);
        }
        Long l = this.f4610e;
        if (l != null) {
            iA += d.c(3, l.longValue());
        }
        Float f = this.h;
        if (f != null) {
            f.floatValue();
            iA += d.b(4) + 4;
        }
        Double d2 = this.f;
        if (d2 == null) {
            return iA;
        }
        d2.doubleValue();
        return iA + d.b(5) + 8;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 10) {
                this.f4608c = cVar.c();
            } else if (iA == 18) {
                this.f4609d = cVar.c();
            } else if (iA == 24) {
                this.f4610e = Long.valueOf(cVar.e());
            } else if (iA == 37) {
                this.h = Float.valueOf(Float.intBitsToFloat(cVar.f()));
            } else if (iA == 41) {
                this.f = Double.valueOf(Double.longBitsToDouble(cVar.g()));
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        String str = this.f4608c;
        if (str != null) {
            dVar.a(1, str);
        }
        String str2 = this.f4609d;
        if (str2 != null) {
            dVar.a(2, str2);
        }
        Long l = this.f4610e;
        if (l != null) {
            dVar.b(3, l.longValue());
        }
        Float f = this.h;
        if (f != null) {
            dVar.a(4, f.floatValue());
        }
        Double d2 = this.f;
        if (d2 != null) {
            dVar.a(5, d2.doubleValue());
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof je)) {
            return false;
        }
        je jeVar = (je) obj;
        String str = this.f4608c;
        if (str == null) {
            if (jeVar.f4608c != null) {
                return false;
            }
        } else if (!str.equals(jeVar.f4608c)) {
            return false;
        }
        String str2 = this.f4609d;
        if (str2 == null) {
            if (jeVar.f4609d != null) {
                return false;
            }
        } else if (!str2.equals(jeVar.f4609d)) {
            return false;
        }
        Long l = this.f4610e;
        if (l == null) {
            if (jeVar.f4610e != null) {
                return false;
            }
        } else if (!l.equals(jeVar.f4610e)) {
            return false;
        }
        Float f = this.h;
        if (f == null) {
            if (jeVar.h != null) {
                return false;
            }
        } else if (!f.equals(jeVar.h)) {
            return false;
        }
        Double d2 = this.f;
        if (d2 == null) {
            if (jeVar.f != null) {
                return false;
            }
        } else if (!d2.equals(jeVar.f)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? jeVar.f4308a == null || jeVar.f4308a.b() : this.f4308a.equals(jeVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        String str = this.f4608c;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f4609d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.f4610e;
        int iHashCode5 = (iHashCode4 + (l == null ? 0 : l.hashCode())) * 31;
        Float f = this.h;
        int iHashCode6 = (iHashCode5 + (f == null ? 0 : f.hashCode())) * 31;
        Double d2 = this.f;
        int iHashCode7 = (iHashCode6 + (d2 == null ? 0 : d2.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode7 + iHashCode2;
    }
}
