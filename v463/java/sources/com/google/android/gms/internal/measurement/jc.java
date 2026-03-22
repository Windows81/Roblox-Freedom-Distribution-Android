package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class jc extends f<jc> {
    private static volatile jc[] g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f4602c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public jh f4603d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public jh f4604e = null;
    public Boolean f = null;

    public jc() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static jc[] e() {
        if (g == null) {
            synchronized (k.f4653b) {
                if (g == null) {
                    g = new jc[0];
                }
            }
        }
        return g;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        Integer num = this.f4602c;
        if (num != null) {
            iA += d.b(1, num.intValue());
        }
        jh jhVar = this.f4603d;
        if (jhVar != null) {
            iA += d.b(2, jhVar);
        }
        jh jhVar2 = this.f4604e;
        if (jhVar2 != null) {
            iA += d.b(3, jhVar2);
        }
        Boolean bool = this.f;
        if (bool == null) {
            return iA;
        }
        bool.booleanValue();
        return iA + d.b(4) + 1;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        jh jhVar;
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA != 8) {
                if (iA == 18) {
                    if (this.f4603d == null) {
                        this.f4603d = new jh();
                    }
                    jhVar = this.f4603d;
                } else if (iA == 26) {
                    if (this.f4604e == null) {
                        this.f4604e = new jh();
                    }
                    jhVar = this.f4604e;
                } else if (iA == 32) {
                    this.f = Boolean.valueOf(cVar.b());
                } else if (!super.a(cVar, iA)) {
                    return this;
                }
                cVar.a(jhVar);
            } else {
                this.f4602c = Integer.valueOf(cVar.d());
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        Integer num = this.f4602c;
        if (num != null) {
            dVar.a(1, num.intValue());
        }
        jh jhVar = this.f4603d;
        if (jhVar != null) {
            dVar.a(2, jhVar);
        }
        jh jhVar2 = this.f4604e;
        if (jhVar2 != null) {
            dVar.a(3, jhVar2);
        }
        Boolean bool = this.f;
        if (bool != null) {
            dVar.a(4, bool.booleanValue());
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jc)) {
            return false;
        }
        jc jcVar = (jc) obj;
        Integer num = this.f4602c;
        if (num == null) {
            if (jcVar.f4602c != null) {
                return false;
            }
        } else if (!num.equals(jcVar.f4602c)) {
            return false;
        }
        jh jhVar = this.f4603d;
        if (jhVar == null) {
            if (jcVar.f4603d != null) {
                return false;
            }
        } else if (!jhVar.equals(jcVar.f4603d)) {
            return false;
        }
        jh jhVar2 = this.f4604e;
        if (jhVar2 == null) {
            if (jcVar.f4604e != null) {
                return false;
            }
        } else if (!jhVar2.equals(jcVar.f4604e)) {
            return false;
        }
        Boolean bool = this.f;
        if (bool == null) {
            if (jcVar.f != null) {
                return false;
            }
        } else if (!bool.equals(jcVar.f)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? jcVar.f4308a == null || jcVar.f4308a.b() : this.f4308a.equals(jcVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.f4602c;
        int iHashCode2 = 0;
        int iHashCode3 = iHashCode + (num == null ? 0 : num.hashCode());
        jh jhVar = this.f4603d;
        int iHashCode4 = (iHashCode3 * 31) + (jhVar == null ? 0 : jhVar.hashCode());
        jh jhVar2 = this.f4604e;
        int iHashCode5 = ((iHashCode4 * 31) + (jhVar2 == null ? 0 : jhVar2.hashCode())) * 31;
        Boolean bool = this.f;
        int iHashCode6 = (iHashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }
}
