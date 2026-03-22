package org.apmem.tools.layouts;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
import org.apmem.tools.layouts.FlowLayout;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8236d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<View> f8233a = new ArrayList();
    private int e = 0;
    private int f = 0;

    public b(int i) {
        this.f8234b = i;
    }

    public void a(View view) {
        a(this.f8233a.size(), view);
    }

    public void a(int i, View view) {
        FlowLayout.a aVar = (FlowLayout.a) view.getLayoutParams();
        this.f8233a.add(i, view);
        this.f8235c = this.f8235c + aVar.d() + aVar.g();
        this.f8236d = Math.max(this.f8236d, aVar.h() + aVar.e());
    }

    public boolean b(View view) {
        FlowLayout.a aVar = (FlowLayout.a) view.getLayoutParams();
        return aVar.g() + (this.f8235c + aVar.d()) <= this.f8234b;
    }

    public int a() {
        return this.e;
    }

    public void a(int i) {
        this.e = i;
    }

    public int b() {
        return this.f8236d;
    }

    public int c() {
        return this.f8235c;
    }

    public int d() {
        return this.f;
    }

    public void b(int i) {
        this.f = i;
    }

    public List<View> e() {
        return this.f8233a;
    }

    public void c(int i) {
        this.f8236d = i;
    }

    public void d(int i) {
        this.f8235c = i;
    }
}
