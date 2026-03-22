package org.greenrobot.eventbus;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile c f8243b;
    private final Map<Class<?>, CopyOnWriteArrayList<n>> e;
    private final Map<Object, List<Class<?>>> f;
    private final Map<Class<?>, Object> g;
    private final ThreadLocal<a> h;
    private final f i;
    private final b j;
    private final org.greenrobot.eventbus.a k;
    private final m l;
    private final ExecutorService m;
    private final boolean n;
    private final boolean o;
    private final boolean p;
    private final boolean q;
    private final boolean r;
    private final boolean s;
    private final int t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f8242a = "EventBus";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final d f8244c = new d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<Class<?>, List<Class<?>>> f8245d = new HashMap();

    public static c a() {
        if (f8243b == null) {
            synchronized (c.class) {
                if (f8243b == null) {
                    f8243b = new c();
                }
            }
        }
        return f8243b;
    }

    public static d b() {
        return new d();
    }

    public c() {
        this(f8244c);
    }

    c(d dVar) {
        this.h = new ThreadLocal<a>() { // from class: org.greenrobot.eventbus.c.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public a initialValue() {
                return new a();
            }
        };
        this.e = new HashMap();
        this.f = new HashMap();
        this.g = new ConcurrentHashMap();
        this.i = new f(this, Looper.getMainLooper(), 10);
        this.j = new b(this);
        this.k = new org.greenrobot.eventbus.a(this);
        this.t = dVar.j != null ? dVar.j.size() : 0;
        this.l = new m(dVar.j, dVar.h, dVar.g);
        this.o = dVar.f8252a;
        this.p = dVar.f8253b;
        this.q = dVar.f8254c;
        this.r = dVar.f8255d;
        this.n = dVar.e;
        this.s = dVar.f;
        this.m = dVar.i;
    }

    public void a(Object obj) {
        List<l> listA = this.l.a(obj.getClass());
        synchronized (this) {
            Iterator<l> it = listA.iterator();
            while (it.hasNext()) {
                a(obj, it.next());
            }
        }
    }

    private void a(Object obj, l lVar) {
        CopyOnWriteArrayList<n> copyOnWriteArrayList;
        Class<?> cls = lVar.f8274c;
        n nVar = new n(obj, lVar);
        CopyOnWriteArrayList<n> copyOnWriteArrayList2 = this.e.get(cls);
        if (copyOnWriteArrayList2 == null) {
            CopyOnWriteArrayList<n> copyOnWriteArrayList3 = new CopyOnWriteArrayList<>();
            this.e.put(cls, copyOnWriteArrayList3);
            copyOnWriteArrayList = copyOnWriteArrayList3;
        } else {
            if (copyOnWriteArrayList2.contains(nVar)) {
                throw new e("Subscriber " + obj.getClass() + " already registered to event " + cls);
            }
            copyOnWriteArrayList = copyOnWriteArrayList2;
        }
        int size = copyOnWriteArrayList.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || lVar.f8275d > copyOnWriteArrayList.get(i).f8285b.f8275d) {
                copyOnWriteArrayList.add(i, nVar);
                break;
            }
        }
        List<Class<?>> arrayList = this.f.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f.put(obj, arrayList);
        }
        arrayList.add(cls);
        if (lVar.e) {
            if (this.s) {
                for (Map.Entry<Class<?>, Object> entry : this.g.entrySet()) {
                    if (cls.isAssignableFrom(entry.getKey())) {
                        b(nVar, entry.getValue());
                    }
                }
                return;
            }
            b(nVar, this.g.get(cls));
        }
    }

    private void b(n nVar, Object obj) {
        if (obj != null) {
            a(nVar, obj, Looper.getMainLooper() == Looper.myLooper());
        }
    }

    private void a(Object obj, Class<?> cls) {
        int i;
        int i2;
        CopyOnWriteArrayList<n> copyOnWriteArrayList = this.e.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i3 = 0;
            while (i3 < size) {
                n nVar = copyOnWriteArrayList.get(i3);
                if (nVar.f8284a == obj) {
                    nVar.f8286c = false;
                    copyOnWriteArrayList.remove(i3);
                    i = i3 - 1;
                    i2 = size - 1;
                } else {
                    i = i3;
                    i2 = size;
                }
                size = i2;
                i3 = i + 1;
            }
        }
    }

    public synchronized void b(Object obj) {
        List<Class<?>> list = this.f.get(obj);
        if (list != null) {
            Iterator<Class<?>> it = list.iterator();
            while (it.hasNext()) {
                a(obj, it.next());
            }
            this.f.remove(obj);
        } else {
            Log.w(f8242a, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public void c(Object obj) {
        a aVar = this.h.get();
        List<Object> list = aVar.f8248a;
        list.add(obj);
        if (!aVar.f8249b) {
            aVar.f8250c = Looper.getMainLooper() == Looper.myLooper();
            aVar.f8249b = true;
            if (aVar.f) {
                throw new e("Internal error. Abort state was not reset");
            }
            while (!list.isEmpty()) {
                try {
                    a(list.remove(0), aVar);
                } finally {
                    aVar.f8249b = false;
                    aVar.f8250c = false;
                }
            }
        }
    }

    private void a(Object obj, a aVar) throws Error {
        boolean zA;
        Class<?> cls = obj.getClass();
        if (this.s) {
            List<Class<?>> listA = a(cls);
            int size = listA.size();
            boolean zA2 = false;
            for (int i = 0; i < size; i++) {
                zA2 |= a(obj, aVar, listA.get(i));
            }
            zA = zA2;
        } else {
            zA = a(obj, aVar, cls);
        }
        if (!zA) {
            if (this.p) {
                Log.d(f8242a, "No subscribers registered for event " + cls);
            }
            if (this.r && cls != g.class && cls != k.class) {
                c(new g(this, obj));
            }
        }
    }

    private boolean a(Object obj, a aVar, Class<?> cls) {
        CopyOnWriteArrayList<n> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.e.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (n nVar : copyOnWriteArrayList) {
            aVar.e = obj;
            aVar.f8251d = nVar;
            try {
                a(nVar, obj, aVar.f8250c);
                if (aVar.f) {
                    break;
                }
            } finally {
                aVar.e = null;
                aVar.f8251d = null;
                aVar.f = false;
            }
        }
        return true;
    }

    private void a(n nVar, Object obj, boolean z) {
        switch (nVar.f8285b.f8273b) {
            case POSTING:
                a(nVar, obj);
                return;
            case MAIN:
                if (z) {
                    a(nVar, obj);
                    return;
                } else {
                    this.i.a(nVar, obj);
                    return;
                }
            case BACKGROUND:
                if (z) {
                    this.j.a(nVar, obj);
                    return;
                } else {
                    a(nVar, obj);
                    return;
                }
            case ASYNC:
                this.k.a(nVar, obj);
                return;
            default:
                throw new IllegalStateException("Unknown thread mode: " + nVar.f8285b.f8273b);
        }
    }

    private static List<Class<?>> a(Class<?> cls) {
        List<Class<?>> arrayList;
        synchronized (f8245d) {
            arrayList = f8245d.get(cls);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                    arrayList.add(superclass);
                    a(arrayList, superclass.getInterfaces());
                }
                f8245d.put(cls, arrayList);
            }
        }
        return arrayList;
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    void a(h hVar) {
        Object obj = hVar.f8263a;
        n nVar = hVar.f8264b;
        h.a(hVar);
        if (nVar.f8286c) {
            a(nVar, obj);
        }
    }

    void a(n nVar, Object obj) {
        try {
            nVar.f8285b.f8272a.invoke(nVar.f8284a, obj);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Unexpected exception", e);
        } catch (InvocationTargetException e2) {
            a(nVar, obj, e2.getCause());
        }
    }

    private void a(n nVar, Object obj, Throwable th) {
        if (obj instanceof k) {
            if (this.o) {
                Log.e(f8242a, "SubscriberExceptionEvent subscriber " + nVar.f8284a.getClass() + " threw an exception", th);
                k kVar = (k) obj;
                Log.e(f8242a, "Initial event " + kVar.f8270c + " caused exception in " + kVar.f8271d, kVar.f8269b);
                return;
            }
            return;
        }
        if (this.n) {
            throw new e("Invoking subscriber failed", th);
        }
        if (this.o) {
            Log.e(f8242a, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + nVar.f8284a.getClass(), th);
        }
        if (this.q) {
            c(new k(this, th, obj, nVar.f8284a));
        }
    }

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List<Object> f8248a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f8249b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f8250c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        n f8251d;
        Object e;
        boolean f;

        a() {
        }
    }

    ExecutorService c() {
        return this.m;
    }

    public String toString() {
        return "EventBus[indexCount=" + this.t + ", eventInheritance=" + this.s + "]";
    }
}
