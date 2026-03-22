package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class iz extends f<iz> {
    private static volatile iz[] g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f4590c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Boolean f4591d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Boolean f4592e = null;
    public Integer f = null;

    public iz() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static iz[] e() {
        if (g == null) {
            synchronized (k.f4653b) {
                if (g == null) {
                    g = new iz[0];
                }
            }
        }
        return g;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        String str = this.f4590c;
        if (str != null) {
            iA += d.b(1, str);
        }
        Boolean bool = this.f4591d;
        if (bool != null) {
            bool.booleanValue();
            iA += d.b(2) + 1;
        }
        Boolean bool2 = this.f4592e;
        if (bool2 != null) {
            bool2.booleanValue();
            iA += d.b(3) + 1;
        }
        Integer num = this.f;
        return num != null ? iA + d.b(4, num.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 10) {
                this.f4590c = cVar.c();
            } else if (iA == 16) {
                this.f4591d = Boolean.valueOf(cVar.b());
            } else if (iA == 24) {
                this.f4592e = Boolean.valueOf(cVar.b());
            } else if (iA == 32) {
                this.f = Integer.valueOf(cVar.d());
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        String str = this.f4590c;
        if (str != null) {
            dVar.a(1, str);
        }
        Boolean bool = this.f4591d;
        if (bool != null) {
            dVar.a(2, bool.booleanValue());
        }
        Boolean bool2 = this.f4592e;
        if (bool2 != null) {
            dVar.a(3, bool2.booleanValue());
        }
        Integer num = this.f;
        if (num != null) {
            dVar.a(4, num.intValue());
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof iz)) {
            return false;
        }
        iz izVar = (iz) obj;
        String str = this.f4590c;
        if (str == null) {
            if (izVar.f4590c != null) {
                return false;
            }
        } else if (!str.equals(izVar.f4590c)) {
            return false;
        }
        Boolean bool = this.f4591d;
        if (bool == null) {
            if (izVar.f4591d != null) {
                return false;
            }
        } else if (!bool.equals(izVar.f4591d)) {
            return false;
        }
        Boolean bool2 = this.f4592e;
        if (bool2 == null) {
            if (izVar.f4592e != null) {
                return false;
            }
        } else if (!bool2.equals(izVar.f4592e)) {
            return false;
        }
        Integer num = this.f;
        if (num == null) {
            if (izVar.f != null) {
                return false;
            }
        } else if (!num.equals(izVar.f)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? izVar.f4308a == null || izVar.f4308a.b() : this.f4308a.equals(izVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        String str = this.f4590c;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.f4591d;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f4592e;
        int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Integer num = this.f;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }
}
