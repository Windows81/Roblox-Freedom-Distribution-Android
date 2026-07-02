package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class aco<T> implements add<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Unsafe f3793a = aec.c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f3794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f3795c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3796d;
    private final int e;
    private final int f;
    private final ack g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final int[] l;
    private final int[] m;
    private final int[] n;
    private final act o;
    private final abu p;
    private final adw<?, ?> q;
    private final aas<?> r;
    private final acf s;

    private aco(int[] iArr, Object[] objArr, int i, int i2, int i3, ack ackVar, boolean z, boolean z2, int[] iArr2, int[] iArr3, int[] iArr4, act actVar, abu abuVar, adw<?, ?> adwVar, aas<?> aasVar, acf acfVar) {
        this.f3794b = iArr;
        this.f3795c = objArr;
        this.f3796d = i;
        this.e = i2;
        this.f = i3;
        this.i = ackVar instanceof abd;
        this.j = z;
        this.h = aasVar != null && aasVar.a(ackVar);
        this.k = false;
        this.l = iArr2;
        this.m = iArr3;
        this.n = iArr4;
        this.o = actVar;
        this.p = abuVar;
        this.q = adwVar;
        this.r = aasVar;
        this.g = ackVar;
        this.s = acfVar;
    }

    private static int a(int i, byte[] bArr, int i2, int i3, Object obj, zs zsVar) throws IOException {
        return zr.a(i, bArr, i2, i3, e(obj), zsVar);
    }

    private static int a(add<?> addVar, int i, byte[] bArr, int i2, int i3, abi<?> abiVar, zs zsVar) throws IOException {
        int iA = a((add) addVar, bArr, i2, i3, zsVar);
        abiVar.add(zsVar.f5746c);
        while (iA < i3) {
            int iA2 = zr.a(bArr, iA, zsVar);
            if (i != zsVar.f5744a) {
                break;
            }
            iA = a((add) addVar, bArr, iA2, i3, zsVar);
            abiVar.add(zsVar.f5746c);
        }
        return iA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int a(add addVar, byte[] bArr, int i, int i2, int i3, zs zsVar) throws IOException {
        aco acoVar = (aco) addVar;
        Object objA = acoVar.a();
        int iA = acoVar.a(objA, bArr, i, i2, i3, zsVar);
        acoVar.c(objA);
        zsVar.f5746c = objA;
        return iA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int a(add addVar, byte[] bArr, int i, int i2, zs zsVar) throws IOException {
        int i3;
        int iA = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            iA = zr.a(i4, bArr, iA, zsVar);
            i3 = zsVar.f5744a;
        } else {
            i3 = i4;
        }
        if (i3 < 0 || i3 > i2 - iA) {
            throw abj.a();
        }
        Object objA = addVar.a();
        addVar.a(objA, bArr, iA, iA + i3, zsVar);
        addVar.c(objA);
        zsVar.f5746c = objA;
        return iA + i3;
    }

    private static <UT, UB> int a(adw<UT, UB> adwVar, T t) {
        return adwVar.f(adwVar.b(t));
    }

    private final int a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zs zsVar) throws IOException {
        int iA;
        Unsafe unsafe = f3793a;
        long j2 = this.f3794b[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Double.valueOf(zr.c(bArr, i)));
                iA = i + 8;
                break;
                break;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Float.valueOf(zr.d(bArr, i)));
                iA = i + 4;
                break;
                break;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                iA = zr.b(bArr, i, zsVar);
                unsafe.putObject(t, j, Long.valueOf(zsVar.f5745b));
                break;
                break;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                iA = zr.a(bArr, i, zsVar);
                unsafe.putObject(t, j, Integer.valueOf(zsVar.f5744a));
                break;
                break;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Long.valueOf(zr.b(bArr, i)));
                iA = i + 8;
                break;
                break;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Integer.valueOf(zr.a(bArr, i)));
                iA = i + 4;
                break;
                break;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                int iB = zr.b(bArr, i, zsVar);
                unsafe.putObject(t, j, Boolean.valueOf(zsVar.f5745b != 0));
                iA = iB;
                break;
                break;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iA2 = zr.a(bArr, i, zsVar);
                int i9 = zsVar.f5744a;
                if (i9 == 0) {
                    unsafe.putObject(t, j, "");
                } else {
                    if ((536870912 & i6) != 0 && !aee.a(bArr, iA2, iA2 + i9)) {
                        throw abj.h();
                    }
                    unsafe.putObject(t, j, new String(bArr, iA2, i9, abf.f3754a));
                    iA2 += i9;
                }
                unsafe.putInt(t, j2, i4);
                return iA2;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                int iA3 = a(a(i8), bArr, i, i2, zsVar);
                Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                if (object == null) {
                    unsafe.putObject(t, j, zsVar.f5746c);
                } else {
                    unsafe.putObject(t, j, abf.a(object, zsVar.f5746c));
                }
                unsafe.putInt(t, j2, i4);
                return iA3;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                int iA4 = zr.a(bArr, i, zsVar);
                int i10 = zsVar.f5744a;
                if (i10 == 0) {
                    unsafe.putObject(t, j, zv.f5750a);
                } else {
                    unsafe.putObject(t, j, zv.a(bArr, iA4, i10));
                    iA4 += i10;
                }
                unsafe.putInt(t, j2, i4);
                return iA4;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                iA = zr.a(bArr, i, zsVar);
                int i11 = zsVar.f5744a;
                abh<?> abhVarC = c(i8);
                if (abhVarC != null && abhVarC.a(i11) == null) {
                    e(t).a(i3, Long.valueOf(i11));
                    return iA;
                }
                unsafe.putObject(t, j, Integer.valueOf(i11));
                break;
                break;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                iA = zr.a(bArr, i, zsVar);
                unsafe.putObject(t, j, Integer.valueOf(aae.f(zsVar.f5744a)));
                break;
                break;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                iA = zr.b(bArr, i, zsVar);
                unsafe.putObject(t, j, Long.valueOf(aae.a(zsVar.f5745b)));
                break;
                break;
            case 68:
                if (i5 != 3) {
                    return i;
                }
                iA = a(a(i8), bArr, i, i2, (i3 & (-8)) | 4, zsVar);
                Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                if (object2 != null) {
                    unsafe.putObject(t, j, abf.a(object2, zsVar.f5746c));
                } else {
                    unsafe.putObject(t, j, zsVar.f5746c);
                }
                break;
                break;
            default:
                return i;
        }
        unsafe.putInt(t, j2, i4);
        return iA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zs zsVar) throws IOException {
        abi abiVarA;
        int iA;
        abi abiVar = (abi) f3793a.getObject(t, j2);
        if (abiVar.a()) {
            abiVarA = abiVar;
        } else {
            int size = abiVar.size();
            abiVarA = abiVar.a(size == 0 ? 10 : size << 1);
            f3793a.putObject(t, j2, abiVarA);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    aam aamVar = (aam) abiVarA;
                    int iA2 = zr.a(bArr, i, zsVar);
                    int i8 = zsVar.f5744a + iA2;
                    while (iA2 < i8) {
                        aamVar.a(zr.c(bArr, iA2));
                        iA2 += 8;
                    }
                    if (iA2 != i8) {
                        throw abj.a();
                    }
                    return iA2;
                }
                if (i5 != 1) {
                    return i;
                }
                aam aamVar2 = (aam) abiVarA;
                aamVar2.a(zr.c(bArr, i));
                int i9 = i + 8;
                while (i9 < i2) {
                    int iA3 = zr.a(bArr, i9, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return i9;
                    }
                    aamVar2.a(zr.c(bArr, iA3));
                    i9 = iA3 + 8;
                }
                return i9;
            case 19:
            case 36:
                if (i5 == 2) {
                    abb abbVar = (abb) abiVarA;
                    int iA4 = zr.a(bArr, i, zsVar);
                    int i10 = zsVar.f5744a + iA4;
                    while (iA4 < i10) {
                        abbVar.a(zr.d(bArr, iA4));
                        iA4 += 4;
                    }
                    if (iA4 != i10) {
                        throw abj.a();
                    }
                    return iA4;
                }
                if (i5 != 5) {
                    return i;
                }
                abb abbVar2 = (abb) abiVarA;
                abbVar2.a(zr.d(bArr, i));
                int i11 = i + 4;
                while (i11 < i2) {
                    int iA5 = zr.a(bArr, i11, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return i11;
                    }
                    abbVar2.a(zr.d(bArr, iA5));
                    i11 = iA5 + 4;
                }
                return i11;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    aby abyVar = (aby) abiVarA;
                    int iA6 = zr.a(bArr, i, zsVar);
                    int i12 = zsVar.f5744a + iA6;
                    while (iA6 < i12) {
                        iA6 = zr.b(bArr, iA6, zsVar);
                        abyVar.a(zsVar.f5745b);
                    }
                    if (iA6 != i12) {
                        throw abj.a();
                    }
                    return iA6;
                }
                if (i5 != 0) {
                    return i;
                }
                aby abyVar2 = (aby) abiVarA;
                int iB = zr.b(bArr, i, zsVar);
                abyVar2.a(zsVar.f5745b);
                while (iB < i2) {
                    int iA7 = zr.a(bArr, iB, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return iB;
                    }
                    iB = zr.b(bArr, iA7, zsVar);
                    abyVar2.a(zsVar.f5745b);
                }
                return iB;
            case 22:
            case 29:
            case 39:
            case 43:
                return i5 == 2 ? zr.a(bArr, i, (abi<?>) abiVarA, zsVar) : i5 == 0 ? zr.a(i3, bArr, i, i2, (abi<?>) abiVarA, zsVar) : i;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    aby abyVar3 = (aby) abiVarA;
                    int iA8 = zr.a(bArr, i, zsVar);
                    int i13 = zsVar.f5744a + iA8;
                    while (iA8 < i13) {
                        abyVar3.a(zr.b(bArr, iA8));
                        iA8 += 8;
                    }
                    if (iA8 != i13) {
                        throw abj.a();
                    }
                    return iA8;
                }
                if (i5 != 1) {
                    return i;
                }
                aby abyVar4 = (aby) abiVarA;
                abyVar4.a(zr.b(bArr, i));
                int i14 = i + 8;
                while (i14 < i2) {
                    int iA9 = zr.a(bArr, i14, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return i14;
                    }
                    abyVar4.a(zr.b(bArr, iA9));
                    i14 = iA9 + 8;
                }
                return i14;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    abe abeVar = (abe) abiVarA;
                    int iA10 = zr.a(bArr, i, zsVar);
                    int i15 = zsVar.f5744a + iA10;
                    while (iA10 < i15) {
                        abeVar.c(zr.a(bArr, iA10));
                        iA10 += 4;
                    }
                    if (iA10 != i15) {
                        throw abj.a();
                    }
                    return iA10;
                }
                if (i5 != 5) {
                    return i;
                }
                abe abeVar2 = (abe) abiVarA;
                abeVar2.c(zr.a(bArr, i));
                int i16 = i + 4;
                while (i16 < i2) {
                    int iA11 = zr.a(bArr, i16, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return i16;
                    }
                    abeVar2.c(zr.a(bArr, iA11));
                    i16 = iA11 + 4;
                }
                return i16;
            case 25:
            case 42:
                if (i5 == 2) {
                    zt ztVar = (zt) abiVarA;
                    int iA12 = zr.a(bArr, i, zsVar);
                    int i17 = iA12 + zsVar.f5744a;
                    while (iA12 < i17) {
                        iA12 = zr.b(bArr, iA12, zsVar);
                        ztVar.a(zsVar.f5745b != 0);
                    }
                    if (iA12 != i17) {
                        throw abj.a();
                    }
                    return iA12;
                }
                if (i5 != 0) {
                    return i;
                }
                zt ztVar2 = (zt) abiVarA;
                int iB2 = zr.b(bArr, i, zsVar);
                ztVar2.a(zsVar.f5745b != 0);
                while (iB2 < i2) {
                    int iA13 = zr.a(bArr, iB2, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return iB2;
                    }
                    iB2 = zr.b(bArr, iA13, zsVar);
                    ztVar2.a(zsVar.f5745b != 0);
                }
                return iB2;
            case 26:
                if (i5 != 2) {
                    return i;
                }
                if ((536870912 & j) == 0) {
                    int iA14 = zr.a(bArr, i, zsVar);
                    int i18 = zsVar.f5744a;
                    if (i18 == 0) {
                        abiVarA.add("");
                    } else {
                        abiVarA.add(new String(bArr, iA14, i18, abf.f3754a));
                        iA14 += i18;
                    }
                    while (iA14 < i2) {
                        int iA15 = zr.a(bArr, iA14, zsVar);
                        if (i3 != zsVar.f5744a) {
                            return iA14;
                        }
                        iA14 = zr.a(bArr, iA15, zsVar);
                        int i19 = zsVar.f5744a;
                        if (i19 == 0) {
                            abiVarA.add("");
                        } else {
                            abiVarA.add(new String(bArr, iA14, i19, abf.f3754a));
                            iA14 += i19;
                        }
                    }
                    return iA14;
                }
                int iA16 = zr.a(bArr, i, zsVar);
                int i20 = zsVar.f5744a;
                if (i20 == 0) {
                    abiVarA.add("");
                } else {
                    if (!aee.a(bArr, iA16, iA16 + i20)) {
                        throw abj.h();
                    }
                    abiVarA.add(new String(bArr, iA16, i20, abf.f3754a));
                    iA16 += i20;
                }
                while (iA16 < i2) {
                    int iA17 = zr.a(bArr, iA16, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return iA16;
                    }
                    iA16 = zr.a(bArr, iA17, zsVar);
                    int i21 = zsVar.f5744a;
                    if (i21 == 0) {
                        abiVarA.add("");
                    } else {
                        if (!aee.a(bArr, iA16, iA16 + i21)) {
                            throw abj.h();
                        }
                        abiVarA.add(new String(bArr, iA16, i21, abf.f3754a));
                        iA16 += i21;
                    }
                }
                return iA16;
            case 27:
                return i5 == 2 ? a((add<?>) a(i6), i3, bArr, i, i2, (abi<?>) abiVarA, zsVar) : i;
            case 28:
                if (i5 != 2) {
                    return i;
                }
                int iA18 = zr.a(bArr, i, zsVar);
                int i22 = zsVar.f5744a;
                if (i22 == 0) {
                    abiVarA.add(zv.f5750a);
                } else {
                    abiVarA.add(zv.a(bArr, iA18, i22));
                    iA18 += i22;
                }
                while (iA18 < i2) {
                    int iA19 = zr.a(bArr, iA18, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return iA18;
                    }
                    iA18 = zr.a(bArr, iA19, zsVar);
                    int i23 = zsVar.f5744a;
                    if (i23 == 0) {
                        abiVarA.add(zv.f5750a);
                    } else {
                        abiVarA.add(zv.a(bArr, iA18, i23));
                        iA18 += i23;
                    }
                }
                return iA18;
            case 30:
            case 44:
                if (i5 == 2) {
                    iA = zr.a(bArr, i, (abi<?>) abiVarA, zsVar);
                } else {
                    if (i5 != 0) {
                        return i;
                    }
                    iA = zr.a(i3, bArr, i, i2, (abi<?>) abiVarA, zsVar);
                }
                adx adxVar = ((abd) t).zzdtt;
                if (adxVar == adx.a()) {
                    adxVar = null;
                }
                adx adxVar2 = (adx) adf.a(i4, abiVarA, c(i6), adxVar, this.q);
                if (adxVar2 == null) {
                    return iA;
                }
                ((abd) t).zzdtt = adxVar2;
                return iA;
            case 33:
            case 47:
                if (i5 == 2) {
                    abe abeVar3 = (abe) abiVarA;
                    int iA20 = zr.a(bArr, i, zsVar);
                    int i24 = zsVar.f5744a + iA20;
                    while (iA20 < i24) {
                        iA20 = zr.a(bArr, iA20, zsVar);
                        abeVar3.c(aae.f(zsVar.f5744a));
                    }
                    if (iA20 != i24) {
                        throw abj.a();
                    }
                    return iA20;
                }
                if (i5 != 0) {
                    return i;
                }
                abe abeVar4 = (abe) abiVarA;
                int iA21 = zr.a(bArr, i, zsVar);
                abeVar4.c(aae.f(zsVar.f5744a));
                while (iA21 < i2) {
                    int iA22 = zr.a(bArr, iA21, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return iA21;
                    }
                    iA21 = zr.a(bArr, iA22, zsVar);
                    abeVar4.c(aae.f(zsVar.f5744a));
                }
                return iA21;
            case 34:
            case 48:
                if (i5 == 2) {
                    aby abyVar5 = (aby) abiVarA;
                    int iA23 = zr.a(bArr, i, zsVar);
                    int i25 = zsVar.f5744a + iA23;
                    while (iA23 < i25) {
                        iA23 = zr.b(bArr, iA23, zsVar);
                        abyVar5.a(aae.a(zsVar.f5745b));
                    }
                    if (iA23 != i25) {
                        throw abj.a();
                    }
                    return iA23;
                }
                if (i5 != 0) {
                    return i;
                }
                aby abyVar6 = (aby) abiVarA;
                int iB3 = zr.b(bArr, i, zsVar);
                abyVar6.a(aae.a(zsVar.f5745b));
                while (iB3 < i2) {
                    int iA24 = zr.a(bArr, iB3, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return iB3;
                    }
                    iB3 = zr.b(bArr, iA24, zsVar);
                    abyVar6.a(aae.a(zsVar.f5745b));
                }
                return iB3;
            case 49:
                if (i5 != 3) {
                    return i;
                }
                add addVarA = a(i6);
                int i26 = (i3 & (-8)) | 4;
                int iA25 = a(addVarA, bArr, i, i2, i26, zsVar);
                abiVarA.add(zsVar.f5746c);
                while (iA25 < i2) {
                    int iA26 = zr.a(bArr, iA25, zsVar);
                    if (i3 != zsVar.f5744a) {
                        return iA25;
                    }
                    iA25 = a(addVarA, bArr, iA26, i2, i26, zsVar);
                    abiVarA.add(zsVar.f5746c);
                }
                return iA25;
            default:
                return i;
        }
    }

    private final <K, V> int a(T t, byte[] bArr, int i, int i2, int i3, int i4, long j, zs zsVar) throws IOException {
        Object objE;
        Unsafe unsafe = f3793a;
        Object objB = b(i3);
        Object object = unsafe.getObject(t, j);
        if (this.s.c(object)) {
            objE = this.s.e(objB);
            this.s.a(objE, object);
            unsafe.putObject(t, j, objE);
        } else {
            objE = object;
        }
        acd<?, ?> acdVarF = this.s.f(objB);
        Map<?, ?> mapA = this.s.a(objE);
        int iA = zr.a(bArr, i, zsVar);
        int i5 = zsVar.f5744a;
        if (i5 < 0 || i5 > i2 - iA) {
            throw abj.a();
        }
        int i6 = iA + i5;
        K k = acdVarF.f3786b;
        Object obj = acdVarF.f3788d;
        Object obj2 = k;
        int iA2 = iA;
        while (iA2 < i6) {
            int iA3 = iA2 + 1;
            int i7 = bArr[iA2];
            if (i7 < 0) {
                iA3 = zr.a(i7, bArr, iA3, zsVar);
                i7 = zsVar.f5744a;
            }
            int i8 = i7 & 7;
            switch (i7 >>> 3) {
                case 1:
                    if (i8 != acdVarF.f3785a.b()) {
                        iA2 = zr.a(i7, bArr, iA3, i2, zsVar);
                    } else {
                        int iA4 = a(bArr, iA3, i2, acdVarF.f3785a, (Class<?>) null, zsVar);
                        obj2 = zsVar.f5746c;
                        iA2 = iA4;
                    }
                    break;
                case 2:
                    if (i8 != acdVarF.f3787c.b()) {
                        iA2 = zr.a(i7, bArr, iA3, i2, zsVar);
                    } else {
                        int iA5 = a(bArr, iA3, i2, acdVarF.f3787c, acdVarF.f3788d.getClass(), zsVar);
                        obj = zsVar.f5746c;
                        iA2 = iA5;
                    }
                    break;
                default:
                    iA2 = zr.a(i7, bArr, iA3, i2, zsVar);
                    break;
            }
        }
        if (iA2 != i6) {
            throw abj.g();
        }
        mapA.put(obj2, obj);
        return i6;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x007e. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008d A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int a(T r42, byte[] r43, int r44, int r45, int r46, com.google.android.gms.internal.ads.zs r47) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 960
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aco.a(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zs):int");
    }

    private static int a(byte[] bArr, int i, int i2, aek aekVar, Class<?> cls, zs zsVar) throws IOException {
        switch (acp.f3797a[aekVar.ordinal()]) {
            case 1:
                int iB = zr.b(bArr, i, zsVar);
                zsVar.f5746c = Boolean.valueOf(zsVar.f5745b != 0);
                return iB;
            case 2:
                return zr.e(bArr, i, zsVar);
            case 3:
                zsVar.f5746c = Double.valueOf(zr.c(bArr, i));
                return i + 8;
            case 4:
            case 5:
                zsVar.f5746c = Integer.valueOf(zr.a(bArr, i));
                return i + 4;
            case 6:
            case 7:
                zsVar.f5746c = Long.valueOf(zr.b(bArr, i));
                return i + 8;
            case 8:
                zsVar.f5746c = Float.valueOf(zr.d(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iA = zr.a(bArr, i, zsVar);
                zsVar.f5746c = Integer.valueOf(zsVar.f5744a);
                return iA;
            case 12:
            case 13:
                int iB2 = zr.b(bArr, i, zsVar);
                zsVar.f5746c = Long.valueOf(zsVar.f5745b);
                return iB2;
            case 14:
                return a((add) acx.a().a((Class) cls), bArr, i, i2, zsVar);
            case 15:
                int iA2 = zr.a(bArr, i, zsVar);
                zsVar.f5746c = Integer.valueOf(aae.f(zsVar.f5744a));
                return iA2;
            case 16:
                int iB3 = zr.b(bArr, i, zsVar);
                zsVar.f5746c = Long.valueOf(aae.a(zsVar.f5745b));
                return iB3;
            case 17:
                return zr.d(bArr, i, zsVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    static <T> aco<T> a(Class<T> cls, aci aciVar, act actVar, abu abuVar, adw<?, ?> adwVar, aas<?> aasVar, acf acfVar) {
        int iE;
        int iF;
        int iK;
        int iA;
        int iA2;
        int iJ;
        if (!(aciVar instanceof acz)) {
            ((adq) aciVar).a();
            throw new NoSuchMethodError();
        }
        acz aczVar = (acz) aciVar;
        boolean z = aczVar.a() == abd.e.i;
        if (aczVar.g() == 0) {
            iE = 0;
            iF = 0;
            iK = 0;
        } else {
            iE = aczVar.e();
            iF = aczVar.f();
            iK = aczVar.k();
        }
        int[] iArr = new int[iK << 2];
        Object[] objArr = new Object[iK << 1];
        int[] iArr2 = aczVar.h() > 0 ? new int[aczVar.h()] : null;
        int[] iArr3 = aczVar.i() > 0 ? new int[aczVar.i()] : null;
        int i = 0;
        int i2 = 0;
        ada adaVarD = aczVar.d();
        if (adaVarD.a()) {
            int iB = adaVarD.b();
            int i3 = 0;
            while (true) {
                if (iB >= aczVar.l() || i3 >= ((iB - iE) << 2)) {
                    if (adaVarD.d()) {
                        iA = (int) aec.a(adaVarD.e());
                        iA2 = (int) aec.a(adaVarD.f());
                        iJ = 0;
                    } else {
                        iA = (int) aec.a(adaVarD.g());
                        if (adaVarD.h()) {
                            iA2 = (int) aec.a(adaVarD.i());
                            iJ = adaVarD.j();
                        } else {
                            iA2 = 0;
                            iJ = 0;
                        }
                    }
                    iArr[i3] = adaVarD.b();
                    iArr[i3 + 1] = iA | (adaVarD.l() ? 536870912 : 0) | (adaVarD.k() ? 268435456 : 0) | (adaVarD.c() << 20);
                    iArr[i3 + 2] = iA2 | (iJ << 20);
                    if (adaVarD.o() != null) {
                        objArr[(i3 / 4) << 1] = adaVarD.o();
                        if (adaVarD.m() != null) {
                            objArr[((i3 / 4) << 1) + 1] = adaVarD.m();
                        } else if (adaVarD.n() != null) {
                            objArr[((i3 / 4) << 1) + 1] = adaVarD.n();
                        }
                    } else if (adaVarD.m() != null) {
                        objArr[((i3 / 4) << 1) + 1] = adaVarD.m();
                    } else if (adaVarD.n() != null) {
                        objArr[((i3 / 4) << 1) + 1] = adaVarD.n();
                    }
                    int iC = adaVarD.c();
                    if (iC == aay.MAP.ordinal()) {
                        iArr2[i] = i3;
                        i++;
                    } else if (iC >= 18 && iC <= 49) {
                        iArr3[i2] = iArr[i3 + 1] & 1048575;
                        i2++;
                    }
                    if (!adaVarD.a()) {
                        break;
                    }
                    iB = adaVarD.b();
                } else {
                    for (int i4 = 0; i4 < 4; i4++) {
                        iArr[i3 + i4] = -1;
                    }
                }
                i3 += 4;
            }
        }
        return new aco<>(iArr, objArr, iE, iF, aczVar.l(), aczVar.c(), z, false, aczVar.j(), iArr2, iArr3, actVar, abuVar, adwVar, aasVar, acfVar);
    }

    private final add a(int i) {
        int i2 = (i / 4) << 1;
        add addVar = (add) this.f3795c[i2];
        if (addVar != null) {
            return addVar;
        }
        add<T> addVarA = acx.a().a((Class) this.f3795c[i2 + 1]);
        this.f3795c[i2] = addVarA;
        return addVarA;
    }

    private final <K, V, UT, UB> UB a(int i, int i2, Map<K, V> map, abh<?> abhVar, UB ub, adw<UT, UB> adwVar) {
        acd<?, ?> acdVarF = this.s.f(b(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (abhVar.a(((Integer) next.getValue()).intValue()) == null) {
                if (ub == null) {
                    ub = adwVar.a();
                }
                aaa aaaVarB = zv.b(acc.a(acdVarF, next.getKey(), next.getValue()));
                try {
                    acc.a(aaaVarB.b(), acdVarF, next.getKey(), next.getValue());
                    adwVar.a(ub, i2, aaaVarB.a());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private final <UT, UB> UB a(Object obj, int i, UB ub, adw<UT, UB> adwVar) {
        abh<?> abhVarC;
        int i2 = this.f3794b[i];
        Object objF = aec.f(obj, d(i) & 1048575);
        return (objF == null || (abhVarC = c(i)) == null) ? ub : (UB) a(i, i2, this.s.a(objF), abhVarC, ub, adwVar);
    }

    private static <E> List<E> a(Object obj, long j) {
        return (List) aec.f(obj, j);
    }

    private static void a(int i, Object obj, aeq aeqVar) throws IOException {
        if (obj instanceof String) {
            aeqVar.a(i, (String) obj);
        } else {
            aeqVar.a(i, (zv) obj);
        }
    }

    private static <UT, UB> void a(adw<UT, UB> adwVar, T t, aeq aeqVar) throws IOException {
        adwVar.a(adwVar.b(t), aeqVar);
    }

    private final <K, V> void a(aeq aeqVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            aeqVar.a(i, this.s.f(b(i2)), this.s.b(obj));
        }
    }

    private final void a(Object obj, int i, adc adcVar) throws IOException {
        if (f(i)) {
            aec.a(obj, i & 1048575, adcVar.m());
        } else if (this.i) {
            aec.a(obj, i & 1048575, adcVar.l());
        } else {
            aec.a(obj, i & 1048575, adcVar.n());
        }
    }

    private final void a(T t, T t2, int i) {
        long jD = d(i) & 1048575;
        if (a((Object) t2, i)) {
            Object objF = aec.f(t, jD);
            Object objF2 = aec.f(t2, jD);
            if (objF != null && objF2 != null) {
                aec.a(t, jD, abf.a(objF, objF2));
                b((Object) t, i);
            } else if (objF2 != null) {
                aec.a(t, jD, objF2);
                b((Object) t, i);
            }
        }
    }

    private final boolean a(T t, int i) {
        if (!this.j) {
            int iE = e(i);
            return (aec.a(t, (long) (iE & 1048575)) & (1 << (iE >>> 20))) != 0;
        }
        int iD = d(i);
        long j = iD & 1048575;
        switch ((iD & 267386880) >>> 20) {
            case 0:
                return aec.e(t, j) != 0.0d;
            case 1:
                return aec.d(t, j) != 0.0f;
            case 2:
                return aec.b(t, j) != 0;
            case 3:
                return aec.b(t, j) != 0;
            case 4:
                return aec.a(t, j) != 0;
            case 5:
                return aec.b(t, j) != 0;
            case 6:
                return aec.a(t, j) != 0;
            case 7:
                return aec.c(t, j);
            case 8:
                Object objF = aec.f(t, j);
                if (objF instanceof String) {
                    return !((String) objF).isEmpty();
                }
                if (objF instanceof zv) {
                    return !zv.f5750a.equals(objF);
                }
                throw new IllegalArgumentException();
            case 9:
                return aec.f(t, j) != null;
            case 10:
                return !zv.f5750a.equals(aec.f(t, j));
            case 11:
                return aec.a(t, j) != 0;
            case 12:
                return aec.a(t, j) != 0;
            case 13:
                return aec.a(t, j) != 0;
            case 14:
                return aec.b(t, j) != 0;
            case 15:
                return aec.a(t, j) != 0;
            case 16:
                return aec.b(t, j) != 0;
            case 17:
                return aec.f(t, j) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean a(T t, int i, int i2) {
        return aec.a(t, (long) (e(i2) & 1048575)) == i;
    }

    private final boolean a(T t, int i, int i2, int i3) {
        return this.j ? a((Object) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean a(Object obj, int i, add addVar) {
        return addVar.d(aec.f(obj, 1048575 & i));
    }

    private static <T> double b(T t, long j) {
        return ((Double) aec.f(t, j)).doubleValue();
    }

    private final Object b(int i) {
        return this.f3795c[(i / 4) << 1];
    }

    private final void b(T t, int i) {
        if (this.j) {
            return;
        }
        int iE = e(i);
        long j = iE & 1048575;
        aec.a((Object) t, j, aec.a(t, j) | (1 << (iE >>> 20)));
    }

    private final void b(T t, int i, int i2) {
        aec.a((Object) t, e(i2) & 1048575, i);
    }

    private final void b(T t, aeq aeqVar) throws IOException {
        Map.Entry<?, ?> entry;
        int i;
        int i2;
        Iterator itE = null;
        Map.Entry<?, ?> entry2 = null;
        if (this.h) {
            aav<T> aavVarA = this.r.a(t);
            if (!aavVarA.b()) {
                itE = aavVarA.e();
                entry2 = (Map.Entry) itE.next();
            }
        }
        int length = this.f3794b.length;
        Unsafe unsafe = f3793a;
        int i3 = 0;
        int i4 = -1;
        Map.Entry<?, ?> entry3 = entry2;
        int i5 = 0;
        while (i3 < length) {
            int iD = d(i3);
            int i6 = this.f3794b[i3];
            int i7 = (267386880 & iD) >>> 20;
            int i8 = 0;
            if (this.j || i7 > 17) {
                entry = entry3;
                i = i4;
                i2 = i5;
            } else {
                int i9 = this.f3794b[i3 + 2];
                int i10 = 1048575 & i9;
                if (i10 != i4) {
                    i5 = unsafe.getInt(t, i10);
                } else {
                    i10 = i4;
                }
                int i11 = 1 << (i9 >>> 20);
                entry = entry3;
                i = i10;
                i8 = i11;
                i2 = i5;
            }
            while (entry != null && this.r.a(entry) <= i6) {
                this.r.a(aeqVar, entry);
                entry = itE.hasNext() ? (Map.Entry) itE.next() : null;
            }
            long j = 1048575 & iD;
            switch (i7) {
                case 0:
                    if ((i2 & i8) != 0) {
                        aeqVar.a(i6, aec.e(t, j));
                    }
                    break;
                case 1:
                    if ((i2 & i8) != 0) {
                        aeqVar.a(i6, aec.d(t, j));
                    }
                    break;
                case 2:
                    if ((i2 & i8) != 0) {
                        aeqVar.a(i6, unsafe.getLong(t, j));
                    }
                    break;
                case 3:
                    if ((i2 & i8) != 0) {
                        aeqVar.c(i6, unsafe.getLong(t, j));
                    }
                    break;
                case 4:
                    if ((i2 & i8) != 0) {
                        aeqVar.c(i6, unsafe.getInt(t, j));
                    }
                    break;
                case 5:
                    if ((i2 & i8) != 0) {
                        aeqVar.d(i6, unsafe.getLong(t, j));
                    }
                    break;
                case 6:
                    if ((i2 & i8) != 0) {
                        aeqVar.d(i6, unsafe.getInt(t, j));
                    }
                    break;
                case 7:
                    if ((i2 & i8) != 0) {
                        aeqVar.a(i6, aec.c(t, j));
                    }
                    break;
                case 8:
                    if ((i2 & i8) != 0) {
                        a(i6, unsafe.getObject(t, j), aeqVar);
                    }
                    break;
                case 9:
                    if ((i2 & i8) != 0) {
                        aeqVar.a(i6, unsafe.getObject(t, j), a(i3));
                    }
                    break;
                case 10:
                    if ((i2 & i8) != 0) {
                        aeqVar.a(i6, (zv) unsafe.getObject(t, j));
                    }
                    break;
                case 11:
                    if ((i2 & i8) != 0) {
                        aeqVar.e(i6, unsafe.getInt(t, j));
                    }
                    break;
                case 12:
                    if ((i2 & i8) != 0) {
                        aeqVar.b(i6, unsafe.getInt(t, j));
                    }
                    break;
                case 13:
                    if ((i2 & i8) != 0) {
                        aeqVar.a(i6, unsafe.getInt(t, j));
                    }
                    break;
                case 14:
                    if ((i2 & i8) != 0) {
                        aeqVar.b(i6, unsafe.getLong(t, j));
                    }
                    break;
                case 15:
                    if ((i2 & i8) != 0) {
                        aeqVar.f(i6, unsafe.getInt(t, j));
                    }
                    break;
                case 16:
                    if ((i2 & i8) != 0) {
                        aeqVar.e(i6, unsafe.getLong(t, j));
                    }
                    break;
                case 17:
                    if ((i2 & i8) != 0) {
                        aeqVar.b(i6, unsafe.getObject(t, j), a(i3));
                    }
                    break;
                case 18:
                    adf.a(this.f3794b[i3], (List<Double>) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 19:
                    adf.b(this.f3794b[i3], (List<Float>) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 20:
                    adf.c(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 21:
                    adf.d(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 22:
                    adf.h(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 23:
                    adf.f(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 24:
                    adf.k(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 25:
                    adf.n(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 26:
                    adf.a(this.f3794b[i3], (List<String>) unsafe.getObject(t, j), aeqVar);
                    break;
                case 27:
                    adf.a(this.f3794b[i3], (List<?>) unsafe.getObject(t, j), aeqVar, a(i3));
                    break;
                case 28:
                    adf.b(this.f3794b[i3], (List<zv>) unsafe.getObject(t, j), aeqVar);
                    break;
                case 29:
                    adf.i(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 30:
                    adf.m(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 31:
                    adf.l(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 32:
                    adf.g(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 33:
                    adf.j(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 34:
                    adf.e(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, false);
                    break;
                case 35:
                    adf.a(this.f3794b[i3], (List<Double>) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 36:
                    adf.b(this.f3794b[i3], (List<Float>) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 37:
                    adf.c(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 38:
                    adf.d(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 39:
                    adf.h(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 40:
                    adf.f(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 41:
                    adf.k(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 42:
                    adf.n(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 43:
                    adf.i(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 44:
                    adf.m(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 45:
                    adf.l(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 46:
                    adf.g(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 47:
                    adf.j(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 48:
                    adf.e(this.f3794b[i3], (List) unsafe.getObject(t, j), aeqVar, true);
                    break;
                case 49:
                    adf.b(this.f3794b[i3], (List<?>) unsafe.getObject(t, j), aeqVar, a(i3));
                    break;
                case 50:
                    a(aeqVar, i6, unsafe.getObject(t, j), i3);
                    break;
                case 51:
                    if (a(t, i6, i3)) {
                        aeqVar.a(i6, b(t, j));
                    }
                    break;
                case 52:
                    if (a(t, i6, i3)) {
                        aeqVar.a(i6, c(t, j));
                    }
                    break;
                case 53:
                    if (a(t, i6, i3)) {
                        aeqVar.a(i6, e(t, j));
                    }
                    break;
                case 54:
                    if (a(t, i6, i3)) {
                        aeqVar.c(i6, e(t, j));
                    }
                    break;
                case 55:
                    if (a(t, i6, i3)) {
                        aeqVar.c(i6, d(t, j));
                    }
                    break;
                case 56:
                    if (a(t, i6, i3)) {
                        aeqVar.d(i6, e(t, j));
                    }
                    break;
                case 57:
                    if (a(t, i6, i3)) {
                        aeqVar.d(i6, d(t, j));
                    }
                    break;
                case 58:
                    if (a(t, i6, i3)) {
                        aeqVar.a(i6, f(t, j));
                    }
                    break;
                case 59:
                    if (a(t, i6, i3)) {
                        a(i6, unsafe.getObject(t, j), aeqVar);
                    }
                    break;
                case 60:
                    if (a(t, i6, i3)) {
                        aeqVar.a(i6, unsafe.getObject(t, j), a(i3));
                    }
                    break;
                case 61:
                    if (a(t, i6, i3)) {
                        aeqVar.a(i6, (zv) unsafe.getObject(t, j));
                    }
                    break;
                case 62:
                    if (a(t, i6, i3)) {
                        aeqVar.e(i6, d(t, j));
                    }
                    break;
                case 63:
                    if (a(t, i6, i3)) {
                        aeqVar.b(i6, d(t, j));
                    }
                    break;
                case 64:
                    if (a(t, i6, i3)) {
                        aeqVar.a(i6, d(t, j));
                    }
                    break;
                case 65:
                    if (a(t, i6, i3)) {
                        aeqVar.b(i6, e(t, j));
                    }
                    break;
                case 66:
                    if (a(t, i6, i3)) {
                        aeqVar.f(i6, d(t, j));
                    }
                    break;
                case 67:
                    if (a(t, i6, i3)) {
                        aeqVar.e(i6, e(t, j));
                    }
                    break;
                case 68:
                    if (a(t, i6, i3)) {
                        aeqVar.b(i6, unsafe.getObject(t, j), a(i3));
                    }
                    break;
            }
            i3 += 4;
            i5 = i2;
            i4 = i;
            entry3 = entry;
        }
        Map.Entry<?, ?> entry4 = entry3;
        while (entry4 != null) {
            this.r.a(aeqVar, entry4);
            entry4 = itE.hasNext() ? (Map.Entry) itE.next() : null;
        }
        a(this.q, t, aeqVar);
    }

    private final void b(T t, T t2, int i) {
        int iD = d(i);
        int i2 = this.f3794b[i];
        long j = iD & 1048575;
        if (a(t2, i2, i)) {
            Object objF = aec.f(t, j);
            Object objF2 = aec.f(t2, j);
            if (objF != null && objF2 != null) {
                aec.a(t, j, abf.a(objF, objF2));
                b(t, i2, i);
            } else if (objF2 != null) {
                aec.a(t, j, objF2);
                b(t, i2, i);
            }
        }
    }

    private static <T> float c(T t, long j) {
        return ((Float) aec.f(t, j)).floatValue();
    }

    private final abh<?> c(int i) {
        return (abh) this.f3795c[((i / 4) << 1) + 1];
    }

    private final boolean c(T t, T t2, int i) {
        return a((Object) t, i) == a((Object) t2, i);
    }

    private final int d(int i) {
        return this.f3794b[i + 1];
    }

    private static <T> int d(T t, long j) {
        return ((Integer) aec.f(t, j)).intValue();
    }

    private final int e(int i) {
        return this.f3794b[i + 2];
    }

    private static <T> long e(T t, long j) {
        return ((Long) aec.f(t, j)).longValue();
    }

    private static adx e(Object obj) {
        adx adxVar = ((abd) obj).zzdtt;
        if (adxVar != adx.a()) {
            return adxVar;
        }
        adx adxVarB = adx.b();
        ((abd) obj).zzdtt = adxVarB;
        return adxVarB;
    }

    private static boolean f(int i) {
        return (536870912 & i) != 0;
    }

    private static <T> boolean f(T t, long j) {
        return ((Boolean) aec.f(t, j)).booleanValue();
    }

    private final int g(int i) {
        if (i >= this.f3796d) {
            if (i < this.f) {
                int i2 = (i - this.f3796d) << 2;
                if (this.f3794b[i2] == i) {
                    return i2;
                }
                return -1;
            }
            if (i <= this.e) {
                int i3 = this.f - this.f3796d;
                int length = (this.f3794b.length / 4) - 1;
                while (i3 <= length) {
                    int i4 = (length + i3) >>> 1;
                    int i5 = i4 << 2;
                    int i6 = this.f3794b[i5];
                    if (i == i6) {
                        return i5;
                    }
                    if (i < i6) {
                        length = i4 - 1;
                    } else {
                        i3 = i4 + 1;
                    }
                }
                return -1;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.add
    public final int a(T t) {
        int iHashCode;
        int length = this.f3794b.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int iD = d(i);
            int i3 = this.f3794b[i];
            long j = 1048575 & iD;
            switch ((iD & 267386880) >>> 20) {
                case 0:
                    iHashCode = (i2 * 53) + abf.a(Double.doubleToLongBits(aec.e(t, j)));
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 1:
                    iHashCode = (i2 * 53) + Float.floatToIntBits(aec.d(t, j));
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 2:
                    iHashCode = (i2 * 53) + abf.a(aec.b(t, j));
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 3:
                    iHashCode = (i2 * 53) + abf.a(aec.b(t, j));
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 4:
                    iHashCode = (i2 * 53) + aec.a(t, j);
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 5:
                    iHashCode = (i2 * 53) + abf.a(aec.b(t, j));
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 6:
                    iHashCode = (i2 * 53) + aec.a(t, j);
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 7:
                    iHashCode = (i2 * 53) + abf.a(aec.c(t, j));
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 8:
                    iHashCode = ((String) aec.f(t, j)).hashCode() + (i2 * 53);
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 9:
                    Object objF = aec.f(t, j);
                    iHashCode = (objF != null ? objF.hashCode() : 37) + (i2 * 53);
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 10:
                    iHashCode = (i2 * 53) + aec.f(t, j).hashCode();
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 11:
                    iHashCode = (i2 * 53) + aec.a(t, j);
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 12:
                    iHashCode = (i2 * 53) + aec.a(t, j);
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 13:
                    iHashCode = (i2 * 53) + aec.a(t, j);
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 14:
                    iHashCode = (i2 * 53) + abf.a(aec.b(t, j));
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 15:
                    iHashCode = (i2 * 53) + aec.a(t, j);
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 16:
                    iHashCode = (i2 * 53) + abf.a(aec.b(t, j));
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 17:
                    Object objF2 = aec.f(t, j);
                    iHashCode = (objF2 != null ? objF2.hashCode() : 37) + (i2 * 53);
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    iHashCode = (i2 * 53) + aec.f(t, j).hashCode();
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 50:
                    iHashCode = (i2 * 53) + aec.f(t, j).hashCode();
                    continue;
                    i += 4;
                    i2 = iHashCode;
                    break;
                case 51:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + abf.a(Double.doubleToLongBits(b(t, j)));
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 52:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + Float.floatToIntBits(c(t, j));
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 53:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + abf.a(e(t, j));
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 54:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + abf.a(e(t, j));
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 55:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + d(t, j);
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 56:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + abf.a(e(t, j));
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 57:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + d(t, j);
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 58:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + abf.a(f(t, j));
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 59:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = ((String) aec.f(t, j)).hashCode() + (i2 * 53);
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 60:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = aec.f(t, j).hashCode() + (i2 * 53);
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 61:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + aec.f(t, j).hashCode();
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 62:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + d(t, j);
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 63:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + d(t, j);
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 64:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + d(t, j);
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 65:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + abf.a(e(t, j));
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 66:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + d(t, j);
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 67:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = (i2 * 53) + abf.a(e(t, j));
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                case 68:
                    if (!a(t, i3, i)) {
                        iHashCode = i2;
                    } else {
                        iHashCode = aec.f(t, j).hashCode() + (i2 * 53);
                        i += 4;
                        i2 = iHashCode;
                    }
                    break;
                default:
                    iHashCode = i2;
                    break;
            }
            i += 4;
            i2 = iHashCode;
        }
        int iHashCode2 = (i2 * 53) + this.q.b(t).hashCode();
        return this.h ? (iHashCode2 * 53) + this.r.a(t).hashCode() : iHashCode2;
    }

    @Override // com.google.android.gms.internal.ads.add
    public final T a() {
        return (T) this.o.a(this.g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:176:0x068c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ee  */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.gms.internal.ads.add
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(T r13, com.google.android.gms.internal.ads.adc r14, com.google.android.gms.internal.ads.aaq r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1826
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aco.a(java.lang.Object, com.google.android.gms.internal.ads.adc, com.google.android.gms.internal.ads.aaq):void");
    }

    @Override // com.google.android.gms.internal.ads.add
    public final void a(T t, aeq aeqVar) throws IOException {
        if (aeqVar.a() == abd.e.k) {
            a(this.q, t, aeqVar);
            Iterator itF = null;
            Map.Entry<?, ?> entry = null;
            if (this.h) {
                aav<T> aavVarA = this.r.a(t);
                if (!aavVarA.b()) {
                    itF = aavVarA.f();
                    entry = (Map.Entry) itF.next();
                }
            }
            int length = this.f3794b.length - 4;
            while (length >= 0) {
                int iD = d(length);
                int i = this.f3794b[length];
                Map.Entry<?, ?> entry2 = entry;
                while (entry2 != null && this.r.a(entry2) > i) {
                    this.r.a(aeqVar, entry2);
                    entry2 = itF.hasNext() ? (Map.Entry) itF.next() : null;
                }
                switch ((267386880 & iD) >>> 20) {
                    case 0:
                        if (a((Object) t, length)) {
                            aeqVar.a(i, aec.e(t, 1048575 & iD));
                        }
                        break;
                    case 1:
                        if (a((Object) t, length)) {
                            aeqVar.a(i, aec.d(t, 1048575 & iD));
                        }
                        break;
                    case 2:
                        if (a((Object) t, length)) {
                            aeqVar.a(i, aec.b(t, 1048575 & iD));
                        }
                        break;
                    case 3:
                        if (a((Object) t, length)) {
                            aeqVar.c(i, aec.b(t, 1048575 & iD));
                        }
                        break;
                    case 4:
                        if (a((Object) t, length)) {
                            aeqVar.c(i, aec.a(t, 1048575 & iD));
                        }
                        break;
                    case 5:
                        if (a((Object) t, length)) {
                            aeqVar.d(i, aec.b(t, 1048575 & iD));
                        }
                        break;
                    case 6:
                        if (a((Object) t, length)) {
                            aeqVar.d(i, aec.a(t, 1048575 & iD));
                        }
                        break;
                    case 7:
                        if (a((Object) t, length)) {
                            aeqVar.a(i, aec.c(t, 1048575 & iD));
                        }
                        break;
                    case 8:
                        if (a((Object) t, length)) {
                            a(i, aec.f(t, 1048575 & iD), aeqVar);
                        }
                        break;
                    case 9:
                        if (a((Object) t, length)) {
                            aeqVar.a(i, aec.f(t, 1048575 & iD), a(length));
                        }
                        break;
                    case 10:
                        if (a((Object) t, length)) {
                            aeqVar.a(i, (zv) aec.f(t, 1048575 & iD));
                        }
                        break;
                    case 11:
                        if (a((Object) t, length)) {
                            aeqVar.e(i, aec.a(t, 1048575 & iD));
                        }
                        break;
                    case 12:
                        if (a((Object) t, length)) {
                            aeqVar.b(i, aec.a(t, 1048575 & iD));
                        }
                        break;
                    case 13:
                        if (a((Object) t, length)) {
                            aeqVar.a(i, aec.a(t, 1048575 & iD));
                        }
                        break;
                    case 14:
                        if (a((Object) t, length)) {
                            aeqVar.b(i, aec.b(t, 1048575 & iD));
                        }
                        break;
                    case 15:
                        if (a((Object) t, length)) {
                            aeqVar.f(i, aec.a(t, 1048575 & iD));
                        }
                        break;
                    case 16:
                        if (a((Object) t, length)) {
                            aeqVar.e(i, aec.b(t, 1048575 & iD));
                        }
                        break;
                    case 17:
                        if (a((Object) t, length)) {
                            aeqVar.b(i, aec.f(t, 1048575 & iD), a(length));
                        }
                        break;
                    case 18:
                        adf.a(this.f3794b[length], (List<Double>) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 19:
                        adf.b(this.f3794b[length], (List<Float>) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 20:
                        adf.c(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 21:
                        adf.d(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 22:
                        adf.h(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 23:
                        adf.f(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 24:
                        adf.k(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 25:
                        adf.n(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 26:
                        adf.a(this.f3794b[length], (List<String>) aec.f(t, 1048575 & iD), aeqVar);
                        break;
                    case 27:
                        adf.a(this.f3794b[length], (List<?>) aec.f(t, 1048575 & iD), aeqVar, a(length));
                        break;
                    case 28:
                        adf.b(this.f3794b[length], (List<zv>) aec.f(t, 1048575 & iD), aeqVar);
                        break;
                    case 29:
                        adf.i(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 30:
                        adf.m(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 31:
                        adf.l(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 32:
                        adf.g(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 33:
                        adf.j(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 34:
                        adf.e(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, false);
                        break;
                    case 35:
                        adf.a(this.f3794b[length], (List<Double>) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 36:
                        adf.b(this.f3794b[length], (List<Float>) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 37:
                        adf.c(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 38:
                        adf.d(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 39:
                        adf.h(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 40:
                        adf.f(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 41:
                        adf.k(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 42:
                        adf.n(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 43:
                        adf.i(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 44:
                        adf.m(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 45:
                        adf.l(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 46:
                        adf.g(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 47:
                        adf.j(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 48:
                        adf.e(this.f3794b[length], (List) aec.f(t, 1048575 & iD), aeqVar, true);
                        break;
                    case 49:
                        adf.b(this.f3794b[length], (List<?>) aec.f(t, 1048575 & iD), aeqVar, a(length));
                        break;
                    case 50:
                        a(aeqVar, i, aec.f(t, 1048575 & iD), length);
                        break;
                    case 51:
                        if (a(t, i, length)) {
                            aeqVar.a(i, b(t, 1048575 & iD));
                        }
                        break;
                    case 52:
                        if (a(t, i, length)) {
                            aeqVar.a(i, c(t, 1048575 & iD));
                        }
                        break;
                    case 53:
                        if (a(t, i, length)) {
                            aeqVar.a(i, e(t, 1048575 & iD));
                        }
                        break;
                    case 54:
                        if (a(t, i, length)) {
                            aeqVar.c(i, e(t, 1048575 & iD));
                        }
                        break;
                    case 55:
                        if (a(t, i, length)) {
                            aeqVar.c(i, d(t, 1048575 & iD));
                        }
                        break;
                    case 56:
                        if (a(t, i, length)) {
                            aeqVar.d(i, e(t, 1048575 & iD));
                        }
                        break;
                    case 57:
                        if (a(t, i, length)) {
                            aeqVar.d(i, d(t, 1048575 & iD));
                        }
                        break;
                    case 58:
                        if (a(t, i, length)) {
                            aeqVar.a(i, f(t, 1048575 & iD));
                        }
                        break;
                    case 59:
                        if (a(t, i, length)) {
                            a(i, aec.f(t, 1048575 & iD), aeqVar);
                        }
                        break;
                    case 60:
                        if (a(t, i, length)) {
                            aeqVar.a(i, aec.f(t, 1048575 & iD), a(length));
                        }
                        break;
                    case 61:
                        if (a(t, i, length)) {
                            aeqVar.a(i, (zv) aec.f(t, 1048575 & iD));
                        }
                        break;
                    case 62:
                        if (a(t, i, length)) {
                            aeqVar.e(i, d(t, 1048575 & iD));
                        }
                        break;
                    case 63:
                        if (a(t, i, length)) {
                            aeqVar.b(i, d(t, 1048575 & iD));
                        }
                        break;
                    case 64:
                        if (a(t, i, length)) {
                            aeqVar.a(i, d(t, 1048575 & iD));
                        }
                        break;
                    case 65:
                        if (a(t, i, length)) {
                            aeqVar.b(i, e(t, 1048575 & iD));
                        }
                        break;
                    case 66:
                        if (a(t, i, length)) {
                            aeqVar.f(i, d(t, 1048575 & iD));
                        }
                        break;
                    case 67:
                        if (a(t, i, length)) {
                            aeqVar.e(i, e(t, 1048575 & iD));
                        }
                        break;
                    case 68:
                        if (a(t, i, length)) {
                            aeqVar.b(i, aec.f(t, 1048575 & iD), a(length));
                        }
                        break;
                }
                length -= 4;
                entry = entry2;
            }
            while (entry != null) {
                this.r.a(aeqVar, entry);
                entry = itF.hasNext() ? (Map.Entry) itF.next() : null;
            }
            return;
        }
        if (!this.j) {
            b((Object) t, aeqVar);
            return;
        }
        Iterator itE = null;
        Map.Entry<?, ?> entry3 = null;
        if (this.h) {
            aav<T> aavVarA2 = this.r.a(t);
            if (!aavVarA2.b()) {
                itE = aavVarA2.e();
                entry3 = (Map.Entry) itE.next();
            }
        }
        int length2 = this.f3794b.length;
        int i2 = 0;
        while (i2 < length2) {
            int iD2 = d(i2);
            int i3 = this.f3794b[i2];
            Map.Entry<?, ?> entry4 = entry3;
            while (entry4 != null && this.r.a(entry4) <= i3) {
                this.r.a(aeqVar, entry4);
                entry4 = itE.hasNext() ? (Map.Entry) itE.next() : null;
            }
            switch ((267386880 & iD2) >>> 20) {
                case 0:
                    if (a((Object) t, i2)) {
                        aeqVar.a(i3, aec.e(t, 1048575 & iD2));
                    }
                    break;
                case 1:
                    if (a((Object) t, i2)) {
                        aeqVar.a(i3, aec.d(t, 1048575 & iD2));
                    }
                    break;
                case 2:
                    if (a((Object) t, i2)) {
                        aeqVar.a(i3, aec.b(t, 1048575 & iD2));
                    }
                    break;
                case 3:
                    if (a((Object) t, i2)) {
                        aeqVar.c(i3, aec.b(t, 1048575 & iD2));
                    }
                    break;
                case 4:
                    if (a((Object) t, i2)) {
                        aeqVar.c(i3, aec.a(t, 1048575 & iD2));
                    }
                    break;
                case 5:
                    if (a((Object) t, i2)) {
                        aeqVar.d(i3, aec.b(t, 1048575 & iD2));
                    }
                    break;
                case 6:
                    if (a((Object) t, i2)) {
                        aeqVar.d(i3, aec.a(t, 1048575 & iD2));
                    }
                    break;
                case 7:
                    if (a((Object) t, i2)) {
                        aeqVar.a(i3, aec.c(t, 1048575 & iD2));
                    }
                    break;
                case 8:
                    if (a((Object) t, i2)) {
                        a(i3, aec.f(t, 1048575 & iD2), aeqVar);
                    }
                    break;
                case 9:
                    if (a((Object) t, i2)) {
                        aeqVar.a(i3, aec.f(t, 1048575 & iD2), a(i2));
                    }
                    break;
                case 10:
                    if (a((Object) t, i2)) {
                        aeqVar.a(i3, (zv) aec.f(t, 1048575 & iD2));
                    }
                    break;
                case 11:
                    if (a((Object) t, i2)) {
                        aeqVar.e(i3, aec.a(t, 1048575 & iD2));
                    }
                    break;
                case 12:
                    if (a((Object) t, i2)) {
                        aeqVar.b(i3, aec.a(t, 1048575 & iD2));
                    }
                    break;
                case 13:
                    if (a((Object) t, i2)) {
                        aeqVar.a(i3, aec.a(t, 1048575 & iD2));
                    }
                    break;
                case 14:
                    if (a((Object) t, i2)) {
                        aeqVar.b(i3, aec.b(t, 1048575 & iD2));
                    }
                    break;
                case 15:
                    if (a((Object) t, i2)) {
                        aeqVar.f(i3, aec.a(t, 1048575 & iD2));
                    }
                    break;
                case 16:
                    if (a((Object) t, i2)) {
                        aeqVar.e(i3, aec.b(t, 1048575 & iD2));
                    }
                    break;
                case 17:
                    if (a((Object) t, i2)) {
                        aeqVar.b(i3, aec.f(t, 1048575 & iD2), a(i2));
                    }
                    break;
                case 18:
                    adf.a(this.f3794b[i2], (List<Double>) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 19:
                    adf.b(this.f3794b[i2], (List<Float>) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 20:
                    adf.c(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 21:
                    adf.d(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 22:
                    adf.h(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 23:
                    adf.f(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 24:
                    adf.k(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 25:
                    adf.n(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 26:
                    adf.a(this.f3794b[i2], (List<String>) aec.f(t, 1048575 & iD2), aeqVar);
                    break;
                case 27:
                    adf.a(this.f3794b[i2], (List<?>) aec.f(t, 1048575 & iD2), aeqVar, a(i2));
                    break;
                case 28:
                    adf.b(this.f3794b[i2], (List<zv>) aec.f(t, 1048575 & iD2), aeqVar);
                    break;
                case 29:
                    adf.i(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 30:
                    adf.m(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 31:
                    adf.l(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 32:
                    adf.g(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 33:
                    adf.j(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 34:
                    adf.e(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, false);
                    break;
                case 35:
                    adf.a(this.f3794b[i2], (List<Double>) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 36:
                    adf.b(this.f3794b[i2], (List<Float>) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 37:
                    adf.c(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 38:
                    adf.d(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 39:
                    adf.h(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 40:
                    adf.f(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 41:
                    adf.k(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 42:
                    adf.n(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 43:
                    adf.i(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 44:
                    adf.m(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 45:
                    adf.l(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 46:
                    adf.g(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 47:
                    adf.j(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 48:
                    adf.e(this.f3794b[i2], (List) aec.f(t, 1048575 & iD2), aeqVar, true);
                    break;
                case 49:
                    adf.b(this.f3794b[i2], (List<?>) aec.f(t, 1048575 & iD2), aeqVar, a(i2));
                    break;
                case 50:
                    a(aeqVar, i3, aec.f(t, 1048575 & iD2), i2);
                    break;
                case 51:
                    if (a(t, i3, i2)) {
                        aeqVar.a(i3, b(t, 1048575 & iD2));
                    }
                    break;
                case 52:
                    if (a(t, i3, i2)) {
                        aeqVar.a(i3, c(t, 1048575 & iD2));
                    }
                    break;
                case 53:
                    if (a(t, i3, i2)) {
                        aeqVar.a(i3, e(t, 1048575 & iD2));
                    }
                    break;
                case 54:
                    if (a(t, i3, i2)) {
                        aeqVar.c(i3, e(t, 1048575 & iD2));
                    }
                    break;
                case 55:
                    if (a(t, i3, i2)) {
                        aeqVar.c(i3, d(t, 1048575 & iD2));
                    }
                    break;
                case 56:
                    if (a(t, i3, i2)) {
                        aeqVar.d(i3, e(t, 1048575 & iD2));
                    }
                    break;
                case 57:
                    if (a(t, i3, i2)) {
                        aeqVar.d(i3, d(t, 1048575 & iD2));
                    }
                    break;
                case 58:
                    if (a(t, i3, i2)) {
                        aeqVar.a(i3, f(t, 1048575 & iD2));
                    }
                    break;
                case 59:
                    if (a(t, i3, i2)) {
                        a(i3, aec.f(t, 1048575 & iD2), aeqVar);
                    }
                    break;
                case 60:
                    if (a(t, i3, i2)) {
                        aeqVar.a(i3, aec.f(t, 1048575 & iD2), a(i2));
                    }
                    break;
                case 61:
                    if (a(t, i3, i2)) {
                        aeqVar.a(i3, (zv) aec.f(t, 1048575 & iD2));
                    }
                    break;
                case 62:
                    if (a(t, i3, i2)) {
                        aeqVar.e(i3, d(t, 1048575 & iD2));
                    }
                    break;
                case 63:
                    if (a(t, i3, i2)) {
                        aeqVar.b(i3, d(t, 1048575 & iD2));
                    }
                    break;
                case 64:
                    if (a(t, i3, i2)) {
                        aeqVar.a(i3, d(t, 1048575 & iD2));
                    }
                    break;
                case 65:
                    if (a(t, i3, i2)) {
                        aeqVar.b(i3, e(t, 1048575 & iD2));
                    }
                    break;
                case 66:
                    if (a(t, i3, i2)) {
                        aeqVar.f(i3, d(t, 1048575 & iD2));
                    }
                    break;
                case 67:
                    if (a(t, i3, i2)) {
                        aeqVar.e(i3, e(t, 1048575 & iD2));
                    }
                    break;
                case 68:
                    if (a(t, i3, i2)) {
                        aeqVar.b(i3, aec.f(t, 1048575 & iD2), a(i2));
                    }
                    break;
            }
            i2 += 4;
            entry3 = entry4;
        }
        while (entry3 != null) {
            this.r.a(aeqVar, entry3);
            entry3 = itE.hasNext() ? (Map.Entry) itE.next() : null;
        }
        a(this.q, t, aeqVar);
    }

    @Override // com.google.android.gms.internal.ads.add
    public final void a(T t, byte[] bArr, int i, int i2, zs zsVar) throws IOException {
        abi abiVarA;
        if (!this.j) {
            a(t, bArr, i, i2, 0, zsVar);
            return;
        }
        Unsafe unsafe = f3793a;
        int iA = i;
        while (iA < i2) {
            int iA2 = iA + 1;
            int i3 = bArr[iA];
            if (i3 < 0) {
                iA2 = zr.a(i3, bArr, iA2, zsVar);
                i3 = zsVar.f5744a;
            }
            int i4 = i3 >>> 3;
            int i5 = i3 & 7;
            int iG = g(i4);
            if (iG >= 0) {
                int i6 = this.f3794b[iG + 1];
                int i7 = (267386880 & i6) >>> 20;
                long j = 1048575 & i6;
                if (i7 <= 17) {
                    switch (i7) {
                        case 0:
                            if (i5 == 1) {
                                aec.a(t, j, zr.c(bArr, iA2));
                                iA = iA2 + 8;
                            }
                            break;
                        case 1:
                            if (i5 == 5) {
                                aec.a((Object) t, j, zr.d(bArr, iA2));
                                iA = iA2 + 4;
                            }
                            break;
                        case 2:
                        case 3:
                            if (i5 == 0) {
                                iA = zr.b(bArr, iA2, zsVar);
                                unsafe.putLong(t, j, zsVar.f5745b);
                            }
                            break;
                        case 4:
                        case 11:
                            if (i5 == 0) {
                                iA = zr.a(bArr, iA2, zsVar);
                                unsafe.putInt(t, j, zsVar.f5744a);
                            }
                            break;
                        case 5:
                        case 14:
                            if (i5 == 1) {
                                unsafe.putLong(t, j, zr.b(bArr, iA2));
                                iA = iA2 + 8;
                            }
                            break;
                        case 6:
                        case 13:
                            if (i5 == 5) {
                                unsafe.putInt(t, j, zr.a(bArr, iA2));
                                iA = iA2 + 4;
                            }
                            break;
                        case 7:
                            if (i5 == 0) {
                                iA = zr.b(bArr, iA2, zsVar);
                                aec.a(t, j, zsVar.f5745b != 0);
                            }
                            break;
                        case 8:
                            if (i5 == 2) {
                                int iC = (536870912 & i6) == 0 ? zr.c(bArr, iA2, zsVar) : zr.d(bArr, iA2, zsVar);
                                unsafe.putObject(t, j, zsVar.f5746c);
                                iA = iC;
                            }
                            break;
                        case 9:
                            if (i5 == 2) {
                                iA = a(a(iG), bArr, iA2, i2, zsVar);
                                Object object = unsafe.getObject(t, j);
                                if (object != null) {
                                    unsafe.putObject(t, j, abf.a(object, zsVar.f5746c));
                                } else {
                                    unsafe.putObject(t, j, zsVar.f5746c);
                                }
                            }
                            break;
                        case 10:
                            if (i5 == 2) {
                                iA = zr.e(bArr, iA2, zsVar);
                                unsafe.putObject(t, j, zsVar.f5746c);
                            }
                            break;
                        case 12:
                            if (i5 == 0) {
                                iA = zr.a(bArr, iA2, zsVar);
                                unsafe.putInt(t, j, zsVar.f5744a);
                            }
                            break;
                        case 15:
                            if (i5 == 0) {
                                iA = zr.a(bArr, iA2, zsVar);
                                unsafe.putInt(t, j, aae.f(zsVar.f5744a));
                            }
                            break;
                        case 16:
                            if (i5 == 0) {
                                iA = zr.b(bArr, iA2, zsVar);
                                unsafe.putLong(t, j, aae.a(zsVar.f5745b));
                            }
                            break;
                        default:
                            iA = iA2;
                            iA = a(i3, bArr, iA, i2, t, zsVar);
                            break;
                    }
                } else {
                    if (i7 == 27) {
                        if (i5 == 2) {
                            abi abiVar = (abi) unsafe.getObject(t, j);
                            if (abiVar.a()) {
                                abiVarA = abiVar;
                            } else {
                                int size = abiVar.size();
                                abiVarA = abiVar.a(size == 0 ? 10 : size << 1);
                                unsafe.putObject(t, j, abiVarA);
                            }
                            iA = a((add<?>) a(iG), i3 == true ? 1 : 0, bArr, iA2, i2, (abi<?>) abiVarA, zsVar);
                        }
                    } else if (i7 <= 49) {
                        iA = a(t, bArr, iA2, i2, i3, i4, i5, iG, i6, i7, j, zsVar);
                        if (iA == iA2) {
                        }
                    } else if (i7 != 50) {
                        iA = a(t, bArr, iA2, i2, i3 == true ? 1 : 0, i4, i5, i6, i7, j, iG, zsVar);
                        if (iA == iA2) {
                        }
                    } else if (i5 == 2) {
                        iA = a(t, bArr, iA2, i2, iG, i4, j, zsVar);
                        if (iA == iA2) {
                        }
                    }
                    iA = a(i3, bArr, iA, i2, t, zsVar);
                }
            }
            iA = iA2;
            iA = a(i3, bArr, iA, i2, t, zsVar);
        }
        if (iA != i2) {
            throw abj.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.add
    public final boolean a(T t, T t2) {
        boolean zA;
        int length = this.f3794b.length;
        for (int i = 0; i < length; i += 4) {
            int iD = d(i);
            long j = iD & 1048575;
            switch ((iD & 267386880) >>> 20) {
                case 0:
                    zA = c(t, t2, i) && aec.b(t, j) == aec.b(t2, j);
                    break;
                case 1:
                    zA = c(t, t2, i) && aec.a(t, j) == aec.a(t2, j);
                    break;
                case 2:
                    zA = c(t, t2, i) && aec.b(t, j) == aec.b(t2, j);
                    break;
                case 3:
                    zA = c(t, t2, i) && aec.b(t, j) == aec.b(t2, j);
                    break;
                case 4:
                    zA = c(t, t2, i) && aec.a(t, j) == aec.a(t2, j);
                    break;
                case 5:
                    zA = c(t, t2, i) && aec.b(t, j) == aec.b(t2, j);
                    break;
                case 6:
                    zA = c(t, t2, i) && aec.a(t, j) == aec.a(t2, j);
                    break;
                case 7:
                    zA = c(t, t2, i) && aec.c(t, j) == aec.c(t2, j);
                    break;
                case 8:
                    zA = c(t, t2, i) && adf.a(aec.f(t, j), aec.f(t2, j));
                    break;
                case 9:
                    zA = c(t, t2, i) && adf.a(aec.f(t, j), aec.f(t2, j));
                    break;
                case 10:
                    zA = c(t, t2, i) && adf.a(aec.f(t, j), aec.f(t2, j));
                    break;
                case 11:
                    zA = c(t, t2, i) && aec.a(t, j) == aec.a(t2, j);
                    break;
                case 12:
                    zA = c(t, t2, i) && aec.a(t, j) == aec.a(t2, j);
                    break;
                case 13:
                    zA = c(t, t2, i) && aec.a(t, j) == aec.a(t2, j);
                    break;
                case 14:
                    zA = c(t, t2, i) && aec.b(t, j) == aec.b(t2, j);
                    break;
                case 15:
                    zA = c(t, t2, i) && aec.a(t, j) == aec.a(t2, j);
                    break;
                case 16:
                    zA = c(t, t2, i) && aec.b(t, j) == aec.b(t2, j);
                    break;
                case 17:
                    zA = c(t, t2, i) && adf.a(aec.f(t, j), aec.f(t2, j));
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zA = adf.a(aec.f(t, j), aec.f(t2, j));
                    break;
                case 50:
                    zA = adf.a(aec.f(t, j), aec.f(t2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    int iE = e(i);
                    zA = aec.a(t, iE & 1048575) == aec.a(t2, iE & 1048575) && adf.a(aec.f(t, j), aec.f(t2, j));
                    break;
                default:
                    zA = true;
                    break;
            }
            if (!zA) {
                return false;
            }
        }
        if (!this.q.b(t).equals(this.q.b(t2))) {
            return false;
        }
        if (this.h) {
            return this.r.a(t).equals(this.r.a(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.add
    public final int b(T t) {
        int i;
        int i2;
        int i3;
        if (!this.j) {
            Unsafe unsafe = f3793a;
            int i4 = -1;
            int iC = 0;
            int i5 = 0;
            int i6 = 0;
            while (i5 < this.f3794b.length) {
                int iD = d(i5);
                int i7 = this.f3794b[i5];
                int i8 = (267386880 & iD) >>> 20;
                int i9 = 0;
                if (i8 <= 17) {
                    int i10 = this.f3794b[i5 + 2];
                    int i11 = 1048575 & i10;
                    int i12 = 1 << (i10 >>> 20);
                    if (i11 != i4) {
                        i6 = unsafe.getInt(t, i11);
                        i4 = i11;
                    }
                    i = i4;
                    i2 = i6;
                    i3 = i12;
                    i9 = i10;
                } else if (!this.k || i8 < aay.DOUBLE_LIST_PACKED.a() || i8 > aay.SINT64_LIST_PACKED.a()) {
                    i = i4;
                    i2 = i6;
                    i3 = 0;
                } else {
                    i9 = this.f3794b[i5 + 2] & 1048575;
                    i = i4;
                    i2 = i6;
                    i3 = 0;
                }
                long j = 1048575 & iD;
                switch (i8) {
                    case 0:
                        if ((i3 & i2) != 0) {
                            iC += aaj.b(i7, 0.0d);
                        }
                        break;
                    case 1:
                        if ((i3 & i2) != 0) {
                            iC += aaj.b(i7, 0.0f);
                        }
                        break;
                    case 2:
                        if ((i3 & i2) != 0) {
                            iC += aaj.d(i7, unsafe.getLong(t, j));
                        }
                        break;
                    case 3:
                        if ((i3 & i2) != 0) {
                            iC += aaj.e(i7, unsafe.getLong(t, j));
                        }
                        break;
                    case 4:
                        if ((i3 & i2) != 0) {
                            iC += aaj.f(i7, unsafe.getInt(t, j));
                        }
                        break;
                    case 5:
                        if ((i3 & i2) != 0) {
                            iC += aaj.g(i7, 0L);
                        }
                        break;
                    case 6:
                        if ((i3 & i2) != 0) {
                            iC += aaj.i(i7, 0);
                        }
                        break;
                    case 7:
                        if ((i3 & i2) != 0) {
                            iC += aaj.b(i7, true);
                        }
                        break;
                    case 8:
                        if ((i3 & i2) != 0) {
                            Object object = unsafe.getObject(t, j);
                            iC = !(object instanceof zv) ? iC + aaj.b(i7, (String) object) : iC + aaj.c(i7, (zv) object);
                        }
                        break;
                    case 9:
                        if ((i3 & i2) != 0) {
                            iC += adf.a(i7, unsafe.getObject(t, j), a(i5));
                        }
                        break;
                    case 10:
                        if ((i3 & i2) != 0) {
                            iC += aaj.c(i7, (zv) unsafe.getObject(t, j));
                        }
                        break;
                    case 11:
                        if ((i3 & i2) != 0) {
                            iC += aaj.g(i7, unsafe.getInt(t, j));
                        }
                        break;
                    case 12:
                        if ((i3 & i2) != 0) {
                            iC += aaj.k(i7, unsafe.getInt(t, j));
                        }
                        break;
                    case 13:
                        if ((i3 & i2) != 0) {
                            iC += aaj.j(i7, 0);
                        }
                        break;
                    case 14:
                        if ((i3 & i2) != 0) {
                            iC += aaj.h(i7, 0L);
                        }
                        break;
                    case 15:
                        if ((i3 & i2) != 0) {
                            iC += aaj.h(i7, unsafe.getInt(t, j));
                        }
                        break;
                    case 16:
                        if ((i3 & i2) != 0) {
                            iC += aaj.f(i7, unsafe.getLong(t, j));
                        }
                        break;
                    case 17:
                        if ((i3 & i2) != 0) {
                            iC += aaj.c(i7, (ack) unsafe.getObject(t, j), a(i5));
                        }
                        break;
                    case 18:
                        iC += adf.i(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 19:
                        iC += adf.h(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 20:
                        iC += adf.a(i7, (List<Long>) unsafe.getObject(t, j), false);
                        break;
                    case 21:
                        iC += adf.b(i7, (List<Long>) unsafe.getObject(t, j), false);
                        break;
                    case 22:
                        iC += adf.e(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 23:
                        iC += adf.i(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 24:
                        iC += adf.h(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 25:
                        iC += adf.j(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 26:
                        iC += adf.a(i7, (List<?>) unsafe.getObject(t, j));
                        break;
                    case 27:
                        iC += adf.a(i7, (List<?>) unsafe.getObject(t, j), a(i5));
                        break;
                    case 28:
                        iC += adf.b(i7, (List) unsafe.getObject(t, j));
                        break;
                    case 29:
                        iC += adf.f(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 30:
                        iC += adf.d(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 31:
                        iC += adf.h(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 32:
                        iC += adf.i(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 33:
                        iC += adf.g(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 34:
                        iC += adf.c(i7, (List) unsafe.getObject(t, j), false);
                        break;
                    case 35:
                        int i13 = adf.i((List) unsafe.getObject(t, j));
                        if (i13 > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, i13);
                            }
                            iC += i13 + aaj.e(i7) + aaj.g(i13);
                        }
                        break;
                    case 36:
                        int iH = adf.h((List) unsafe.getObject(t, j));
                        if (iH > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iH);
                            }
                            iC += iH + aaj.e(i7) + aaj.g(iH);
                        }
                        break;
                    case 37:
                        int iA = adf.a((List<Long>) unsafe.getObject(t, j));
                        if (iA > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iA);
                            }
                            iC += iA + aaj.e(i7) + aaj.g(iA);
                        }
                        break;
                    case 38:
                        int iB = adf.b((List) unsafe.getObject(t, j));
                        if (iB > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iB);
                            }
                            iC += iB + aaj.e(i7) + aaj.g(iB);
                        }
                        break;
                    case 39:
                        int iE = adf.e((List) unsafe.getObject(t, j));
                        if (iE > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iE);
                            }
                            iC += iE + aaj.e(i7) + aaj.g(iE);
                        }
                        break;
                    case 40:
                        int i14 = adf.i((List) unsafe.getObject(t, j));
                        if (i14 > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, i14);
                            }
                            iC += i14 + aaj.e(i7) + aaj.g(i14);
                        }
                        break;
                    case 41:
                        int iH2 = adf.h((List) unsafe.getObject(t, j));
                        if (iH2 > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iH2);
                            }
                            iC += iH2 + aaj.e(i7) + aaj.g(iH2);
                        }
                        break;
                    case 42:
                        int iJ = adf.j((List) unsafe.getObject(t, j));
                        if (iJ > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iJ);
                            }
                            iC += iJ + aaj.e(i7) + aaj.g(iJ);
                        }
                        break;
                    case 43:
                        int iF = adf.f((List) unsafe.getObject(t, j));
                        if (iF > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iF);
                            }
                            iC += iF + aaj.e(i7) + aaj.g(iF);
                        }
                        break;
                    case 44:
                        int iD2 = adf.d((List) unsafe.getObject(t, j));
                        if (iD2 > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iD2);
                            }
                            iC += iD2 + aaj.e(i7) + aaj.g(iD2);
                        }
                        break;
                    case 45:
                        int iH3 = adf.h((List) unsafe.getObject(t, j));
                        if (iH3 > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iH3);
                            }
                            iC += iH3 + aaj.e(i7) + aaj.g(iH3);
                        }
                        break;
                    case 46:
                        int i15 = adf.i((List) unsafe.getObject(t, j));
                        if (i15 > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, i15);
                            }
                            iC += i15 + aaj.e(i7) + aaj.g(i15);
                        }
                        break;
                    case 47:
                        int iG = adf.g((List) unsafe.getObject(t, j));
                        if (iG > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iG);
                            }
                            iC += iG + aaj.e(i7) + aaj.g(iG);
                        }
                        break;
                    case 48:
                        int iC2 = adf.c((List) unsafe.getObject(t, j));
                        if (iC2 > 0) {
                            if (this.k) {
                                unsafe.putInt(t, i9, iC2);
                            }
                            iC += iC2 + aaj.e(i7) + aaj.g(iC2);
                        }
                        break;
                    case 49:
                        iC += adf.b(i7, (List<ack>) unsafe.getObject(t, j), a(i5));
                        break;
                    case 50:
                        iC += this.s.a(i7, unsafe.getObject(t, j), b(i5));
                        break;
                    case 51:
                        if (a(t, i7, i5)) {
                            iC += aaj.b(i7, 0.0d);
                        }
                        break;
                    case 52:
                        if (a(t, i7, i5)) {
                            iC += aaj.b(i7, 0.0f);
                        }
                        break;
                    case 53:
                        if (a(t, i7, i5)) {
                            iC += aaj.d(i7, e(t, j));
                        }
                        break;
                    case 54:
                        if (a(t, i7, i5)) {
                            iC += aaj.e(i7, e(t, j));
                        }
                        break;
                    case 55:
                        if (a(t, i7, i5)) {
                            iC += aaj.f(i7, d(t, j));
                        }
                        break;
                    case 56:
                        if (a(t, i7, i5)) {
                            iC += aaj.g(i7, 0L);
                        }
                        break;
                    case 57:
                        if (a(t, i7, i5)) {
                            iC += aaj.i(i7, 0);
                        }
                        break;
                    case 58:
                        if (a(t, i7, i5)) {
                            iC += aaj.b(i7, true);
                        }
                        break;
                    case 59:
                        if (a(t, i7, i5)) {
                            Object object2 = unsafe.getObject(t, j);
                            iC = !(object2 instanceof zv) ? iC + aaj.b(i7, (String) object2) : iC + aaj.c(i7, (zv) object2);
                        }
                        break;
                    case 60:
                        if (a(t, i7, i5)) {
                            iC += adf.a(i7, unsafe.getObject(t, j), a(i5));
                        }
                        break;
                    case 61:
                        if (a(t, i7, i5)) {
                            iC += aaj.c(i7, (zv) unsafe.getObject(t, j));
                        }
                        break;
                    case 62:
                        if (a(t, i7, i5)) {
                            iC += aaj.g(i7, d(t, j));
                        }
                        break;
                    case 63:
                        if (a(t, i7, i5)) {
                            iC += aaj.k(i7, d(t, j));
                        }
                        break;
                    case 64:
                        if (a(t, i7, i5)) {
                            iC += aaj.j(i7, 0);
                        }
                        break;
                    case 65:
                        if (a(t, i7, i5)) {
                            iC += aaj.h(i7, 0L);
                        }
                        break;
                    case 66:
                        if (a(t, i7, i5)) {
                            iC += aaj.h(i7, d(t, j));
                        }
                        break;
                    case 67:
                        if (a(t, i7, i5)) {
                            iC += aaj.f(i7, e(t, j));
                        }
                        break;
                    case 68:
                        if (a(t, i7, i5)) {
                            iC += aaj.c(i7, (ack) unsafe.getObject(t, j), a(i5));
                        }
                        break;
                }
                i5 += 4;
                i6 = i2;
                i4 = i;
            }
            int iA2 = a((adw) this.q, (Object) t) + iC;
            return this.h ? iA2 + this.r.a(t).h() : iA2;
        }
        Unsafe unsafe2 = f3793a;
        int i16 = 0;
        int iC3 = 0;
        while (true) {
            int i17 = i16;
            if (i17 >= this.f3794b.length) {
                return a((adw) this.q, (Object) t) + iC3;
            }
            int iD3 = d(i17);
            int i18 = (267386880 & iD3) >>> 20;
            int i19 = this.f3794b[i17];
            long j2 = iD3 & 1048575;
            int i20 = (i18 < aay.DOUBLE_LIST_PACKED.a() || i18 > aay.SINT64_LIST_PACKED.a()) ? 0 : this.f3794b[i17 + 2] & 1048575;
            switch (i18) {
                case 0:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.b(i19, 0.0d);
                    }
                    break;
                case 1:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.b(i19, 0.0f);
                    }
                    break;
                case 2:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.d(i19, aec.b(t, j2));
                    }
                    break;
                case 3:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.e(i19, aec.b(t, j2));
                    }
                    break;
                case 4:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.f(i19, aec.a(t, j2));
                    }
                    break;
                case 5:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.g(i19, 0L);
                    }
                    break;
                case 6:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.i(i19, 0);
                    }
                    break;
                case 7:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.b(i19, true);
                    }
                    break;
                case 8:
                    if (a((Object) t, i17)) {
                        Object objF = aec.f(t, j2);
                        iC3 = !(objF instanceof zv) ? iC3 + aaj.b(i19, (String) objF) : iC3 + aaj.c(i19, (zv) objF);
                    }
                    break;
                case 9:
                    if (a((Object) t, i17)) {
                        iC3 += adf.a(i19, aec.f(t, j2), a(i17));
                    }
                    break;
                case 10:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.c(i19, (zv) aec.f(t, j2));
                    }
                    break;
                case 11:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.g(i19, aec.a(t, j2));
                    }
                    break;
                case 12:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.k(i19, aec.a(t, j2));
                    }
                    break;
                case 13:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.j(i19, 0);
                    }
                    break;
                case 14:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.h(i19, 0L);
                    }
                    break;
                case 15:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.h(i19, aec.a(t, j2));
                    }
                    break;
                case 16:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.f(i19, aec.b(t, j2));
                    }
                    break;
                case 17:
                    if (a((Object) t, i17)) {
                        iC3 += aaj.c(i19, (ack) aec.f(t, j2), a(i17));
                    }
                    break;
                case 18:
                    iC3 += adf.i(i19, a(t, j2), false);
                    break;
                case 19:
                    iC3 += adf.h(i19, a(t, j2), false);
                    break;
                case 20:
                    iC3 += adf.a(i19, (List<Long>) a(t, j2), false);
                    break;
                case 21:
                    iC3 += adf.b(i19, (List<Long>) a(t, j2), false);
                    break;
                case 22:
                    iC3 += adf.e(i19, a(t, j2), false);
                    break;
                case 23:
                    iC3 += adf.i(i19, a(t, j2), false);
                    break;
                case 24:
                    iC3 += adf.h(i19, a(t, j2), false);
                    break;
                case 25:
                    iC3 += adf.j(i19, a(t, j2), false);
                    break;
                case 26:
                    iC3 += adf.a(i19, (List<?>) a(t, j2));
                    break;
                case 27:
                    iC3 += adf.a(i19, (List<?>) a(t, j2), a(i17));
                    break;
                case 28:
                    iC3 += adf.b(i19, a(t, j2));
                    break;
                case 29:
                    iC3 += adf.f(i19, a(t, j2), false);
                    break;
                case 30:
                    iC3 += adf.d(i19, a(t, j2), false);
                    break;
                case 31:
                    iC3 += adf.h(i19, a(t, j2), false);
                    break;
                case 32:
                    iC3 += adf.i(i19, a(t, j2), false);
                    break;
                case 33:
                    iC3 += adf.g(i19, a(t, j2), false);
                    break;
                case 34:
                    iC3 += adf.c(i19, a(t, j2), false);
                    break;
                case 35:
                    int i21 = adf.i((List) unsafe2.getObject(t, j2));
                    if (i21 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, i21);
                        }
                        iC3 += i21 + aaj.e(i19) + aaj.g(i21);
                    }
                    break;
                case 36:
                    int iH4 = adf.h((List) unsafe2.getObject(t, j2));
                    if (iH4 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iH4);
                        }
                        iC3 += iH4 + aaj.e(i19) + aaj.g(iH4);
                    }
                    break;
                case 37:
                    int iA3 = adf.a((List<Long>) unsafe2.getObject(t, j2));
                    if (iA3 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iA3);
                        }
                        iC3 += iA3 + aaj.e(i19) + aaj.g(iA3);
                    }
                    break;
                case 38:
                    int iB2 = adf.b((List) unsafe2.getObject(t, j2));
                    if (iB2 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iB2);
                        }
                        iC3 += iB2 + aaj.e(i19) + aaj.g(iB2);
                    }
                    break;
                case 39:
                    int iE2 = adf.e((List) unsafe2.getObject(t, j2));
                    if (iE2 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iE2);
                        }
                        iC3 += iE2 + aaj.e(i19) + aaj.g(iE2);
                    }
                    break;
                case 40:
                    int i22 = adf.i((List) unsafe2.getObject(t, j2));
                    if (i22 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, i22);
                        }
                        iC3 += i22 + aaj.e(i19) + aaj.g(i22);
                    }
                    break;
                case 41:
                    int iH5 = adf.h((List) unsafe2.getObject(t, j2));
                    if (iH5 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iH5);
                        }
                        iC3 += iH5 + aaj.e(i19) + aaj.g(iH5);
                    }
                    break;
                case 42:
                    int iJ2 = adf.j((List) unsafe2.getObject(t, j2));
                    if (iJ2 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iJ2);
                        }
                        iC3 += iJ2 + aaj.e(i19) + aaj.g(iJ2);
                    }
                    break;
                case 43:
                    int iF2 = adf.f((List) unsafe2.getObject(t, j2));
                    if (iF2 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iF2);
                        }
                        iC3 += iF2 + aaj.e(i19) + aaj.g(iF2);
                    }
                    break;
                case 44:
                    int iD4 = adf.d((List) unsafe2.getObject(t, j2));
                    if (iD4 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iD4);
                        }
                        iC3 += iD4 + aaj.e(i19) + aaj.g(iD4);
                    }
                    break;
                case 45:
                    int iH6 = adf.h((List) unsafe2.getObject(t, j2));
                    if (iH6 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iH6);
                        }
                        iC3 += iH6 + aaj.e(i19) + aaj.g(iH6);
                    }
                    break;
                case 46:
                    int i23 = adf.i((List) unsafe2.getObject(t, j2));
                    if (i23 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, i23);
                        }
                        iC3 += i23 + aaj.e(i19) + aaj.g(i23);
                    }
                    break;
                case 47:
                    int iG2 = adf.g((List) unsafe2.getObject(t, j2));
                    if (iG2 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iG2);
                        }
                        iC3 += iG2 + aaj.e(i19) + aaj.g(iG2);
                    }
                    break;
                case 48:
                    int iC4 = adf.c((List) unsafe2.getObject(t, j2));
                    if (iC4 > 0) {
                        if (this.k) {
                            unsafe2.putInt(t, i20, iC4);
                        }
                        iC3 += iC4 + aaj.e(i19) + aaj.g(iC4);
                    }
                    break;
                case 49:
                    iC3 += adf.b(i19, (List<ack>) a(t, j2), a(i17));
                    break;
                case 50:
                    iC3 += this.s.a(i19, aec.f(t, j2), b(i17));
                    break;
                case 51:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.b(i19, 0.0d);
                    }
                    break;
                case 52:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.b(i19, 0.0f);
                    }
                    break;
                case 53:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.d(i19, e(t, j2));
                    }
                    break;
                case 54:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.e(i19, e(t, j2));
                    }
                    break;
                case 55:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.f(i19, d(t, j2));
                    }
                    break;
                case 56:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.g(i19, 0L);
                    }
                    break;
                case 57:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.i(i19, 0);
                    }
                    break;
                case 58:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.b(i19, true);
                    }
                    break;
                case 59:
                    if (a(t, i19, i17)) {
                        Object objF2 = aec.f(t, j2);
                        iC3 = !(objF2 instanceof zv) ? iC3 + aaj.b(i19, (String) objF2) : iC3 + aaj.c(i19, (zv) objF2);
                    }
                    break;
                case 60:
                    if (a(t, i19, i17)) {
                        iC3 += adf.a(i19, aec.f(t, j2), a(i17));
                    }
                    break;
                case 61:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.c(i19, (zv) aec.f(t, j2));
                    }
                    break;
                case 62:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.g(i19, d(t, j2));
                    }
                    break;
                case 63:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.k(i19, d(t, j2));
                    }
                    break;
                case 64:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.j(i19, 0);
                    }
                    break;
                case 65:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.h(i19, 0L);
                    }
                    break;
                case 66:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.h(i19, d(t, j2));
                    }
                    break;
                case 67:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.f(i19, e(t, j2));
                    }
                    break;
                case 68:
                    if (a(t, i19, i17)) {
                        iC3 += aaj.c(i19, (ack) aec.f(t, j2), a(i17));
                    }
                    break;
            }
            i16 = i17 + 4;
        }
    }

    @Override // com.google.android.gms.internal.ads.add
    public final void b(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.f3794b.length; i += 4) {
            int iD = d(i);
            long j = 1048575 & iD;
            int i2 = this.f3794b[i];
            switch ((iD & 267386880) >>> 20) {
                case 0:
                    if (a((Object) t2, i)) {
                        aec.a(t, j, aec.e(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 1:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.d(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 2:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.b(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 3:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.b(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 4:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.a(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 5:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.b(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 6:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.a(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 7:
                    if (a((Object) t2, i)) {
                        aec.a(t, j, aec.c(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 8:
                    if (a((Object) t2, i)) {
                        aec.a(t, j, aec.f(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 9:
                    a(t, t2, i);
                    break;
                case 10:
                    if (a((Object) t2, i)) {
                        aec.a(t, j, aec.f(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 11:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.a(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 12:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.a(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 13:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.a(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 14:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.b(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 15:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.a(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 16:
                    if (a((Object) t2, i)) {
                        aec.a((Object) t, j, aec.b(t2, j));
                        b((Object) t, i);
                    }
                    break;
                case 17:
                    a(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.p.a(t, t2, j);
                    break;
                case 50:
                    adf.a(this.s, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (a(t2, i2, i)) {
                        aec.a(t, j, aec.f(t2, j));
                        b(t, i2, i);
                    }
                    break;
                case 60:
                    b(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (a(t2, i2, i)) {
                        aec.a(t, j, aec.f(t2, j));
                        b(t, i2, i);
                    }
                    break;
                case 68:
                    b(t, t2, i);
                    break;
            }
        }
        if (this.j) {
            return;
        }
        adf.a(this.q, t, t2);
        if (this.h) {
            adf.a(this.r, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.add
    public final void c(T t) {
        if (this.m != null) {
            for (int i : this.m) {
                long jD = d(i) & 1048575;
                Object objF = aec.f(t, jD);
                if (objF != null) {
                    aec.a(t, jD, this.s.d(objF));
                }
            }
        }
        if (this.n != null) {
            int length = this.n.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.p.b(t, r1[i2]);
            }
        }
        this.q.d(t);
        if (this.h) {
            this.r.c(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0121 A[PHI: r0
  0x0121: PHI (r0v12 int) = (r0v11 int), (r0v59 int) binds: [B:11:0x0021, B:13:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0106 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.add] */
    /* JADX WARN: Type inference failed for: r0v60 */
    /* JADX WARN: Type inference failed for: r0v61 */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.google.android.gms.internal.ads.add] */
    @Override // com.google.android.gms.internal.ads.add
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean d(T r13) {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aco.d(java.lang.Object):boolean");
    }
}
