package androidx.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f1582a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f1583b = null;

    public static <T extends ViewDataBinding> T a(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z) {
        return (T) a(layoutInflater, i, viewGroup, z, f1583b);
    }

    public static <T extends ViewDataBinding> T a(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z, e eVar) {
        boolean z2 = viewGroup != null && z;
        int childCount = z2 ? viewGroup.getChildCount() : 0;
        View viewInflate = layoutInflater.inflate(i, viewGroup, z);
        if (z2) {
            return (T) a(eVar, viewGroup, childCount, i);
        }
        return (T) a(eVar, viewInflate, i);
    }

    static <T extends ViewDataBinding> T a(e eVar, View[] viewArr, int i) {
        return (T) f1582a.a(eVar, viewArr, i);
    }

    static <T extends ViewDataBinding> T a(e eVar, View view, int i) {
        return (T) f1582a.a(eVar, view, i);
    }

    private static <T extends ViewDataBinding> T a(e eVar, ViewGroup viewGroup, int i, int i2) {
        int childCount = viewGroup.getChildCount();
        int i3 = childCount - i;
        if (i3 == 1) {
            return (T) a(eVar, viewGroup.getChildAt(childCount - 1), i2);
        }
        View[] viewArr = new View[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4] = viewGroup.getChildAt(i4 + i);
        }
        return (T) a(eVar, viewArr, i2);
    }
}
