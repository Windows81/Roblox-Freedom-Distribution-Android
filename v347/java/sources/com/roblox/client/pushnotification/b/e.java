package com.roblox.client.pushnotification.b;

import com.roblox.client.pushnotification.b.m;
import java.util.ArrayList;
import java.util.Vector;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e<T extends m> extends Vector<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a<T> f7662a;

    public interface a<T> {
        boolean a(T t, T t2);
    }

    public void a(a<T> aVar) {
        this.f7662a = aVar;
    }

    public synchronized void a(T t) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= size()) {
                z = false;
                break;
            } else if (!a(t, get(i))) {
                i++;
            } else {
                get(i).a(t);
                z = true;
                break;
            }
        }
        if (!z) {
            add(t);
        }
    }

    public synchronized int a(String str) {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 < size()) {
                if (str.equals(get(i2).b())) {
                    i = i2;
                    break;
                }
                i2++;
            } else {
                i = -1;
                break;
            }
        }
        return i;
    }

    public synchronized void b(String str) {
        int iA = a(str);
        if (iA != -1) {
            remove(iA);
        }
    }

    public synchronized void a(long j) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size(); i++) {
            if (Long.valueOf(get(i).c()).longValue() <= j) {
                arrayList.add(get(i));
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            remove(arrayList.get(i2));
        }
    }

    public boolean a(T t, T t2) {
        if (this.f7662a != null) {
            return this.f7662a.a(t, t2);
        }
        return t == t2;
    }
}
