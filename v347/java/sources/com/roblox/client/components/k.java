package com.roblox.client.components;

import android.util.SparseArray;
import android.widget.AbsListView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class k implements AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f6756b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6755a = "PageSyncScrollListener";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6757c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6758d = 1;
    private final int e = 2;
    private SparseArray<Integer> f = new SparseArray<>();

    public abstract void a(int i);

    public k(int i) {
        this.f6756b = i;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        int i4 = ((i + i2) / this.f6756b) + 1;
        for (int i5 = (i / this.f6756b) + 1; i5 <= i4; i5++) {
            c(i5);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    private void c(int i) {
        if (this.f.get(i, 0).intValue() == 0) {
            this.f.put(i, 1);
            a(i);
        }
    }

    public void a() {
        this.f.clear();
    }

    public void b(int i) {
        this.f.put(i, 2);
    }

    public int b() {
        return this.f.size();
    }

    public boolean c() {
        return this.f.indexOfValue(2) != -1;
    }
}
