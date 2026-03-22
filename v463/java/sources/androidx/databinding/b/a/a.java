package androidx.databinding.b.a;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.c;
import androidx.databinding.e;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f1581a = new SparseIntArray(0);

    @Override // androidx.databinding.c
    public ViewDataBinding a(e eVar, View view, int i) {
        if (f1581a.get(i) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.c
    public ViewDataBinding a(e eVar, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f1581a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.c
    public List<c> a() {
        return new ArrayList(0);
    }
}
