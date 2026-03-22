package androidx.core.h;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroup f1488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1489b;

    public n(ViewGroup viewGroup) {
        this.f1488a = viewGroup;
    }

    public void a(View view, View view2, int i) {
        a(view, view2, i, 0);
    }

    public void a(View view, View view2, int i, int i2) {
        this.f1489b = i;
    }

    public int a() {
        return this.f1489b;
    }

    public void a(View view) {
        a(view, 0);
    }

    public void a(View view, int i) {
        this.f1489b = 0;
    }
}
