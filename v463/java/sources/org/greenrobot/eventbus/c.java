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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f7957a = "EventBus";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile c f7958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final d f7959c = new d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<Class<?>, List<Class<?>>> f7960d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Class<?>, CopyOnWriteArrayList<n>> f7961e;
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

    public static c a() {
        if (f7958b == null) {
            synchronized (c.class) {
                if (f7958b == null) {
                    f7958b = new c();
                }
            }
        }
        return f7958b;
    }

    public static d b() {
        return new d();
    }

    public c() {
        this(f7959c);
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
        this.f7961e = new HashMap();
        this.f = new HashMap();
        this.g = new ConcurrentHashMap();
        this.i = new f(this, Looper.getMainLooper(), 10);
        this.j = new b(this);
        this.k = new org.greenrobot.eventbus.a(this);
        this.t = dVar.j != null ? dVar.j.size() : 0;
        this.l = new m(dVar.j, dVar.h, dVar.g);
        this.o = dVar.f7969a;
        this.p = dVar.f7970b;
        this.q = dVar.f7971c;
        this.r = dVar.f7972d;
        this.n = dVar.f7973e;
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
        Class<?> cls = lVar.f7992c;
        n nVar = new n(obj, lVar);
        CopyOnWriteArrayList<n> copyOnWriteArrayList = this.f7961e.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f7961e.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(nVar)) {
            throw new e("Subscriber " + obj.getClass() + " already registered to event " + cls);
        }
        int size = copyOnWriteArrayList.size();
        for (int i = 0; i <= size; i++) {
            if (i == size || lVar.f7993d > copyOnWriteArrayList.get(i).f8006b.f7993d) {
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
        if (lVar.f7994e) {
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
        CopyOnWriteArrayList<n> copyOnWriteArrayList = this.f7961e.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i = 0;
            while (i < size) {
                n nVar = copyOnWriteArrayList.get(i);
                if (nVar.f8005a == obj) {
                    nVar.f8007c = false;
                    copyOnWriteArrayList.remove(i);
                    i--;
                    size--;
                }
                i++;
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
            Log.w(f7957a, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public void c(Object obj) {
        a aVar = this.h.get();
        List<Object> list = aVar.f7964a;
        list.add(obj);
        if (aVar.f7965b) {
            return;
        }
        aVar.f7966c = Looper.getMainLooper() == Looper.myLooper();
        aVar.f7965b = true;
        if (aVar.f) {
            throw new e("Internal error. Abort state was not reset");
        }
        while (!list.isEmpty()) {
            try {
                a(list.remove(0), aVar);
            } finally {
                aVar.f7965b = false;
                aVar.f7966c = false;
            }
        }
    }

    private void a(Object obj, a aVar) throws Error {
        boolean zA;
        Class<?> cls = obj.getClass();
        if (this.s) {
            List<Class<?>> listA = a(cls);
            int size = listA.size();
            zA = false;
            for (int i = 0; i < size; i++) {
                zA |= a(obj, aVar, listA.get(i));
            }
        } else {
            zA = a(obj, aVar, cls);
        }
        if (zA) {
            return;
        }
        if (this.p) {
            Log.d(f7957a, "No subscribers registered for event " + cls);
        }
        if (!this.r || cls == g.class || cls == k.class) {
            return;
        }
        c(new g(this, obj));
    }

    private boolean a(Object obj, a aVar, Class<?> cls) {
        CopyOnWriteArrayList<n> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f7961e.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (n nVar : copyOnWriteArrayList) {
            aVar.f7968e = obj;
            aVar.f7967d = nVar;
            try {
                a(nVar, obj, aVar.f7966c);
                if (aVar.f) {
                    return true;
                }
            } finally {
                aVar.f7968e = null;
                aVar.f7967d = null;
                aVar.f = false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: org.greenrobot.eventbus.c$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7963a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f7963a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7963a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7963a[ThreadMode.BACKGROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7963a[ThreadMode.ASYNC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void a(n nVar, Object obj, boolean z) {
        int i = AnonymousClass2.f7963a[nVar.f8006b.f7991b.ordinal()];
        if (i == 1) {
            a(nVar, obj);
            return;
        }
        if (i == 2) {
            if (z) {
                a(nVar, obj);
                return;
            } else {
                this.i.a(nVar, obj);
                return;
            }
        }
        if (i == 3) {
            if (z) {
                this.j.a(nVar, obj);
                return;
            } else {
                a(nVar, obj);
                return;
            }
        }
        if (i == 4) {
            this.k.a(nVar, obj);
            return;
        }
        throw new IllegalStateException("Unknown thread mode: " + nVar.f8006b.f7991b);
    }

    private static List<Class<?>> a(Class<?> cls) {
        List<Class<?>> arrayList;
        synchronized (f7960d) {
            arrayList = f7960d.get(cls);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                    arrayList.add(superclass);
                    a(arrayList, superclass.getInterfaces());
                }
                f7960d.put(cls, arrayList);
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
        Object obj = hVar.f7981a;
        n nVar = hVar.f7982b;
        h.a(hVar);
        if (nVar.f8007c) {
            a(nVar, obj);
        }
    }

    void a(n nVar, Object obj) {
        try {
            nVar.f8006b.f7990a.invoke(nVar.f8005a, obj);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Unexpected exception", e2);
        } catch (InvocationTargetException e3) {
            a(nVar, obj, e3.getCause());
        }
    }

    private void a(n nVar, Object obj, Throwable th) {
        if (obj instanceof k) {
            if (this.o) {
                Log.e(f7957a, "SubscriberExceptionEvent subscriber " + nVar.f8005a.getClass() + " threw an exception", th);
                k kVar = (k) obj;
                Log.e(f7957a, "Initial event " + kVar.f7988c + " caused exception in " + kVar.f7989d, kVar.f7987b);
                return;
            }
            return;
        }
        if (this.n) {
            throw new e("Invoking subscriber failed", th);
        }
        if (this.o) {
            Log.e(f7957a, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + nVar.f8005a.getClass(), th);
        }
        if (this.q) {
            c(new k(this, th, obj, nVar.f8005a));
        }
    }

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List<Object> f7964a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f7965b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f7966c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        n f7967d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Object f7968e;
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
