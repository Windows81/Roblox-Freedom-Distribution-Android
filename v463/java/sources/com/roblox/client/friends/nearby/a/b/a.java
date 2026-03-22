package com.roblox.client.friends.nearby.a.b;

import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a<T, V extends ViewDataBinding> extends RecyclerView.a<b<V>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<T> f6124a = new ArrayList();

    protected abstract void a(V v, T t);

    protected abstract V b(ViewGroup viewGroup);

    protected a() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final b<V> a(ViewGroup viewGroup, int i) {
        return new b<>(b(viewGroup));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final void a(b<V> bVar, int i) {
        a(bVar.q, this.f6124a.get(i));
        bVar.q.a();
    }

    public void a(T t) {
        int iIndexOf;
        if (this.f6124a.size() != 0 && (iIndexOf = this.f6124a.indexOf(t)) >= 0) {
            this.f6124a.set(iIndexOf, t);
            c(iIndexOf);
        }
    }

    public void b(T t) {
        this.f6124a.add(t);
        d(this.f6124a.size() - 1);
    }

    public void c(T t) {
        int iIndexOf;
        if (this.f6124a.size() != 0 && (iIndexOf = this.f6124a.indexOf(t)) >= 0) {
            this.f6124a.remove(iIndexOf);
            c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int a() {
        List<T> list = this.f6124a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }
}
