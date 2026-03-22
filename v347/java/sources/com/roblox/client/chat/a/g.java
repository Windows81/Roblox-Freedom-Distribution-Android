package com.roblox.client.chat.a;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class g<T> extends ArrayList<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Object f6511a;

    public abstract void a(T t, T t2);

    public abstract boolean b(T t, T t2);

    public g() {
        this(null);
    }

    public g(Object obj) {
        this.f6511a = obj == null ? this : obj;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        synchronized (this.f6511a) {
            super.clear();
        }
    }

    public void a(List<T> list, int i) {
        if (list != null) {
            synchronized (this.f6511a) {
                for (int i2 = 0; i2 < list.size(); i2++) {
                    a(list.get(i2), i + i2);
                }
            }
        }
    }

    public void a(T t, int i) {
        if (t != null) {
            synchronized (this.f6511a) {
                if (i >= size()) {
                    add(t);
                } else {
                    remove(i);
                    add(i, t);
                }
            }
        }
    }

    public void a(T t, boolean z) {
        if (t != null) {
            synchronized (this.f6511a) {
                int iB = b(t);
                if (iB < 0) {
                    if (z) {
                        add(0, t);
                    } else {
                        add(t);
                    }
                } else {
                    a(get(iB), t);
                }
            }
        }
    }

    public T a(T t) {
        if (t != null) {
            synchronized (this.f6511a) {
                int iB = b(t);
                if (iB != -1) {
                    return remove(iB);
                }
            }
        }
        return null;
    }

    public int b(T t) {
        if (t != null) {
            synchronized (this.f6511a) {
                for (int i = 0; i < size(); i++) {
                    if (b(t, get(i))) {
                        return i;
                    }
                }
            }
        }
        return -1;
    }
}
