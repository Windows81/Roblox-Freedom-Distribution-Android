package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ja extends f<ja> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Long f4596c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4597d = null;
    private Integer h = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public jb[] f4598e = jb.e();
    public iz[] f = iz.e();
    public it[] g = it.e();

    public ja() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        Long l = this.f4596c;
        if (l != null) {
            iA += d.c(1, l.longValue());
        }
        String str = this.f4597d;
        if (str != null) {
            iA += d.b(2, str);
        }
        Integer num = this.h;
        if (num != null) {
            iA += d.b(3, num.intValue());
        }
        jb[] jbVarArr = this.f4598e;
        int i = 0;
        if (jbVarArr != null && jbVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                jb[] jbVarArr2 = this.f4598e;
                if (i2 >= jbVarArr2.length) {
                    break;
                }
                jb jbVar = jbVarArr2[i2];
                if (jbVar != null) {
                    iA += d.b(4, jbVar);
                }
                i2++;
            }
        }
        iz[] izVarArr = this.f;
        if (izVarArr != null && izVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                iz[] izVarArr2 = this.f;
                if (i3 >= izVarArr2.length) {
                    break;
                }
                iz izVar = izVarArr2[i3];
                if (izVar != null) {
                    iA += d.b(5, izVar);
                }
                i3++;
            }
        }
        it[] itVarArr = this.g;
        if (itVarArr != null && itVarArr.length > 0) {
            while (true) {
                it[] itVarArr2 = this.g;
                if (i >= itVarArr2.length) {
                    break;
                }
                it itVar = itVarArr2[i];
                if (itVar != null) {
                    iA += d.b(6, itVar);
                }
                i++;
            }
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            if (iA == 0) {
                return this;
            }
            if (iA == 8) {
                this.f4596c = Long.valueOf(cVar.e());
            } else if (iA == 18) {
                this.f4597d = cVar.c();
            } else if (iA == 24) {
                this.h = Integer.valueOf(cVar.d());
            } else if (iA == 34) {
                int iA2 = p.a(cVar, 34);
                jb[] jbVarArr = this.f4598e;
                int length = jbVarArr == null ? 0 : jbVarArr.length;
                int i = iA2 + length;
                jb[] jbVarArr2 = new jb[i];
                if (length != 0) {
                    System.arraycopy(this.f4598e, 0, jbVarArr2, 0, length);
                }
                while (length < i - 1) {
                    jbVarArr2[length] = new jb();
                    cVar.a(jbVarArr2[length]);
                    cVar.a();
                    length++;
                }
                jbVarArr2[length] = new jb();
                cVar.a(jbVarArr2[length]);
                this.f4598e = jbVarArr2;
            } else if (iA == 42) {
                int iA3 = p.a(cVar, 42);
                iz[] izVarArr = this.f;
                int length2 = izVarArr == null ? 0 : izVarArr.length;
                int i2 = iA3 + length2;
                iz[] izVarArr2 = new iz[i2];
                if (length2 != 0) {
                    System.arraycopy(this.f, 0, izVarArr2, 0, length2);
                }
                while (length2 < i2 - 1) {
                    izVarArr2[length2] = new iz();
                    cVar.a(izVarArr2[length2]);
                    cVar.a();
                    length2++;
                }
                izVarArr2[length2] = new iz();
                cVar.a(izVarArr2[length2]);
                this.f = izVarArr2;
            } else if (iA == 50) {
                int iA4 = p.a(cVar, 50);
                it[] itVarArr = this.g;
                int length3 = itVarArr == null ? 0 : itVarArr.length;
                int i3 = iA4 + length3;
                it[] itVarArr2 = new it[i3];
                if (length3 != 0) {
                    System.arraycopy(this.g, 0, itVarArr2, 0, length3);
                }
                while (length3 < i3 - 1) {
                    itVarArr2[length3] = new it();
                    cVar.a(itVarArr2[length3]);
                    cVar.a();
                    length3++;
                }
                itVarArr2[length3] = new it();
                cVar.a(itVarArr2[length3]);
                this.g = itVarArr2;
            } else if (!super.a(cVar, iA)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        Long l = this.f4596c;
        if (l != null) {
            dVar.b(1, l.longValue());
        }
        String str = this.f4597d;
        if (str != null) {
            dVar.a(2, str);
        }
        Integer num = this.h;
        if (num != null) {
            dVar.a(3, num.intValue());
        }
        jb[] jbVarArr = this.f4598e;
        int i = 0;
        if (jbVarArr != null && jbVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                jb[] jbVarArr2 = this.f4598e;
                if (i2 >= jbVarArr2.length) {
                    break;
                }
                jb jbVar = jbVarArr2[i2];
                if (jbVar != null) {
                    dVar.a(4, jbVar);
                }
                i2++;
            }
        }
        iz[] izVarArr = this.f;
        if (izVarArr != null && izVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                iz[] izVarArr2 = this.f;
                if (i3 >= izVarArr2.length) {
                    break;
                }
                iz izVar = izVarArr2[i3];
                if (izVar != null) {
                    dVar.a(5, izVar);
                }
                i3++;
            }
        }
        it[] itVarArr = this.g;
        if (itVarArr != null && itVarArr.length > 0) {
            while (true) {
                it[] itVarArr2 = this.g;
                if (i >= itVarArr2.length) {
                    break;
                }
                it itVar = itVarArr2[i];
                if (itVar != null) {
                    dVar.a(6, itVar);
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
        if (!(obj instanceof ja)) {
            return false;
        }
        ja jaVar = (ja) obj;
        Long l = this.f4596c;
        if (l == null) {
            if (jaVar.f4596c != null) {
                return false;
            }
        } else if (!l.equals(jaVar.f4596c)) {
            return false;
        }
        String str = this.f4597d;
        if (str == null) {
            if (jaVar.f4597d != null) {
                return false;
            }
        } else if (!str.equals(jaVar.f4597d)) {
            return false;
        }
        Integer num = this.h;
        if (num == null) {
            if (jaVar.h != null) {
                return false;
            }
        } else if (!num.equals(jaVar.h)) {
            return false;
        }
        if (k.a(this.f4598e, jaVar.f4598e) && k.a(this.f, jaVar.f) && k.a(this.g, jaVar.g)) {
            return (this.f4308a == null || this.f4308a.b()) ? jaVar.f4308a == null || jaVar.f4308a.b() : this.f4308a.equals(jaVar.f4308a);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Long l = this.f4596c;
        int iHashCode2 = 0;
        int iHashCode3 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str = this.f4597d;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.h;
        int iHashCode5 = (((((((iHashCode4 + (num == null ? 0 : num.hashCode())) * 31) + k.a(this.f4598e)) * 31) + k.a(this.f)) * 31) + k.a(this.g)) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode5 + iHashCode2;
    }
}
