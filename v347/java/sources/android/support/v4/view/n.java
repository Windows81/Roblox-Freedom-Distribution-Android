package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroup f1090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1091b;

    public n(ViewGroup viewGroup) {
        this.f1090a = viewGroup;
    }

    public void a(View view, View view2, int i) {
        a(view, view2, i, 0);
    }

    public void a(View view, View view2, int i, int i2) {
        this.f1091b = i;
    }

    public int a() {
        return this.f1091b;
    }

    public void a(View view) {
        a(view, 0);
    }

    public void a(View view, int i) {
        this.f1091b = 0;
    }
}
