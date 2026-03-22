package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class iv extends f<iv> {
    private static volatile iv[] g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public iy f4578c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public iw f4579d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Boolean f4580e = null;
    public String f = null;

    public iv() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static iv[] e() {
        if (g == null) {
            synchronized (k.f4653b) {
                if (g == null) {
                    g = new iv[0];
                }
            }
        }
        return g;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        iy iyVar = this.f4578c;
        if (iyVar != null) {
            iA += d.b(1, iyVar);
        }
        iw iwVar = this.f4579d;
        if (iwVar != null) {
            iA += d.b(2, iwVar);
        }
        Boolean bool = this.f4580e;
        if (bool != null) {
            bool.booleanValue();
            iA += d.b(3) + 1;
        }
        String str = this.f;
        return str != null ? iA + d.b(4, str) : iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        m mVar;
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 10) {
                if (this.f4578c == null) {
                    this.f4578c = new iy();
                }
                mVar = this.f4578c;
            } else if (iA == 18) {
                if (this.f4579d == null) {
                    this.f4579d = new iw();
                }
                mVar = this.f4579d;
            } else if (iA == 24) {
                this.f4580e = Boolean.valueOf(cVar.b());
            } else if (iA == 34) {
                this.f = cVar.c();
            } else if (!super.a(cVar, iA)) {
                return this;
            }
            cVar.a(mVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        iy iyVar = this.f4578c;
        if (iyVar != null) {
            dVar.a(1, iyVar);
        }
        iw iwVar = this.f4579d;
        if (iwVar != null) {
            dVar.a(2, iwVar);
        }
        Boolean bool = this.f4580e;
        if (bool != null) {
            dVar.a(3, bool.booleanValue());
        }
        String str = this.f;
        if (str != null) {
            dVar.a(4, str);
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof iv)) {
            return false;
        }
        iv ivVar = (iv) obj;
        iy iyVar = this.f4578c;
        if (iyVar == null) {
            if (ivVar.f4578c != null) {
                return false;
            }
        } else if (!iyVar.equals(ivVar.f4578c)) {
            return false;
        }
        iw iwVar = this.f4579d;
        if (iwVar == null) {
            if (ivVar.f4579d != null) {
                return false;
            }
        } else if (!iwVar.equals(ivVar.f4579d)) {
            return false;
        }
        Boolean bool = this.f4580e;
        if (bool == null) {
            if (ivVar.f4580e != null) {
                return false;
            }
        } else if (!bool.equals(ivVar.f4580e)) {
            return false;
        }
        String str = this.f;
        if (str == null) {
            if (ivVar.f != null) {
                return false;
            }
        } else if (!str.equals(ivVar.f)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? ivVar.f4308a == null || ivVar.f4308a.b() : this.f4308a.equals(ivVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = getClass().getName().hashCode() + 527;
        iy iyVar = this.f4578c;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode * 31) + (iyVar == null ? 0 : iyVar.hashCode());
        iw iwVar = this.f4579d;
        int iHashCode4 = ((iHashCode3 * 31) + (iwVar == null ? 0 : iwVar.hashCode())) * 31;
        Boolean bool = this.f4580e;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.f;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }
}
