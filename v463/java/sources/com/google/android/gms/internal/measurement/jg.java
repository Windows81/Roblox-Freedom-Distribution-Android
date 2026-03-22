package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class jg extends f<jg> {
    private static volatile jg[] K;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f4612c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public jd[] f4613d = jd.e();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ji[] f4614e = ji.e();
    public Long f = null;
    public Long g = null;
    public Long h = null;
    public Long i = null;
    public Long j = null;
    public String k = null;
    public String l = null;
    public String m = null;
    public String n = null;
    public Integer o = null;
    public String p = null;
    public String q = null;
    public String r = null;
    public Long s = null;
    public Long t = null;
    public String u = null;
    public Boolean v = null;
    public String w = null;
    public Long x = null;
    public Integer y = null;
    public String z = null;
    public String A = null;
    public Boolean B = null;
    public jc[] C = jc.e();
    public String D = null;
    public Integer E = null;
    private Integer L = null;
    private Integer M = null;
    public String F = null;
    public Long G = null;
    public Long H = null;
    public String I = null;
    private String N = null;
    public Integer J = null;

    public jg() {
        this.f4308a = null;
        this.f4670b = -1;
    }

    public static jg[] e() {
        if (K == null) {
            synchronized (k.f4653b) {
                if (K == null) {
                    K = new jg[0];
                }
            }
        }
        return K;
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    protected final int a() {
        int iA = super.a();
        Integer num = this.f4612c;
        if (num != null) {
            iA += d.b(1, num.intValue());
        }
        jd[] jdVarArr = this.f4613d;
        int i = 0;
        if (jdVarArr != null && jdVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                jd[] jdVarArr2 = this.f4613d;
                if (i2 >= jdVarArr2.length) {
                    break;
                }
                jd jdVar = jdVarArr2[i2];
                if (jdVar != null) {
                    iA += d.b(2, jdVar);
                }
                i2++;
            }
        }
        ji[] jiVarArr = this.f4614e;
        if (jiVarArr != null && jiVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                ji[] jiVarArr2 = this.f4614e;
                if (i3 >= jiVarArr2.length) {
                    break;
                }
                ji jiVar = jiVarArr2[i3];
                if (jiVar != null) {
                    iA += d.b(3, jiVar);
                }
                i3++;
            }
        }
        Long l = this.f;
        if (l != null) {
            iA += d.c(4, l.longValue());
        }
        Long l2 = this.g;
        if (l2 != null) {
            iA += d.c(5, l2.longValue());
        }
        Long l3 = this.h;
        if (l3 != null) {
            iA += d.c(6, l3.longValue());
        }
        Long l4 = this.j;
        if (l4 != null) {
            iA += d.c(7, l4.longValue());
        }
        String str = this.k;
        if (str != null) {
            iA += d.b(8, str);
        }
        String str2 = this.l;
        if (str2 != null) {
            iA += d.b(9, str2);
        }
        String str3 = this.m;
        if (str3 != null) {
            iA += d.b(10, str3);
        }
        String str4 = this.n;
        if (str4 != null) {
            iA += d.b(11, str4);
        }
        Integer num2 = this.o;
        if (num2 != null) {
            iA += d.b(12, num2.intValue());
        }
        String str5 = this.p;
        if (str5 != null) {
            iA += d.b(13, str5);
        }
        String str6 = this.q;
        if (str6 != null) {
            iA += d.b(14, str6);
        }
        String str7 = this.r;
        if (str7 != null) {
            iA += d.b(16, str7);
        }
        Long l5 = this.s;
        if (l5 != null) {
            iA += d.c(17, l5.longValue());
        }
        Long l6 = this.t;
        if (l6 != null) {
            iA += d.c(18, l6.longValue());
        }
        String str8 = this.u;
        if (str8 != null) {
            iA += d.b(19, str8);
        }
        Boolean bool = this.v;
        if (bool != null) {
            bool.booleanValue();
            iA += d.b(20) + 1;
        }
        String str9 = this.w;
        if (str9 != null) {
            iA += d.b(21, str9);
        }
        Long l7 = this.x;
        if (l7 != null) {
            iA += d.c(22, l7.longValue());
        }
        Integer num3 = this.y;
        if (num3 != null) {
            iA += d.b(23, num3.intValue());
        }
        String str10 = this.z;
        if (str10 != null) {
            iA += d.b(24, str10);
        }
        String str11 = this.A;
        if (str11 != null) {
            iA += d.b(25, str11);
        }
        Long l8 = this.i;
        if (l8 != null) {
            iA += d.c(26, l8.longValue());
        }
        Boolean bool2 = this.B;
        if (bool2 != null) {
            bool2.booleanValue();
            iA += d.b(28) + 1;
        }
        jc[] jcVarArr = this.C;
        if (jcVarArr != null && jcVarArr.length > 0) {
            while (true) {
                jc[] jcVarArr2 = this.C;
                if (i >= jcVarArr2.length) {
                    break;
                }
                jc jcVar = jcVarArr2[i];
                if (jcVar != null) {
                    iA += d.b(29, jcVar);
                }
                i++;
            }
        }
        String str12 = this.D;
        if (str12 != null) {
            iA += d.b(30, str12);
        }
        Integer num4 = this.E;
        if (num4 != null) {
            iA += d.b(31, num4.intValue());
        }
        Integer num5 = this.L;
        if (num5 != null) {
            iA += d.b(32, num5.intValue());
        }
        Integer num6 = this.M;
        if (num6 != null) {
            iA += d.b(33, num6.intValue());
        }
        String str13 = this.F;
        if (str13 != null) {
            iA += d.b(34, str13);
        }
        Long l9 = this.G;
        if (l9 != null) {
            iA += d.c(35, l9.longValue());
        }
        Long l10 = this.H;
        if (l10 != null) {
            iA += d.c(36, l10.longValue());
        }
        String str14 = this.I;
        if (str14 != null) {
            iA += d.b(37, str14);
        }
        String str15 = this.N;
        if (str15 != null) {
            iA += d.b(38, str15);
        }
        Integer num7 = this.J;
        return num7 != null ? iA + d.b(39, num7.intValue()) : iA;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final /* synthetic */ m a(c cVar) throws IOException {
        while (true) {
            int iA = cVar.a();
            switch (iA) {
                case 0:
                    return this;
                case 8:
                    this.f4612c = Integer.valueOf(cVar.d());
                    break;
                case 18:
                    int iA2 = p.a(cVar, 18);
                    jd[] jdVarArr = this.f4613d;
                    int length = jdVarArr == null ? 0 : jdVarArr.length;
                    int i = iA2 + length;
                    jd[] jdVarArr2 = new jd[i];
                    if (length != 0) {
                        System.arraycopy(this.f4613d, 0, jdVarArr2, 0, length);
                    }
                    while (length < i - 1) {
                        jdVarArr2[length] = new jd();
                        cVar.a(jdVarArr2[length]);
                        cVar.a();
                        length++;
                    }
                    jdVarArr2[length] = new jd();
                    cVar.a(jdVarArr2[length]);
                    this.f4613d = jdVarArr2;
                    break;
                case 26:
                    int iA3 = p.a(cVar, 26);
                    ji[] jiVarArr = this.f4614e;
                    int length2 = jiVarArr == null ? 0 : jiVarArr.length;
                    int i2 = iA3 + length2;
                    ji[] jiVarArr2 = new ji[i2];
                    if (length2 != 0) {
                        System.arraycopy(this.f4614e, 0, jiVarArr2, 0, length2);
                    }
                    while (length2 < i2 - 1) {
                        jiVarArr2[length2] = new ji();
                        cVar.a(jiVarArr2[length2]);
                        cVar.a();
                        length2++;
                    }
                    jiVarArr2[length2] = new ji();
                    cVar.a(jiVarArr2[length2]);
                    this.f4614e = jiVarArr2;
                    break;
                case 32:
                    this.f = Long.valueOf(cVar.e());
                    break;
                case 40:
                    this.g = Long.valueOf(cVar.e());
                    break;
                case 48:
                    this.h = Long.valueOf(cVar.e());
                    break;
                case 56:
                    this.j = Long.valueOf(cVar.e());
                    break;
                case 66:
                    this.k = cVar.c();
                    break;
                case 74:
                    this.l = cVar.c();
                    break;
                case 82:
                    this.m = cVar.c();
                    break;
                case 90:
                    this.n = cVar.c();
                    break;
                case 96:
                    this.o = Integer.valueOf(cVar.d());
                    break;
                case 106:
                    this.p = cVar.c();
                    break;
                case 114:
                    this.q = cVar.c();
                    break;
                case 130:
                    this.r = cVar.c();
                    break;
                case 136:
                    this.s = Long.valueOf(cVar.e());
                    break;
                case 144:
                    this.t = Long.valueOf(cVar.e());
                    break;
                case 154:
                    this.u = cVar.c();
                    break;
                case 160:
                    this.v = Boolean.valueOf(cVar.b());
                    break;
                case 170:
                    this.w = cVar.c();
                    break;
                case 176:
                    this.x = Long.valueOf(cVar.e());
                    break;
                case 184:
                    this.y = Integer.valueOf(cVar.d());
                    break;
                case 194:
                    this.z = cVar.c();
                    break;
                case 202:
                    this.A = cVar.c();
                    break;
                case 208:
                    this.i = Long.valueOf(cVar.e());
                    break;
                case 224:
                    this.B = Boolean.valueOf(cVar.b());
                    break;
                case 234:
                    int iA4 = p.a(cVar, 234);
                    jc[] jcVarArr = this.C;
                    int length3 = jcVarArr == null ? 0 : jcVarArr.length;
                    int i3 = iA4 + length3;
                    jc[] jcVarArr2 = new jc[i3];
                    if (length3 != 0) {
                        System.arraycopy(this.C, 0, jcVarArr2, 0, length3);
                    }
                    while (length3 < i3 - 1) {
                        jcVarArr2[length3] = new jc();
                        cVar.a(jcVarArr2[length3]);
                        cVar.a();
                        length3++;
                    }
                    jcVarArr2[length3] = new jc();
                    cVar.a(jcVarArr2[length3]);
                    this.C = jcVarArr2;
                    break;
                case 242:
                    this.D = cVar.c();
                    break;
                case 248:
                    this.E = Integer.valueOf(cVar.d());
                    break;
                case 256:
                    this.L = Integer.valueOf(cVar.d());
                    break;
                case 264:
                    this.M = Integer.valueOf(cVar.d());
                    break;
                case 274:
                    this.F = cVar.c();
                    break;
                case 280:
                    this.G = Long.valueOf(cVar.e());
                    break;
                case 288:
                    this.H = Long.valueOf(cVar.e());
                    break;
                case 298:
                    this.I = cVar.c();
                    break;
                case 306:
                    this.N = cVar.c();
                    break;
                case 312:
                    this.J = Integer.valueOf(cVar.d());
                    break;
                default:
                    if (!super.a(cVar, iA)) {
                        return this;
                    }
                    break;
                    break;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.f, com.google.android.gms.internal.measurement.m
    public final void a(d dVar) throws IOException {
        Integer num = this.f4612c;
        if (num != null) {
            dVar.a(1, num.intValue());
        }
        jd[] jdVarArr = this.f4613d;
        int i = 0;
        if (jdVarArr != null && jdVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                jd[] jdVarArr2 = this.f4613d;
                if (i2 >= jdVarArr2.length) {
                    break;
                }
                jd jdVar = jdVarArr2[i2];
                if (jdVar != null) {
                    dVar.a(2, jdVar);
                }
                i2++;
            }
        }
        ji[] jiVarArr = this.f4614e;
        if (jiVarArr != null && jiVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                ji[] jiVarArr2 = this.f4614e;
                if (i3 >= jiVarArr2.length) {
                    break;
                }
                ji jiVar = jiVarArr2[i3];
                if (jiVar != null) {
                    dVar.a(3, jiVar);
                }
                i3++;
            }
        }
        Long l = this.f;
        if (l != null) {
            dVar.b(4, l.longValue());
        }
        Long l2 = this.g;
        if (l2 != null) {
            dVar.b(5, l2.longValue());
        }
        Long l3 = this.h;
        if (l3 != null) {
            dVar.b(6, l3.longValue());
        }
        Long l4 = this.j;
        if (l4 != null) {
            dVar.b(7, l4.longValue());
        }
        String str = this.k;
        if (str != null) {
            dVar.a(8, str);
        }
        String str2 = this.l;
        if (str2 != null) {
            dVar.a(9, str2);
        }
        String str3 = this.m;
        if (str3 != null) {
            dVar.a(10, str3);
        }
        String str4 = this.n;
        if (str4 != null) {
            dVar.a(11, str4);
        }
        Integer num2 = this.o;
        if (num2 != null) {
            dVar.a(12, num2.intValue());
        }
        String str5 = this.p;
        if (str5 != null) {
            dVar.a(13, str5);
        }
        String str6 = this.q;
        if (str6 != null) {
            dVar.a(14, str6);
        }
        String str7 = this.r;
        if (str7 != null) {
            dVar.a(16, str7);
        }
        Long l5 = this.s;
        if (l5 != null) {
            dVar.b(17, l5.longValue());
        }
        Long l6 = this.t;
        if (l6 != null) {
            dVar.b(18, l6.longValue());
        }
        String str8 = this.u;
        if (str8 != null) {
            dVar.a(19, str8);
        }
        Boolean bool = this.v;
        if (bool != null) {
            dVar.a(20, bool.booleanValue());
        }
        String str9 = this.w;
        if (str9 != null) {
            dVar.a(21, str9);
        }
        Long l7 = this.x;
        if (l7 != null) {
            dVar.b(22, l7.longValue());
        }
        Integer num3 = this.y;
        if (num3 != null) {
            dVar.a(23, num3.intValue());
        }
        String str10 = this.z;
        if (str10 != null) {
            dVar.a(24, str10);
        }
        String str11 = this.A;
        if (str11 != null) {
            dVar.a(25, str11);
        }
        Long l8 = this.i;
        if (l8 != null) {
            dVar.b(26, l8.longValue());
        }
        Boolean bool2 = this.B;
        if (bool2 != null) {
            dVar.a(28, bool2.booleanValue());
        }
        jc[] jcVarArr = this.C;
        if (jcVarArr != null && jcVarArr.length > 0) {
            while (true) {
                jc[] jcVarArr2 = this.C;
                if (i >= jcVarArr2.length) {
                    break;
                }
                jc jcVar = jcVarArr2[i];
                if (jcVar != null) {
                    dVar.a(29, jcVar);
                }
                i++;
            }
        }
        String str12 = this.D;
        if (str12 != null) {
            dVar.a(30, str12);
        }
        Integer num4 = this.E;
        if (num4 != null) {
            dVar.a(31, num4.intValue());
        }
        Integer num5 = this.L;
        if (num5 != null) {
            dVar.a(32, num5.intValue());
        }
        Integer num6 = this.M;
        if (num6 != null) {
            dVar.a(33, num6.intValue());
        }
        String str13 = this.F;
        if (str13 != null) {
            dVar.a(34, str13);
        }
        Long l9 = this.G;
        if (l9 != null) {
            dVar.b(35, l9.longValue());
        }
        Long l10 = this.H;
        if (l10 != null) {
            dVar.b(36, l10.longValue());
        }
        String str14 = this.I;
        if (str14 != null) {
            dVar.a(37, str14);
        }
        String str15 = this.N;
        if (str15 != null) {
            dVar.a(38, str15);
        }
        Integer num7 = this.J;
        if (num7 != null) {
            dVar.a(39, num7.intValue());
        }
        super.a(dVar);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof jg)) {
            return false;
        }
        jg jgVar = (jg) obj;
        Integer num = this.f4612c;
        if (num == null) {
            if (jgVar.f4612c != null) {
                return false;
            }
        } else if (!num.equals(jgVar.f4612c)) {
            return false;
        }
        if (!k.a(this.f4613d, jgVar.f4613d) || !k.a(this.f4614e, jgVar.f4614e)) {
            return false;
        }
        Long l = this.f;
        if (l == null) {
            if (jgVar.f != null) {
                return false;
            }
        } else if (!l.equals(jgVar.f)) {
            return false;
        }
        Long l2 = this.g;
        if (l2 == null) {
            if (jgVar.g != null) {
                return false;
            }
        } else if (!l2.equals(jgVar.g)) {
            return false;
        }
        Long l3 = this.h;
        if (l3 == null) {
            if (jgVar.h != null) {
                return false;
            }
        } else if (!l3.equals(jgVar.h)) {
            return false;
        }
        Long l4 = this.i;
        if (l4 == null) {
            if (jgVar.i != null) {
                return false;
            }
        } else if (!l4.equals(jgVar.i)) {
            return false;
        }
        Long l5 = this.j;
        if (l5 == null) {
            if (jgVar.j != null) {
                return false;
            }
        } else if (!l5.equals(jgVar.j)) {
            return false;
        }
        String str = this.k;
        if (str == null) {
            if (jgVar.k != null) {
                return false;
            }
        } else if (!str.equals(jgVar.k)) {
            return false;
        }
        String str2 = this.l;
        if (str2 == null) {
            if (jgVar.l != null) {
                return false;
            }
        } else if (!str2.equals(jgVar.l)) {
            return false;
        }
        String str3 = this.m;
        if (str3 == null) {
            if (jgVar.m != null) {
                return false;
            }
        } else if (!str3.equals(jgVar.m)) {
            return false;
        }
        String str4 = this.n;
        if (str4 == null) {
            if (jgVar.n != null) {
                return false;
            }
        } else if (!str4.equals(jgVar.n)) {
            return false;
        }
        Integer num2 = this.o;
        if (num2 == null) {
            if (jgVar.o != null) {
                return false;
            }
        } else if (!num2.equals(jgVar.o)) {
            return false;
        }
        String str5 = this.p;
        if (str5 == null) {
            if (jgVar.p != null) {
                return false;
            }
        } else if (!str5.equals(jgVar.p)) {
            return false;
        }
        String str6 = this.q;
        if (str6 == null) {
            if (jgVar.q != null) {
                return false;
            }
        } else if (!str6.equals(jgVar.q)) {
            return false;
        }
        String str7 = this.r;
        if (str7 == null) {
            if (jgVar.r != null) {
                return false;
            }
        } else if (!str7.equals(jgVar.r)) {
            return false;
        }
        Long l6 = this.s;
        if (l6 == null) {
            if (jgVar.s != null) {
                return false;
            }
        } else if (!l6.equals(jgVar.s)) {
            return false;
        }
        Long l7 = this.t;
        if (l7 == null) {
            if (jgVar.t != null) {
                return false;
            }
        } else if (!l7.equals(jgVar.t)) {
            return false;
        }
        String str8 = this.u;
        if (str8 == null) {
            if (jgVar.u != null) {
                return false;
            }
        } else if (!str8.equals(jgVar.u)) {
            return false;
        }
        Boolean bool = this.v;
        if (bool == null) {
            if (jgVar.v != null) {
                return false;
            }
        } else if (!bool.equals(jgVar.v)) {
            return false;
        }
        String str9 = this.w;
        if (str9 == null) {
            if (jgVar.w != null) {
                return false;
            }
        } else if (!str9.equals(jgVar.w)) {
            return false;
        }
        Long l8 = this.x;
        if (l8 == null) {
            if (jgVar.x != null) {
                return false;
            }
        } else if (!l8.equals(jgVar.x)) {
            return false;
        }
        Integer num3 = this.y;
        if (num3 == null) {
            if (jgVar.y != null) {
                return false;
            }
        } else if (!num3.equals(jgVar.y)) {
            return false;
        }
        String str10 = this.z;
        if (str10 == null) {
            if (jgVar.z != null) {
                return false;
            }
        } else if (!str10.equals(jgVar.z)) {
            return false;
        }
        String str11 = this.A;
        if (str11 == null) {
            if (jgVar.A != null) {
                return false;
            }
        } else if (!str11.equals(jgVar.A)) {
            return false;
        }
        Boolean bool2 = this.B;
        if (bool2 == null) {
            if (jgVar.B != null) {
                return false;
            }
        } else if (!bool2.equals(jgVar.B)) {
            return false;
        }
        if (!k.a(this.C, jgVar.C)) {
            return false;
        }
        String str12 = this.D;
        if (str12 == null) {
            if (jgVar.D != null) {
                return false;
            }
        } else if (!str12.equals(jgVar.D)) {
            return false;
        }
        Integer num4 = this.E;
        if (num4 == null) {
            if (jgVar.E != null) {
                return false;
            }
        } else if (!num4.equals(jgVar.E)) {
            return false;
        }
        Integer num5 = this.L;
        if (num5 == null) {
            if (jgVar.L != null) {
                return false;
            }
        } else if (!num5.equals(jgVar.L)) {
            return false;
        }
        Integer num6 = this.M;
        if (num6 == null) {
            if (jgVar.M != null) {
                return false;
            }
        } else if (!num6.equals(jgVar.M)) {
            return false;
        }
        String str13 = this.F;
        if (str13 == null) {
            if (jgVar.F != null) {
                return false;
            }
        } else if (!str13.equals(jgVar.F)) {
            return false;
        }
        Long l9 = this.G;
        if (l9 == null) {
            if (jgVar.G != null) {
                return false;
            }
        } else if (!l9.equals(jgVar.G)) {
            return false;
        }
        Long l10 = this.H;
        if (l10 == null) {
            if (jgVar.H != null) {
                return false;
            }
        } else if (!l10.equals(jgVar.H)) {
            return false;
        }
        String str14 = this.I;
        if (str14 == null) {
            if (jgVar.I != null) {
                return false;
            }
        } else if (!str14.equals(jgVar.I)) {
            return false;
        }
        String str15 = this.N;
        if (str15 == null) {
            if (jgVar.N != null) {
                return false;
            }
        } else if (!str15.equals(jgVar.N)) {
            return false;
        }
        Integer num7 = this.J;
        if (num7 == null) {
            if (jgVar.J != null) {
                return false;
            }
        } else if (!num7.equals(jgVar.J)) {
            return false;
        }
        return (this.f4308a == null || this.f4308a.b()) ? jgVar.f4308a == null || jgVar.f4308a.b() : this.f4308a.equals(jgVar.f4308a);
    }

    public final int hashCode() {
        int iHashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.f4612c;
        int iHashCode2 = 0;
        int iHashCode3 = (((((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + k.a(this.f4613d)) * 31) + k.a(this.f4614e)) * 31;
        Long l = this.f;
        int iHashCode4 = (iHashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.g;
        int iHashCode5 = (iHashCode4 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.h;
        int iHashCode6 = (iHashCode5 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Long l4 = this.i;
        int iHashCode7 = (iHashCode6 + (l4 == null ? 0 : l4.hashCode())) * 31;
        Long l5 = this.j;
        int iHashCode8 = (iHashCode7 + (l5 == null ? 0 : l5.hashCode())) * 31;
        String str = this.k;
        int iHashCode9 = (iHashCode8 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.l;
        int iHashCode10 = (iHashCode9 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.m;
        int iHashCode11 = (iHashCode10 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.n;
        int iHashCode12 = (iHashCode11 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num2 = this.o;
        int iHashCode13 = (iHashCode12 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str5 = this.p;
        int iHashCode14 = (iHashCode13 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.q;
        int iHashCode15 = (iHashCode14 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.r;
        int iHashCode16 = (iHashCode15 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Long l6 = this.s;
        int iHashCode17 = (iHashCode16 + (l6 == null ? 0 : l6.hashCode())) * 31;
        Long l7 = this.t;
        int iHashCode18 = (iHashCode17 + (l7 == null ? 0 : l7.hashCode())) * 31;
        String str8 = this.u;
        int iHashCode19 = (iHashCode18 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Boolean bool = this.v;
        int iHashCode20 = (iHashCode19 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str9 = this.w;
        int iHashCode21 = (iHashCode20 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Long l8 = this.x;
        int iHashCode22 = (iHashCode21 + (l8 == null ? 0 : l8.hashCode())) * 31;
        Integer num3 = this.y;
        int iHashCode23 = (iHashCode22 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str10 = this.z;
        int iHashCode24 = (iHashCode23 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.A;
        int iHashCode25 = (iHashCode24 + (str11 == null ? 0 : str11.hashCode())) * 31;
        Boolean bool2 = this.B;
        int iHashCode26 = (((iHashCode25 + (bool2 == null ? 0 : bool2.hashCode())) * 31) + k.a(this.C)) * 31;
        String str12 = this.D;
        int iHashCode27 = (iHashCode26 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Integer num4 = this.E;
        int iHashCode28 = (iHashCode27 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.L;
        int iHashCode29 = (iHashCode28 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.M;
        int iHashCode30 = (iHashCode29 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str13 = this.F;
        int iHashCode31 = (iHashCode30 + (str13 == null ? 0 : str13.hashCode())) * 31;
        Long l9 = this.G;
        int iHashCode32 = (iHashCode31 + (l9 == null ? 0 : l9.hashCode())) * 31;
        Long l10 = this.H;
        int iHashCode33 = (iHashCode32 + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str14 = this.I;
        int iHashCode34 = (iHashCode33 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.N;
        int iHashCode35 = (iHashCode34 + (str15 == null ? 0 : str15.hashCode())) * 31;
        Integer num7 = this.J;
        int iHashCode36 = (iHashCode35 + (num7 == null ? 0 : num7.hashCode())) * 31;
        if (this.f4308a != null && !this.f4308a.b()) {
            iHashCode2 = this.f4308a.hashCode();
        }
        return iHashCode36 + iHashCode2;
    }
}
