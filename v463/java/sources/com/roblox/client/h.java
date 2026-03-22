package com.roblox.client;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.roblox.client.o;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h extends androidx.databinding.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f6317a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(2);
        f6317a = sparseIntArray;
        sparseIntArray.put(o.g.nearby_user_item, 1);
        f6317a.put(o.g.phone_prefix_item, 2);
    }

    @Override // androidx.databinding.c
    public ViewDataBinding a(androidx.databinding.e eVar, View view, int i) {
        int i2 = f6317a.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        if (i2 == 1) {
            if ("layout/nearby_user_item_0".equals(tag)) {
                return new com.roblox.client.h.b(eVar, view);
            }
            throw new IllegalArgumentException("The tag for nearby_user_item is invalid. Received: " + tag);
        }
        if (i2 != 2) {
            return null;
        }
        if ("layout/phone_prefix_item_0".equals(tag)) {
            return new com.roblox.client.h.d(eVar, view);
        }
        throw new IllegalArgumentException("The tag for phone_prefix_item is invalid. Received: " + tag);
    }

    @Override // androidx.databinding.c
    public ViewDataBinding a(androidx.databinding.e eVar, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f6317a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.c
    public List<androidx.databinding.c> a() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.b.a.a());
        return arrayList;
    }
}
