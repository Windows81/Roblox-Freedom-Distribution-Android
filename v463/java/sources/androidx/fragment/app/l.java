package androidx.fragment.app;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.h.r;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f1730a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final n f1731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final n f1732c;

    static {
        f1731b = Build.VERSION.SDK_INT >= 21 ? new m() : null;
        f1732c = a();
    }

    private static n a() {
        try {
            return (n) Class.forName("androidx.k.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    static void a(h hVar, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (hVar.l < 1) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (int i3 = i; i3 < i2; i3++) {
            androidx.fragment.app.a aVar = arrayList.get(i3);
            if (arrayList2.get(i3).booleanValue()) {
                b(aVar, (SparseArray<a>) sparseArray, z);
            } else {
                a(aVar, (SparseArray<a>) sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(hVar.m.g());
            int size = sparseArray.size();
            for (int i4 = 0; i4 < size; i4++) {
                int iKeyAt = sparseArray.keyAt(i4);
                androidx.c.a<String, String> aVarA = a(iKeyAt, arrayList, arrayList2, i, i2);
                a aVar2 = (a) sparseArray.valueAt(i4);
                if (z) {
                    a(hVar, iKeyAt, aVar2, view, aVarA);
                } else {
                    b(hVar, iKeyAt, aVar2, view, aVarA);
                }
            }
        }
    }

    private static androidx.c.a<String, String> a(int i, ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        androidx.c.a<String, String> aVar = new androidx.c.a<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            androidx.fragment.app.a aVar2 = arrayList.get(i4);
            if (aVar2.b(i)) {
                boolean zBooleanValue = arrayList2.get(i4).booleanValue();
                if (aVar2.r != null) {
                    int size = aVar2.r.size();
                    if (zBooleanValue) {
                        arrayList3 = aVar2.r;
                        arrayList4 = aVar2.s;
                    } else {
                        ArrayList<String> arrayList5 = aVar2.r;
                        arrayList3 = aVar2.s;
                        arrayList4 = arrayList5;
                    }
                    for (int i5 = 0; i5 < size; i5++) {
                        String str = arrayList4.get(i5);
                        String str2 = arrayList3.get(i5);
                        String strRemove = aVar.remove(str2);
                        if (strRemove != null) {
                            aVar.put(str, strRemove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    private static void a(h hVar, int i, a aVar, View view, androidx.c.a<String, String> aVar2) {
        Fragment fragment;
        Fragment fragment2;
        n nVarA;
        Object obj;
        ViewGroup viewGroup = hVar.n.a() ? (ViewGroup) hVar.n.a(i) : null;
        if (viewGroup == null || (nVarA = a((fragment2 = aVar.f1752d), (fragment = aVar.f1749a))) == null) {
            return;
        }
        boolean z = aVar.f1750b;
        boolean z2 = aVar.f1753e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objA = a(nVarA, fragment, z);
        Object objB = b(nVarA, fragment2, z2);
        Object objA2 = a(nVarA, viewGroup, view, aVar2, aVar, arrayList2, arrayList, objA, objB);
        if (objA == null && objA2 == null) {
            obj = objB;
            if (obj == null) {
                return;
            }
        } else {
            obj = objB;
        }
        ArrayList<View> arrayListA = a(nVarA, obj, fragment2, arrayList2, view);
        ArrayList<View> arrayListA2 = a(nVarA, objA, fragment, arrayList, view);
        a(arrayListA2, 4);
        Object objA3 = a(nVarA, objA, obj, objA2, fragment, z);
        if (objA3 != null) {
            a(nVarA, obj, fragment2, arrayListA);
            ArrayList<String> arrayListA3 = nVarA.a(arrayList);
            nVarA.a(objA3, objA, arrayListA2, obj, arrayListA, objA2, arrayList);
            nVarA.a(viewGroup, objA3);
            nVarA.a(viewGroup, arrayList2, arrayList, arrayListA3, aVar2);
            a(arrayListA2, 0);
            nVarA.a(objA2, arrayList2, arrayList);
        }
    }

    private static void a(n nVar, Object obj, Fragment fragment, final ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.u && fragment.K && fragment.Y) {
            fragment.l(true);
            nVar.b(obj, fragment.E(), arrayList);
            o.a(fragment.R, new Runnable() { // from class: androidx.fragment.app.l.1
                @Override // java.lang.Runnable
                public void run() {
                    l.a((ArrayList<View>) arrayList, 4);
                }
            });
        }
    }

    private static void b(h hVar, int i, a aVar, View view, androidx.c.a<String, String> aVar2) {
        Fragment fragment;
        Fragment fragment2;
        n nVarA;
        Object obj;
        ViewGroup viewGroup = hVar.n.a() ? (ViewGroup) hVar.n.a(i) : null;
        if (viewGroup == null || (nVarA = a((fragment2 = aVar.f1752d), (fragment = aVar.f1749a))) == null) {
            return;
        }
        boolean z = aVar.f1750b;
        boolean z2 = aVar.f1753e;
        Object objA = a(nVarA, fragment, z);
        Object objB = b(nVarA, fragment2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objB2 = b(nVarA, viewGroup, view, aVar2, aVar, arrayList, arrayList2, objA, objB);
        if (objA == null && objB2 == null) {
            obj = objB;
            if (obj == null) {
                return;
            }
        } else {
            obj = objB;
        }
        ArrayList<View> arrayListA = a(nVarA, obj, fragment2, (ArrayList<View>) arrayList, view);
        Object obj2 = (arrayListA == null || arrayListA.isEmpty()) ? null : obj;
        nVarA.b(objA, view);
        Object objA2 = a(nVarA, objA, obj2, objB2, fragment, aVar.f1750b);
        if (objA2 != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            nVarA.a(objA2, objA, arrayList3, obj2, arrayListA, objB2, arrayList2);
            a(nVarA, viewGroup, fragment, view, arrayList2, objA, arrayList3, obj2, arrayListA);
            nVarA.a((View) viewGroup, arrayList2, (Map<String, String>) aVar2);
            nVarA.a(viewGroup, objA2);
            nVarA.a(viewGroup, arrayList2, (Map<String, String>) aVar2);
        }
    }

    private static void a(final n nVar, ViewGroup viewGroup, final Fragment fragment, final View view, final ArrayList<View> arrayList, final Object obj, final ArrayList<View> arrayList2, final Object obj2, final ArrayList<View> arrayList3) {
        o.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.l.2
            @Override // java.lang.Runnable
            public void run() {
                Object obj3 = obj;
                if (obj3 != null) {
                    nVar.c(obj3, view);
                    arrayList2.addAll(l.a(nVar, obj, fragment, (ArrayList<View>) arrayList, view));
                }
                if (arrayList3 != null) {
                    if (obj2 != null) {
                        ArrayList<View> arrayList4 = new ArrayList<>();
                        arrayList4.add(view);
                        nVar.b(obj2, arrayList3, arrayList4);
                    }
                    arrayList3.clear();
                    arrayList3.add(view);
                }
            }
        });
    }

    private static n a(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object objM = fragment.M();
            if (objM != null) {
                arrayList.add(objM);
            }
            Object objL = fragment.L();
            if (objL != null) {
                arrayList.add(objL);
            }
            Object objP = fragment.P();
            if (objP != null) {
                arrayList.add(objP);
            }
        }
        if (fragment2 != null) {
            Object objK = fragment2.K();
            if (objK != null) {
                arrayList.add(objK);
            }
            Object objN = fragment2.N();
            if (objN != null) {
                arrayList.add(objN);
            }
            Object objO = fragment2.O();
            if (objO != null) {
                arrayList.add(objO);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        n nVar = f1731b;
        if (nVar != null && a(nVar, arrayList)) {
            return f1731b;
        }
        n nVar2 = f1732c;
        if (nVar2 != null && a(nVar2, arrayList)) {
            return f1732c;
        }
        if (f1731b == null && f1732c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    private static boolean a(n nVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!nVar.a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static Object a(n nVar, Fragment fragment, Fragment fragment2, boolean z) {
        Object objO;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        if (z) {
            objO = fragment2.P();
        } else {
            objO = fragment.O();
        }
        return nVar.c(nVar.b(objO));
    }

    private static Object a(n nVar, Fragment fragment, boolean z) {
        Object objK;
        if (fragment == null) {
            return null;
        }
        if (z) {
            objK = fragment.N();
        } else {
            objK = fragment.K();
        }
        return nVar.b(objK);
    }

    private static Object b(n nVar, Fragment fragment, boolean z) {
        Object objM;
        if (fragment == null) {
            return null;
        }
        if (z) {
            objM = fragment.L();
        } else {
            objM = fragment.M();
        }
        return nVar.b(objM);
    }

    private static Object a(final n nVar, ViewGroup viewGroup, View view, androidx.c.a<String, String> aVar, a aVar2, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        final View view2;
        final Rect rect;
        final Fragment fragment = aVar2.f1749a;
        final Fragment fragment2 = aVar2.f1752d;
        if (fragment != null) {
            fragment.E().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z = aVar2.f1750b;
        Object objA = aVar.isEmpty() ? null : a(nVar, fragment, fragment2, z);
        androidx.c.a<String, View> aVarB = b(nVar, aVar, objA, aVar2);
        final androidx.c.a<String, View> aVarA = a(nVar, aVar, objA, aVar2);
        if (aVar.isEmpty()) {
            if (aVarB != null) {
                aVarB.clear();
            }
            if (aVarA != null) {
                aVarA.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, aVarB, aVar.keySet());
            a(arrayList2, aVarA, aVar.values());
            obj3 = objA;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(fragment, fragment2, z, aVarB, true);
        if (obj3 != null) {
            arrayList2.add(view);
            nVar.a(obj3, view, arrayList);
            a(nVar, obj3, obj2, aVarB, aVar2.f1753e, aVar2.f);
            Rect rect2 = new Rect();
            View viewA = a(aVarA, aVar2, obj, z);
            if (viewA != null) {
                nVar.a(obj, rect2);
            }
            rect = rect2;
            view2 = viewA;
        } else {
            view2 = null;
            rect = null;
        }
        o.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.l.3
            @Override // java.lang.Runnable
            public void run() {
                l.a(fragment, fragment2, z, (androidx.c.a<String, View>) aVarA, false);
                View view3 = view2;
                if (view3 != null) {
                    nVar.a(view3, rect);
                }
            }
        });
        return obj3;
    }

    private static void a(ArrayList<View> arrayList, androidx.c.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewC = aVar.c(size);
            if (collection.contains(r.m(viewC))) {
                arrayList.add(viewC);
            }
        }
    }

    private static Object b(final n nVar, ViewGroup viewGroup, final View view, final androidx.c.a<String, String> aVar, final a aVar2, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final Object obj, Object obj2) {
        Object objA;
        androidx.c.a<String, String> aVar3;
        Object obj3;
        Rect rect;
        final Fragment fragment = aVar2.f1749a;
        final Fragment fragment2 = aVar2.f1752d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z = aVar2.f1750b;
        if (aVar.isEmpty()) {
            aVar3 = aVar;
            objA = null;
        } else {
            objA = a(nVar, fragment, fragment2, z);
            aVar3 = aVar;
        }
        androidx.c.a<String, View> aVarB = b(nVar, aVar3, objA, aVar2);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(aVarB.values());
            obj3 = objA;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(fragment, fragment2, z, aVarB, true);
        if (obj3 != null) {
            rect = new Rect();
            nVar.a(obj3, view, arrayList);
            a(nVar, obj3, obj2, aVarB, aVar2.f1753e, aVar2.f);
            if (obj != null) {
                nVar.a(obj, rect);
            }
        } else {
            rect = null;
        }
        final Object obj4 = obj3;
        final Rect rect2 = rect;
        o.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.l.4
            @Override // java.lang.Runnable
            public void run() {
                androidx.c.a<String, View> aVarA = l.a(nVar, (androidx.c.a<String, String>) aVar, obj4, aVar2);
                if (aVarA != null) {
                    arrayList2.addAll(aVarA.values());
                    arrayList2.add(view);
                }
                l.a(fragment, fragment2, z, aVarA, false);
                Object obj5 = obj4;
                if (obj5 != null) {
                    nVar.a(obj5, arrayList, arrayList2);
                    View viewA = l.a(aVarA, aVar2, obj, z);
                    if (viewA != null) {
                        nVar.a(viewA, rect2);
                    }
                }
            }
        });
        return obj3;
    }

    private static androidx.c.a<String, View> b(n nVar, androidx.c.a<String, String> aVar, Object obj, a aVar2) {
        androidx.core.app.n nVarAi;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = aVar2.f1752d;
        androidx.c.a<String, View> aVar3 = new androidx.c.a<>();
        nVar.a((Map<String, View>) aVar3, fragment.E());
        androidx.fragment.app.a aVar4 = aVar2.f;
        if (aVar2.f1753e) {
            nVarAi = fragment.ah();
            arrayList = aVar4.s;
        } else {
            nVarAi = fragment.ai();
            arrayList = aVar4.r;
        }
        aVar3.a((Collection<?>) arrayList);
        if (nVarAi != null) {
            nVarAi.a(arrayList, aVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar3.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(r.m(view))) {
                    aVar.put(r.m(view), aVar.remove(str));
                }
            }
        } else {
            aVar.a((Collection<?>) aVar3.keySet());
        }
        return aVar3;
    }

    static androidx.c.a<String, View> a(n nVar, androidx.c.a<String, String> aVar, Object obj, a aVar2) {
        androidx.core.app.n nVarAh;
        ArrayList<String> arrayList;
        String strA;
        Fragment fragment = aVar2.f1749a;
        View viewE = fragment.E();
        if (aVar.isEmpty() || obj == null || viewE == null) {
            aVar.clear();
            return null;
        }
        androidx.c.a<String, View> aVar3 = new androidx.c.a<>();
        nVar.a((Map<String, View>) aVar3, viewE);
        androidx.fragment.app.a aVar4 = aVar2.f1751c;
        if (aVar2.f1750b) {
            nVarAh = fragment.ai();
            arrayList = aVar4.r;
        } else {
            nVarAh = fragment.ah();
            arrayList = aVar4.s;
        }
        if (arrayList != null) {
            aVar3.a((Collection<?>) arrayList);
            aVar3.a((Collection<?>) aVar.values());
        }
        if (nVarAh != null) {
            nVarAh.a(arrayList, aVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar3.get(str);
                if (view == null) {
                    String strA2 = a(aVar, str);
                    if (strA2 != null) {
                        aVar.remove(strA2);
                    }
                } else if (!str.equals(r.m(view)) && (strA = a(aVar, str)) != null) {
                    aVar.put(strA, r.m(view));
                }
            }
        } else {
            a(aVar, aVar3);
        }
        return aVar3;
    }

    private static String a(androidx.c.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.c(i))) {
                return aVar.b(i);
            }
        }
        return null;
    }

    static View a(androidx.c.a<String, View> aVar, a aVar2, Object obj, boolean z) {
        String str;
        androidx.fragment.app.a aVar3 = aVar2.f1751c;
        if (obj == null || aVar == null || aVar3.r == null || aVar3.r.isEmpty()) {
            return null;
        }
        if (z) {
            str = aVar3.r.get(0);
        } else {
            str = aVar3.s.get(0);
        }
        return aVar.get(str);
    }

    private static void a(n nVar, Object obj, Object obj2, androidx.c.a<String, View> aVar, boolean z, androidx.fragment.app.a aVar2) {
        String str;
        if (aVar2.r == null || aVar2.r.isEmpty()) {
            return;
        }
        if (z) {
            str = aVar2.s.get(0);
        } else {
            str = aVar2.r.get(0);
        }
        View view = aVar.get(str);
        nVar.a(obj, view);
        if (obj2 != null) {
            nVar.a(obj2, view);
        }
    }

    private static void a(androidx.c.a<String, String> aVar, androidx.c.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.c(size))) {
                aVar.d(size);
            }
        }
    }

    static void a(Fragment fragment, Fragment fragment2, boolean z, androidx.c.a<String, View> aVar, boolean z2) {
        androidx.core.app.n nVarAh;
        if (z) {
            nVarAh = fragment2.ah();
        } else {
            nVarAh = fragment.ah();
        }
        if (nVarAh != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.b(i));
                arrayList.add(aVar.c(i));
            }
            if (z2) {
                nVarAh.a(arrayList2, arrayList, null);
            } else {
                nVarAh.b(arrayList2, arrayList, null);
            }
        }
    }

    static ArrayList<View> a(n nVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View viewE = fragment.E();
        if (viewE != null) {
            nVar.a(arrayList2, viewE);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        nVar.a(obj, arrayList2);
        return arrayList2;
    }

    static void a(ArrayList<View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    private static Object a(n nVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        boolean zQ;
        if (obj == null || obj2 == null || fragment == null) {
            zQ = true;
        } else if (z) {
            zQ = fragment.R();
        } else {
            zQ = fragment.Q();
        }
        if (zQ) {
            return nVar.a(obj2, obj, obj3);
        }
        return nVar.b(obj2, obj, obj3);
    }

    public static void a(androidx.fragment.app.a aVar, SparseArray<a> sparseArray, boolean z) {
        int size = aVar.f1653b.size();
        for (int i = 0; i < size; i++) {
            a(aVar, aVar.f1653b.get(i), sparseArray, false, z);
        }
    }

    public static void b(androidx.fragment.app.a aVar, SparseArray<a> sparseArray, boolean z) {
        if (aVar.f1652a.n.a()) {
            for (int size = aVar.f1653b.size() - 1; size >= 0; size--) {
                a(aVar, aVar.f1653b.get(size), sparseArray, true, z);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(androidx.fragment.app.a r16, androidx.fragment.app.a.C0044a r17, android.util.SparseArray<androidx.fragment.app.l.a> r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.l.a(androidx.fragment.app.a, androidx.fragment.app.a$a, android.util.SparseArray, boolean, boolean):void");
    }

    private static a a(a aVar, SparseArray<a> sparseArray, int i) {
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        sparseArray.put(i, aVar2);
        return aVar2;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Fragment f1749a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1750b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public androidx.fragment.app.a f1751c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Fragment f1752d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f1753e;
        public androidx.fragment.app.a f;

        a() {
        }
    }
}
