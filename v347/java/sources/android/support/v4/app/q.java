package android.support.v4.app;

import android.graphics.Rect;
import android.os.Build;
import android.support.v4.app.c;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f755a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final s f756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final s f757c;

    static {
        f756b = Build.VERSION.SDK_INT >= 21 ? new r() : null;
        f757c = a();
    }

    private static s a() {
        try {
            return (s) Class.forName("android.support.transition.FragmentTransitionSupport").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    static void a(m mVar, ArrayList<c> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (mVar.l >= 1) {
            SparseArray sparseArray = new SparseArray();
            for (int i3 = i; i3 < i2; i3++) {
                c cVar = arrayList.get(i3);
                if (arrayList2.get(i3).booleanValue()) {
                    b(cVar, (SparseArray<a>) sparseArray, z);
                } else {
                    a(cVar, (SparseArray<a>) sparseArray, z);
                }
            }
            if (sparseArray.size() != 0) {
                View view = new View(mVar.m.i());
                int size = sparseArray.size();
                for (int i4 = 0; i4 < size; i4++) {
                    int iKeyAt = sparseArray.keyAt(i4);
                    android.support.v4.g.a<String, String> aVarA = a(iKeyAt, arrayList, arrayList2, i, i2);
                    a aVar = (a) sparseArray.valueAt(i4);
                    if (z) {
                        a(mVar, iKeyAt, aVar, view, aVarA);
                    } else {
                        b(mVar, iKeyAt, aVar, view, aVarA);
                    }
                }
            }
        }
    }

    private static android.support.v4.g.a<String, String> a(int i, ArrayList<c> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        android.support.v4.g.a<String, String> aVar = new android.support.v4.g.a<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            c cVar = arrayList.get(i4);
            if (cVar.b(i)) {
                boolean zBooleanValue = arrayList2.get(i4).booleanValue();
                if (cVar.r != null) {
                    int size = cVar.r.size();
                    if (zBooleanValue) {
                        arrayList3 = cVar.r;
                        arrayList4 = cVar.s;
                    } else {
                        ArrayList<String> arrayList5 = cVar.r;
                        arrayList3 = cVar.s;
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

    private static void a(m mVar, int i, a aVar, View view, android.support.v4.g.a<String, String> aVar2) {
        Fragment fragment;
        Fragment fragment2;
        s sVarA;
        ViewGroup viewGroup = null;
        if (mVar.n.a()) {
            viewGroup = (ViewGroup) mVar.n.a(i);
        }
        if (viewGroup != null && (sVarA = a((fragment2 = aVar.f774d), (fragment = aVar.f771a))) != null) {
            boolean z = aVar.f772b;
            boolean z2 = aVar.e;
            ArrayList<View> arrayList = new ArrayList<>();
            ArrayList<View> arrayList2 = new ArrayList<>();
            Object objA = a(sVarA, fragment, z);
            Object objB = b(sVarA, fragment2, z2);
            Object objA2 = a(sVarA, viewGroup, view, aVar2, aVar, arrayList2, arrayList, objA, objB);
            if (objA != null || objA2 != null || objB != null) {
                ArrayList<View> arrayListB = b(sVarA, objB, fragment2, arrayList2, view);
                ArrayList<View> arrayListB2 = b(sVarA, objA, fragment, arrayList, view);
                b(arrayListB2, 4);
                Object objA3 = a(sVarA, objA, objB, objA2, fragment, z);
                if (objA3 != null) {
                    a(sVarA, objB, fragment2, arrayListB);
                    ArrayList<String> arrayListA = sVarA.a(arrayList);
                    sVarA.a(objA3, objA, arrayListB2, objB, arrayListB, objA2, arrayList);
                    sVarA.a(viewGroup, objA3);
                    sVarA.a(viewGroup, arrayList2, arrayList, arrayListA, aVar2);
                    b(arrayListB2, 0);
                    sVarA.a(objA2, arrayList2, arrayList);
                }
            }
        }
    }

    private static void a(s sVar, Object obj, Fragment fragment, final ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.mAdded && fragment.mHidden && fragment.mHiddenChanged) {
            fragment.setHideReplaced(true);
            sVar.b(obj, fragment.getView(), arrayList);
            ad.a(fragment.mContainer, new Runnable() { // from class: android.support.v4.app.q.1
                @Override // java.lang.Runnable
                public void run() {
                    q.b(arrayList, 4);
                }
            });
        }
    }

    private static void b(m mVar, int i, a aVar, View view, android.support.v4.g.a<String, String> aVar2) {
        Fragment fragment;
        Fragment fragment2;
        s sVarA;
        ViewGroup viewGroup = null;
        if (mVar.n.a()) {
            viewGroup = (ViewGroup) mVar.n.a(i);
        }
        if (viewGroup != null && (sVarA = a((fragment2 = aVar.f774d), (fragment = aVar.f771a))) != null) {
            boolean z = aVar.f772b;
            boolean z2 = aVar.e;
            Object objA = a(sVarA, fragment, z);
            Object objB = b(sVarA, fragment2, z2);
            ArrayList arrayList = new ArrayList();
            ArrayList<View> arrayList2 = new ArrayList<>();
            Object objB2 = b(sVarA, viewGroup, view, aVar2, aVar, arrayList, arrayList2, objA, objB);
            if (objA != null || objB2 != null || objB != null) {
                ArrayList<View> arrayListB = b(sVarA, objB, fragment2, (ArrayList<View>) arrayList, view);
                Object obj = (arrayListB == null || arrayListB.isEmpty()) ? null : objB;
                sVarA.b(objA, view);
                Object objA2 = a(sVarA, objA, obj, objB2, fragment, aVar.f772b);
                if (objA2 != null) {
                    ArrayList<View> arrayList3 = new ArrayList<>();
                    sVarA.a(objA2, objA, arrayList3, obj, arrayListB, objB2, arrayList2);
                    a(sVarA, viewGroup, fragment, view, arrayList2, objA, arrayList3, obj, arrayListB);
                    sVarA.a((View) viewGroup, arrayList2, (Map<String, String>) aVar2);
                    sVarA.a(viewGroup, objA2);
                    sVarA.a(viewGroup, arrayList2, (Map<String, String>) aVar2);
                }
            }
        }
    }

    private static void a(final s sVar, ViewGroup viewGroup, final Fragment fragment, final View view, final ArrayList<View> arrayList, final Object obj, final ArrayList<View> arrayList2, final Object obj2, final ArrayList<View> arrayList3) {
        ad.a(viewGroup, new Runnable() { // from class: android.support.v4.app.q.2
            @Override // java.lang.Runnable
            public void run() {
                if (obj != null) {
                    sVar.c(obj, view);
                    arrayList2.addAll(q.b(sVar, obj, fragment, (ArrayList<View>) arrayList, view));
                }
                if (arrayList3 != null) {
                    if (obj2 != null) {
                        ArrayList<View> arrayList4 = new ArrayList<>();
                        arrayList4.add(view);
                        sVar.b(obj2, arrayList3, arrayList4);
                    }
                    arrayList3.clear();
                    arrayList3.add(view);
                }
            }
        });
    }

    private static s a(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        if (f756b != null && a(f756b, arrayList)) {
            return f756b;
        }
        if (f757c != null && a(f757c, arrayList)) {
            return f757c;
        }
        if (f756b == null && f757c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    private static boolean a(s sVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!sVar.a(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static Object a(s sVar, Fragment fragment, Fragment fragment2, boolean z) {
        Object sharedElementEnterTransition;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        if (z) {
            sharedElementEnterTransition = fragment2.getSharedElementReturnTransition();
        } else {
            sharedElementEnterTransition = fragment.getSharedElementEnterTransition();
        }
        return sVar.c(sVar.b(sharedElementEnterTransition));
    }

    private static Object a(s sVar, Fragment fragment, boolean z) {
        Object enterTransition;
        if (fragment == null) {
            return null;
        }
        if (z) {
            enterTransition = fragment.getReenterTransition();
        } else {
            enterTransition = fragment.getEnterTransition();
        }
        return sVar.b(enterTransition);
    }

    private static Object b(s sVar, Fragment fragment, boolean z) {
        Object exitTransition;
        if (fragment == null) {
            return null;
        }
        if (z) {
            exitTransition = fragment.getReturnTransition();
        } else {
            exitTransition = fragment.getExitTransition();
        }
        return sVar.b(exitTransition);
    }

    private static Object a(final s sVar, ViewGroup viewGroup, View view, android.support.v4.g.a<String, String> aVar, a aVar2, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        final Rect rect;
        final View viewB;
        final Fragment fragment = aVar2.f771a;
        final Fragment fragment2 = aVar2.f774d;
        if (fragment != null) {
            fragment.getView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z = aVar2.f772b;
        Object objA = aVar.isEmpty() ? null : a(sVar, fragment, fragment2, z);
        android.support.v4.g.a<String, View> aVarB = b(sVar, aVar, objA, aVar2);
        final android.support.v4.g.a<String, View> aVarC = c(sVar, aVar, objA, aVar2);
        if (aVar.isEmpty()) {
            obj3 = null;
            if (aVarB != null) {
                aVarB.clear();
            }
            if (aVarC != null) {
                aVarC.clear();
            }
        } else {
            a(arrayList, aVarB, aVar.keySet());
            a(arrayList2, aVarC, aVar.values());
            obj3 = objA;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        b(fragment, fragment2, z, aVarB, true);
        if (obj3 != null) {
            arrayList2.add(view);
            sVar.a(obj3, view, arrayList);
            a(sVar, obj3, obj2, aVarB, aVar2.e, aVar2.f);
            rect = new Rect();
            viewB = b(aVarC, aVar2, obj, z);
            if (viewB != null) {
                sVar.a(obj, rect);
            }
        } else {
            rect = null;
            viewB = null;
        }
        ad.a(viewGroup, new Runnable() { // from class: android.support.v4.app.q.3
            @Override // java.lang.Runnable
            public void run() {
                q.b(fragment, fragment2, z, (android.support.v4.g.a<String, View>) aVarC, false);
                if (viewB != null) {
                    sVar.a(viewB, rect);
                }
            }
        });
        return obj3;
    }

    private static void a(ArrayList<View> arrayList, android.support.v4.g.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewC = aVar.c(size);
            if (collection.contains(android.support.v4.view.s.l(viewC))) {
                arrayList.add(viewC);
            }
        }
    }

    private static Object b(final s sVar, ViewGroup viewGroup, final View view, final android.support.v4.g.a<String, String> aVar, final a aVar2, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final Object obj, Object obj2) {
        Object obj3;
        final Rect rect;
        final Fragment fragment = aVar2.f771a;
        final Fragment fragment2 = aVar2.f774d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z = aVar2.f772b;
        Object objA = aVar.isEmpty() ? null : a(sVar, fragment, fragment2, z);
        android.support.v4.g.a<String, View> aVarB = b(sVar, aVar, objA, aVar2);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(aVarB.values());
            obj3 = objA;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        b(fragment, fragment2, z, aVarB, true);
        if (obj3 != null) {
            rect = new Rect();
            sVar.a(obj3, view, arrayList);
            a(sVar, obj3, obj2, aVarB, aVar2.e, aVar2.f);
            if (obj != null) {
                sVar.a(obj, rect);
            }
        } else {
            rect = null;
        }
        final Object obj4 = obj3;
        ad.a(viewGroup, new Runnable() { // from class: android.support.v4.app.q.4
            @Override // java.lang.Runnable
            public void run() {
                android.support.v4.g.a aVarC = q.c(sVar, aVar, obj4, aVar2);
                if (aVarC != null) {
                    arrayList2.addAll(aVarC.values());
                    arrayList2.add(view);
                }
                q.b(fragment, fragment2, z, (android.support.v4.g.a<String, View>) aVarC, false);
                if (obj4 != null) {
                    sVar.a(obj4, arrayList, arrayList2);
                    View viewB = q.b((android.support.v4.g.a<String, View>) aVarC, aVar2, obj, z);
                    if (viewB != null) {
                        sVar.a(viewB, rect);
                    }
                }
            }
        });
        return obj3;
    }

    private static android.support.v4.g.a<String, View> b(s sVar, android.support.v4.g.a<String, String> aVar, Object obj, a aVar2) {
        ArrayList<String> arrayList;
        ag agVar;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = aVar2.f774d;
        android.support.v4.g.a<String, View> aVar3 = new android.support.v4.g.a<>();
        sVar.a((Map<String, View>) aVar3, fragment.getView());
        c cVar = aVar2.f;
        if (aVar2.e) {
            ag enterTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = cVar.s;
            agVar = enterTransitionCallback;
        } else {
            ag exitTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = cVar.r;
            agVar = exitTransitionCallback;
        }
        aVar3.a((Collection<?>) arrayList);
        if (agVar != null) {
            agVar.a(arrayList, aVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar3.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(android.support.v4.view.s.l(view))) {
                    aVar.put(android.support.v4.view.s.l(view), aVar.remove(str));
                }
            }
        } else {
            aVar.a((Collection<?>) aVar3.keySet());
        }
        return aVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static android.support.v4.g.a<String, View> c(s sVar, android.support.v4.g.a<String, String> aVar, Object obj, a aVar2) {
        ArrayList<String> arrayList;
        ag agVar;
        String strA;
        Fragment fragment = aVar2.f771a;
        View view = fragment.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        android.support.v4.g.a<String, View> aVar3 = new android.support.v4.g.a<>();
        sVar.a((Map<String, View>) aVar3, view);
        c cVar = aVar2.f773c;
        if (aVar2.f772b) {
            ag exitTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = cVar.r;
            agVar = exitTransitionCallback;
        } else {
            ag enterTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = cVar.s;
            agVar = enterTransitionCallback;
        }
        if (arrayList != null) {
            aVar3.a((Collection<?>) arrayList);
        }
        if (agVar != null) {
            agVar.a(arrayList, aVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = aVar3.get(str);
                if (view2 == null) {
                    String strA2 = a(aVar, str);
                    if (strA2 != null) {
                        aVar.remove(strA2);
                    }
                } else if (!str.equals(android.support.v4.view.s.l(view2)) && (strA = a(aVar, str)) != null) {
                    aVar.put(strA, android.support.v4.view.s.l(view2));
                }
            }
        } else {
            a(aVar, aVar3);
        }
        return aVar3;
    }

    private static String a(android.support.v4.g.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.c(i))) {
                return aVar.b(i);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static View b(android.support.v4.g.a<String, View> aVar, a aVar2, Object obj, boolean z) {
        String str;
        c cVar = aVar2.f773c;
        if (obj != null && aVar != null && cVar.r != null && !cVar.r.isEmpty()) {
            if (z) {
                str = cVar.r.get(0);
            } else {
                str = cVar.s.get(0);
            }
            return aVar.get(str);
        }
        return null;
    }

    private static void a(s sVar, Object obj, Object obj2, android.support.v4.g.a<String, View> aVar, boolean z, c cVar) {
        String str;
        if (cVar.r != null && !cVar.r.isEmpty()) {
            if (z) {
                str = cVar.s.get(0);
            } else {
                str = cVar.r.get(0);
            }
            View view = aVar.get(str);
            sVar.a(obj, view);
            if (obj2 != null) {
                sVar.a(obj2, view);
            }
        }
    }

    private static void a(android.support.v4.g.a<String, String> aVar, android.support.v4.g.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.c(size))) {
                aVar.d(size);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Fragment fragment, Fragment fragment2, boolean z, android.support.v4.g.a<String, View> aVar, boolean z2) {
        ag enterTransitionCallback;
        if (z) {
            enterTransitionCallback = fragment2.getEnterTransitionCallback();
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
        }
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.b(i));
                arrayList.add(aVar.c(i));
            }
            if (z2) {
                enterTransitionCallback.a(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.b(arrayList2, arrayList, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ArrayList<View> b(s sVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2 = null;
        if (obj != null) {
            arrayList2 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                sVar.a(arrayList2, view2);
            }
            if (arrayList != null) {
                arrayList2.removeAll(arrayList);
            }
            if (!arrayList2.isEmpty()) {
                arrayList2.add(view);
                sVar.a(obj, arrayList2);
            }
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ArrayList<View> arrayList, int i) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).setVisibility(i);
            }
        }
    }

    private static Object a(s sVar, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        boolean allowReturnTransitionOverlap = true;
        if (obj != null && obj2 != null && fragment != null) {
            allowReturnTransitionOverlap = z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap();
        }
        if (allowReturnTransitionOverlap) {
            return sVar.a(obj2, obj, obj3);
        }
        return sVar.b(obj2, obj, obj3);
    }

    public static void a(c cVar, SparseArray<a> sparseArray, boolean z) {
        int size = cVar.f692b.size();
        for (int i = 0; i < size; i++) {
            a(cVar, cVar.f692b.get(i), sparseArray, false, z);
        }
    }

    public static void b(c cVar, SparseArray<a> sparseArray, boolean z) {
        if (cVar.f691a.n.a()) {
            for (int size = cVar.f692b.size() - 1; size >= 0; size--) {
                a(cVar, cVar.f692b.get(size), sparseArray, true, z);
            }
        }
    }

    private static void a(c cVar, c.a aVar, SparseArray<a> sparseArray, boolean z, boolean z2) {
        int i;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        a aVarA;
        a aVarA2;
        Fragment fragment = aVar.f696b;
        if (fragment != null && (i = fragment.mContainerId) != 0) {
            switch (z ? f755a[aVar.f695a] : aVar.f695a) {
                case 1:
                case 7:
                    if (z2) {
                        z9 = fragment.mIsNewlyAdded;
                    } else {
                        z9 = (fragment.mAdded || fragment.mHidden) ? false : true;
                    }
                    z4 = true;
                    z5 = false;
                    z6 = false;
                    z7 = z9;
                    break;
                case 2:
                default:
                    z4 = false;
                    z5 = false;
                    z6 = false;
                    z7 = false;
                    break;
                case 3:
                case 6:
                    if (z2) {
                        z3 = !fragment.mAdded && fragment.mView != null && fragment.mView.getVisibility() == 0 && fragment.mPostponedAlpha >= 0.0f;
                    } else {
                        z3 = fragment.mAdded && !fragment.mHidden;
                    }
                    z4 = false;
                    z5 = z3;
                    z6 = true;
                    z7 = false;
                    break;
                case 4:
                    if (z2) {
                        z8 = fragment.mHiddenChanged && fragment.mAdded && fragment.mHidden;
                    } else {
                        z8 = fragment.mAdded && !fragment.mHidden;
                    }
                    z4 = false;
                    z5 = z8;
                    z6 = true;
                    z7 = false;
                    break;
                case 5:
                    if (z2) {
                        z10 = fragment.mHiddenChanged && !fragment.mHidden && fragment.mAdded;
                    } else {
                        z10 = fragment.mHidden;
                    }
                    z4 = true;
                    z5 = false;
                    z6 = false;
                    z7 = z10;
                    break;
            }
            a aVar2 = sparseArray.get(i);
            if (z7) {
                aVarA = a(aVar2, sparseArray, i);
                aVarA.f771a = fragment;
                aVarA.f772b = z;
                aVarA.f773c = cVar;
            } else {
                aVarA = aVar2;
            }
            if (!z2 && z4) {
                if (aVarA != null && aVarA.f774d == fragment) {
                    aVarA.f774d = null;
                }
                m mVar = cVar.f691a;
                if (fragment.mState < 1 && mVar.l >= 1 && !cVar.t) {
                    mVar.g(fragment);
                    mVar.a(fragment, 1, 0, 0, false);
                }
            }
            if (z5 && (aVarA == null || aVarA.f774d == null)) {
                aVarA2 = a(aVarA, sparseArray, i);
                aVarA2.f774d = fragment;
                aVarA2.e = z;
                aVarA2.f = cVar;
            } else {
                aVarA2 = aVarA;
            }
            if (!z2 && z6 && aVarA2 != null && aVarA2.f771a == fragment) {
                aVarA2.f771a = null;
            }
        }
    }

    private static a a(a aVar, SparseArray<a> sparseArray, int i) {
        if (aVar == null) {
            a aVar2 = new a();
            sparseArray.put(i, aVar2);
            return aVar2;
        }
        return aVar;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Fragment f771a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f772b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public c f773c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Fragment f774d;
        public boolean e;
        public c f;

        a() {
        }
    }
}
