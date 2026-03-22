package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class abw extends abu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f3778a = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private abw() {
        super();
    }

    private static <L> List<L> a(Object obj, long j, int i) {
        List<L> listC = c(obj, j);
        if (listC.isEmpty()) {
            List<L> absVar = listC instanceof abt ? new abs(i) : new ArrayList<>(i);
            aec.a(obj, j, absVar);
            return absVar;
        }
        if (f3778a.isAssignableFrom(listC.getClass())) {
            ArrayList arrayList = new ArrayList(listC.size() + i);
            arrayList.addAll(listC);
            aec.a(obj, j, arrayList);
            return arrayList;
        }
        if (!(listC instanceof adz)) {
            return listC;
        }
        abs absVar2 = new abs(listC.size() + i);
        absVar2.addAll((adz) listC);
        aec.a(obj, j, absVar2);
        return absVar2;
    }

    private static <E> List<E> c(Object obj, long j) {
        return (List) aec.f(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.abu
    final <L> List<L> a(Object obj, long j) {
        return a(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.abu
    final <E> void a(Object obj, Object obj2, long j) {
        List listC = c(obj2, j);
        List listA = a(obj, j, listC.size());
        int size = listA.size();
        int size2 = listC.size();
        if (size > 0 && size2 > 0) {
            listA.addAll(listC);
        }
        if (size <= 0) {
            listA = listC;
        }
        aec.a(obj, j, listA);
    }

    @Override // com.google.android.gms.internal.ads.abu
    final void b(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) aec.f(obj, j);
        if (list instanceof abt) {
            objUnmodifiableList = ((abt) list).e();
        } else if (f3778a.isAssignableFrom(list.getClass())) {
            return;
        } else {
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        aec.a(obj, j, objUnmodifiableList);
    }
}
