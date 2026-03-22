package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class iw extends f<iw> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f4581c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Boolean f4582d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4583e = null;
    public String f = null;
    public String g = null;

    public iw() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.m
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final iw a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 8) {
                int i = cVar.i();
                try {
                    int iD = cVar.d();
                    if (iD < 0 || iD > 4) {
                        StringBuilder sb = new StringBuilder(46);
                        sb.append(iD);
                        sb.append(" is not a valid enum ComparisonType");
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.f4581c = Integer.valueOf(iD);
                } catch (IllegalArgumentException unused) {
                    cVar.e(i);
                    a(cVar, iA);
                }
            } else if (iA == 16) {
                this.f4582d = Boolean.valueOf(cVar.b());
            } else if (iA == 26) {
                this.f4583e = cVar.c();
            } else if (iA == 34) {
                this.f = cVar.c();
            } else if (iA == 42) {
                this.g = cVar.c();
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        Integer num = this.f4581c;
        if (num != null) {
            iA += d.b(1, num.intValue());
        }
        Boolean bool = this.f4582d;
        if (bool != null) {
            bool.booleanValue();
            iA += d.b(2) + 1;
        }
        String str = this.f4583e;
        if (str != null) {
            iA += d.b(3, str);
        }
        String str2 = this.f;
        if (str2 != null) {
            iA += d.b(4, str2);
        }
        String str3 = this.g;
        return str3 != null ? iA + d.b(5, str3) : iA;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        Integer num = this.f4581c;
        if (num != null) {
            dVar.a(1, num.intValue());
        }
        Boolean bool = this.f4582d;
        if (bool != null) {
            dVar.a(2, bool.booleanValue());
        }
        String str = this.f4583e;
        if (str != null) {
            dVar.a(3, str);
        }
        String str2 = this.f;
        if (str2 != null) {
            dVar.a(4, str2);
        }
        String str3 = this.g;
        if (str3 != null) {
            dVar.a(5, str3);
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof iw)) {
            return false;
        }
        iw iwVar = (iw) obj;
        Integer num = this.f4581c;
        if (num == null) {
            if (iwVar.f4581c != null) {
                return false;
            }
        } else if (!num.equals(iwVar.f4581c)) {
            return false;
        }
        Boolean bool = this.f4582d;
        if (bool == null) {
            if (iwVar.f4582d != null) {
                return false;
            }
        } else if (!bool.equals(iwVar.f4582d)) {
            return false;
        }
        String str = this.f4583e;
        if (str == null) {
            if (iwVar.f4583e != null) {
                return false;
            }
        } else if (!str.equals(iwVar.f4583e)) {
            return false;
        }
        String str2 = this.f;
        if (str2 == null) {
            if (iwVar.f != null) {
                return false;
            }
        } else if (!str2.equals(iwVar.f)) {
            return false;
        }
        String str3 = this.g;
        if (str3 == null) {
            if (iwVar.g != null) {
                return false;
            }
        } else if (!str3.equals(iwVar.g)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? iwVar.f4308a == null || iwVar.f4308a.b() : this.f4308a.equals(iwVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.f4581c;
        int iHashCode2 = 0;
        int iIntValue = (iHashCode + (num == null ? 0 : num.intValue())) * 31;
        Boolean bool = this.f4582d;
        int iHashCode3 = (iIntValue + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.f4583e;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode6 + iHashCode2;
    }
}
