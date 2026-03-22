package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ix extends f<ix> {
    private static volatile ix[] f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f4584c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4585d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public iv f4586e = null;

    public ix() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static ix[] e() {
        if (f == null) {
            synchronized (k.f4653b) {
                if (f == null) {
                    f = new ix[0];
                }
            }
        }
        return f;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        Integer num = this.f4584c;
        if (num != null) {
            iA += d.b(1, num.intValue());
        }
        String str = this.f4585d;
        if (str != null) {
            iA += d.b(2, str);
        }
        iv ivVar = this.f4586e;
        return ivVar != null ? iA + d.b(3, ivVar) : iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 8) {
                this.f4584c = Integer.valueOf(cVar.d());
            } else if (iA == 18) {
                this.f4585d = cVar.c();
            } else if (iA == 26) {
                if (this.f4586e == null) {
                    this.f4586e = new iv();
                }
                cVar.a(this.f4586e);
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        Integer num = this.f4584c;
        if (num != null) {
            dVar.a(1, num.intValue());
        }
        String str = this.f4585d;
        if (str != null) {
            dVar.a(2, str);
        }
        iv ivVar = this.f4586e;
        if (ivVar != null) {
            dVar.a(3, ivVar);
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ix)) {
            return false;
        }
        ix ixVar = (ix) obj;
        Integer num = this.f4584c;
        if (num == null) {
            if (ixVar.f4584c != null) {
                return false;
            }
        } else if (!num.equals(ixVar.f4584c)) {
            return false;
        }
        String str = this.f4585d;
        if (str == null) {
            if (ixVar.f4585d != null) {
                return false;
            }
        } else if (!str.equals(ixVar.f4585d)) {
            return false;
        }
        iv ivVar = this.f4586e;
        if (ivVar == null) {
            if (ixVar.f4586e != null) {
                return false;
            }
        } else if (!ivVar.equals(ixVar.f4586e)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? ixVar.f4308a == null || ixVar.f4308a.b() : this.f4308a.equals(ixVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.f4584c;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.f4585d;
        int iHashCode4 = iHashCode3 + (str == null ? 0 : str.hashCode());
        iv ivVar = this.f4586e;
        int iHashCode5 = ((iHashCode4 * 31) + (ivVar == null ? 0 : ivVar.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode5 + iHashCode2;
    }
}
