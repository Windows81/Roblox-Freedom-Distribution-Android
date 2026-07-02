package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class adf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f3822a = d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final adw<?, ?> f3823b = a(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final adw<?, ?> f3824c = a(true);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final adw<?, ?> f3825d = new ady();

    static int a(int i, Object obj, add addVar) {
        return obj instanceof abr ? aaj.a(i, (abr) obj) : aaj.b(i, (ack) obj, addVar);
    }

    static int a(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = aaj.e(i) * size;
        if (!(list instanceof abt)) {
            int i2 = 0;
            while (i2 < size) {
                Object obj = list.get(i2);
                i2++;
                iE = (obj instanceof zv ? aaj.b((zv) obj) : aaj.b((String) obj)) + iE;
            }
            return iE;
        }
        abt abtVar = (abt) list;
        int i3 = 0;
        while (i3 < size) {
            Object objB = abtVar.b(i3);
            i3++;
            iE = (objB instanceof zv ? aaj.b((zv) objB) : aaj.b((String) objB)) + iE;
        }
        return iE;
    }

    static int a(int i, List<?> list, add addVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = aaj.e(i) * size;
        int i2 = 0;
        while (i2 < size) {
            Object obj = list.get(i2);
            i2++;
            iE = (obj instanceof abr ? aaj.a((abr) obj) : aaj.a((ack) obj, addVar)) + iE;
        }
        return iE;
    }

    static int a(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return a(list) + (list.size() * aaj.e(i));
    }

    static int a(List<Long> list) {
        int i = 0;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof aby)) {
            int iD = 0;
            for (int i2 = 0; i2 < size; i2++) {
                iD += aaj.d(list.get(i2).longValue());
            }
            return iD;
        }
        aby abyVar = (aby) list;
        int i3 = 0;
        while (i3 < size) {
            int iD2 = aaj.d(abyVar.b(i3)) + i;
            i3++;
            i = iD2;
        }
        return i;
    }

    public static adw<?, ?> a() {
        return f3823b;
    }

    private static adw<?, ?> a(boolean z) {
        try {
            Class<?> clsE = e();
            if (clsE == null) {
                return null;
            }
            return (adw) clsE.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    static <UT, UB> UB a(int i, int i2, UB ub, adw<UT, UB> adwVar) {
        if (ub == null) {
            ub = adwVar.a();
        }
        adwVar.a(ub, i, i2);
        return ub;
    }

    static <UT, UB> UB a(int i, List<Integer> list, abh<?> abhVar, UB ub, adw<UT, UB> adwVar) {
        Object obj;
        Object objA;
        int i2;
        if (abhVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i3 = 0;
            int i4 = 0;
            obj = ub;
            while (i3 < size) {
                int iIntValue = list.get(i3).intValue();
                if (abhVar.a(iIntValue) != null) {
                    if (i3 != i4) {
                        list.set(i4, Integer.valueOf(iIntValue));
                    }
                    i2 = i4 + 1;
                    objA = obj;
                } else {
                    int i5 = i4;
                    objA = a(i, iIntValue, obj, adwVar);
                    i2 = i5;
                }
                i3++;
                obj = objA;
                i4 = i2;
            }
            if (i4 != size) {
                list.subList(i4, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (abhVar.a(iIntValue2) == null) {
                    ub = (UB) a(i, iIntValue2, ub, adwVar);
                    it.remove();
                }
            }
            obj = ub;
        }
        return (UB) obj;
    }

    public static void a(int i, List<String> list, aeq aeqVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.a(i, list);
    }

    public static void a(int i, List<?> list, aeq aeqVar, add addVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.a(i, list, addVar);
    }

    public static void a(int i, List<Double> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.g(i, list, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <T, FT extends aax<FT>> void a(aas<FT> aasVar, T t, T t2) {
        aav<T> aavVarA = aasVar.a(t2);
        if (aavVarA.b()) {
            return;
        }
        aasVar.b(t).a((aav) aavVarA);
    }

    static <T> void a(acf acfVar, T t, T t2, long j) {
        aec.a(t, j, acfVar.a(aec.f(t, j), aec.f(t2, j)));
    }

    static <T, UT, UB> void a(adw<UT, UB> adwVar, T t, T t2) {
        adwVar.a(t, adwVar.c(adwVar.b(t), adwVar.b(t2)));
    }

    public static void a(Class<?> cls) {
        if (!abd.class.isAssignableFrom(cls) && f3822a != null && !f3822a.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static boolean a(int i, int i2, int i3) {
        if (i2 < 40) {
            return true;
        }
        return ((((long) i2) - ((long) i)) + 1) + 9 <= ((2 * ((long) i3)) + 3) + ((((long) i3) + 3) * 3);
    }

    static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static int b(int i, List<zv> list) {
        int i2 = 0;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = size * aaj.e(i);
        while (true) {
            int i3 = i2;
            if (i3 >= list.size()) {
                return iE;
            }
            iE += aaj.b(list.get(i3));
            i2 = i3 + 1;
        }
    }

    static int b(int i, List<ack> list, add addVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iC = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iC += aaj.c(i, list.get(i2), addVar);
        }
        return iC;
    }

    static int b(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (size * aaj.e(i)) + b(list);
    }

    static int b(List<Long> list) {
        int i = 0;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof aby)) {
            int iE = 0;
            for (int i2 = 0; i2 < size; i2++) {
                iE += aaj.e(list.get(i2).longValue());
            }
            return iE;
        }
        aby abyVar = (aby) list;
        int i3 = 0;
        while (i3 < size) {
            int iE2 = aaj.e(abyVar.b(i3)) + i;
            i3++;
            i = iE2;
        }
        return i;
    }

    public static adw<?, ?> b() {
        return f3824c;
    }

    public static void b(int i, List<zv> list, aeq aeqVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.b(i, list);
    }

    public static void b(int i, List<?> list, aeq aeqVar, add addVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.b(i, list, addVar);
    }

    public static void b(int i, List<Float> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.f(i, list, z);
    }

    static int c(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (size * aaj.e(i)) + c(list);
    }

    static int c(List<Long> list) {
        int i = 0;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof aby)) {
            int iF = 0;
            for (int i2 = 0; i2 < size; i2++) {
                iF += aaj.f(list.get(i2).longValue());
            }
            return iF;
        }
        aby abyVar = (aby) list;
        int i3 = 0;
        while (i3 < size) {
            int iF2 = aaj.f(abyVar.b(i3)) + i;
            i3++;
            i = iF2;
        }
        return i;
    }

    public static adw<?, ?> c() {
        return f3825d;
    }

    public static void c(int i, List<Long> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.c(i, list, z);
    }

    static int d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (size * aaj.e(i)) + d(list);
    }

    static int d(List<Integer> list) {
        int i = 0;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof abe)) {
            int iK = 0;
            for (int i2 = 0; i2 < size; i2++) {
                iK += aaj.k(list.get(i2).intValue());
            }
            return iK;
        }
        abe abeVar = (abe) list;
        int i3 = 0;
        while (i3 < size) {
            int iK2 = aaj.k(abeVar.b(i3)) + i;
            i3++;
            i = iK2;
        }
        return i;
    }

    private static Class<?> d() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    public static void d(int i, List<Long> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.d(i, list, z);
    }

    static int e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (size * aaj.e(i)) + e(list);
    }

    static int e(List<Integer> list) {
        int i = 0;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof abe)) {
            int iF = 0;
            for (int i2 = 0; i2 < size; i2++) {
                iF += aaj.f(list.get(i2).intValue());
            }
            return iF;
        }
        abe abeVar = (abe) list;
        int i3 = 0;
        while (i3 < size) {
            int iF2 = aaj.f(abeVar.b(i3)) + i;
            i3++;
            i = iF2;
        }
        return i;
    }

    private static Class<?> e() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    public static void e(int i, List<Long> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.n(i, list, z);
    }

    static int f(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (size * aaj.e(i)) + f(list);
    }

    static int f(List<Integer> list) {
        int i = 0;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof abe)) {
            int iG = 0;
            for (int i2 = 0; i2 < size; i2++) {
                iG += aaj.g(list.get(i2).intValue());
            }
            return iG;
        }
        abe abeVar = (abe) list;
        int i3 = 0;
        while (i3 < size) {
            int iG2 = aaj.g(abeVar.b(i3)) + i;
            i3++;
            i = iG2;
        }
        return i;
    }

    public static void f(int i, List<Long> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.e(i, list, z);
    }

    static int g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (size * aaj.e(i)) + g(list);
    }

    static int g(List<Integer> list) {
        int i = 0;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof abe)) {
            int iH = 0;
            for (int i2 = 0; i2 < size; i2++) {
                iH += aaj.h(list.get(i2).intValue());
            }
            return iH;
        }
        abe abeVar = (abe) list;
        int i3 = 0;
        while (i3 < size) {
            int iH2 = aaj.h(abeVar.b(i3)) + i;
            i3++;
            i = iH2;
        }
        return i;
    }

    public static void g(int i, List<Long> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.l(i, list, z);
    }

    static int h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return aaj.i(i, 0) * size;
    }

    static int h(List<?> list) {
        return list.size() << 2;
    }

    public static void h(int i, List<Integer> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.a(i, list, z);
    }

    static int i(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * aaj.g(i, 0L);
    }

    static int i(List<?> list) {
        return list.size() << 3;
    }

    public static void i(int i, List<Integer> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.j(i, list, z);
    }

    static int j(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * aaj.b(i, true);
    }

    static int j(List<?> list) {
        return list.size();
    }

    public static void j(int i, List<Integer> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.m(i, list, z);
    }

    public static void k(int i, List<Integer> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.b(i, list, z);
    }

    public static void l(int i, List<Integer> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.k(i, list, z);
    }

    public static void m(int i, List<Integer> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.h(i, list, z);
    }

    public static void n(int i, List<Boolean> list, aeq aeqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        aeqVar.i(i, list, z);
    }
}
