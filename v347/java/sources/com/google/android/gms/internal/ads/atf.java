package com.google.android.gms.internal.ads;

import android.support.v7.widget.helper.ItemTouchHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class atf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f4476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, String> f4477c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<apn> f4478d;
    public final boolean e;
    private final long f;

    private atf(int i, byte[] bArr, Map<String, String> map, List<apn> list, boolean z, long j) {
        this.f4475a = i;
        this.f4476b = bArr;
        this.f4477c = map;
        if (list == null) {
            this.f4478d = null;
        } else {
            this.f4478d = Collections.unmodifiableList(list);
        }
        this.e = z;
        this.f = j;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public atf(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        List arrayList;
        if (map == null) {
            arrayList = null;
        } else if (map.isEmpty()) {
            arrayList = Collections.emptyList();
        } else {
            arrayList = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                arrayList.add(new apn(entry.getKey(), entry.getValue()));
            }
        }
        this(i, bArr, map, arrayList, z, j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public atf(int i, byte[] bArr, boolean z, long j, List<apn> list) {
        Map treeMap;
        if (list == null) {
            treeMap = null;
        } else if (list.isEmpty()) {
            treeMap = Collections.emptyMap();
        } else {
            treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (apn apnVar : list) {
                treeMap.put(apnVar.a(), apnVar.b());
            }
        }
        this(i, bArr, treeMap, list, z, j);
    }

    @Deprecated
    public atf(byte[] bArr, Map<String, String> map) {
        this(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, bArr, map, false, 0L);
    }
}
