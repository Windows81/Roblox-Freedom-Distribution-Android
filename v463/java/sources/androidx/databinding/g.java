package androidx.databinding;

import android.util.Log;
import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Set<Class<? extends c>> f1584a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<c> f1585b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<String> f1586c = new CopyOnWriteArrayList();

    public void a(c cVar) {
        if (this.f1584a.add((Class<? extends c>) cVar.getClass())) {
            this.f1585b.add(cVar);
            Iterator<c> it = cVar.a().iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        }
    }

    @Override // androidx.databinding.c
    public ViewDataBinding a(e eVar, View view, int i) {
        Iterator<c> it = this.f1585b.iterator();
        while (it.hasNext()) {
            ViewDataBinding viewDataBindingA = it.next().a(eVar, view, i);
            if (viewDataBindingA != null) {
                return viewDataBindingA;
            }
        }
        if (b()) {
            return a(eVar, view, i);
        }
        return null;
    }

    @Override // androidx.databinding.c
    public ViewDataBinding a(e eVar, View[] viewArr, int i) {
        Iterator<c> it = this.f1585b.iterator();
        while (it.hasNext()) {
            ViewDataBinding viewDataBindingA = it.next().a(eVar, viewArr, i);
            if (viewDataBindingA != null) {
                return viewDataBindingA;
            }
        }
        if (b()) {
            return a(eVar, viewArr, i);
        }
        return null;
    }

    private boolean b() {
        boolean z = false;
        for (String str : this.f1586c) {
            try {
                Class<?> cls = Class.forName(str);
                if (c.class.isAssignableFrom(cls)) {
                    a((c) cls.newInstance());
                    this.f1586c.remove(str);
                    z = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException e2) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e2);
            } catch (InstantiationException e3) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e3);
            }
        }
        return z;
    }
}
