package org.greenrobot.eventbus;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Class<?>, List<l>> f7995a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a[] f7996e = new a[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<org.greenrobot.eventbus.a.b> f7997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f7998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f7999d;

    m(List<org.greenrobot.eventbus.a.b> list, boolean z, boolean z2) {
        this.f7997b = list;
        this.f7998c = z;
        this.f7999d = z2;
    }

    List<l> a(Class<?> cls) {
        List<l> listB;
        List<l> list = f7995a.get(cls);
        if (list != null) {
            return list;
        }
        if (this.f7999d) {
            listB = c(cls);
        } else {
            listB = b(cls);
        }
        if (listB.isEmpty()) {
            throw new e("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
        }
        f7995a.put(cls, listB);
        return listB;
    }

    private List<l> b(Class<?> cls) {
        a aVarA = a();
        aVarA.a(cls);
        while (aVarA.f != null) {
            aVarA.h = b(aVarA);
            if (aVarA.h != null) {
                for (l lVar : aVarA.h.b()) {
                    if (aVarA.a(lVar.f7990a, lVar.f7992c)) {
                        aVarA.f8000a.add(lVar);
                    }
                }
            } else {
                c(aVarA);
            }
            aVarA.b();
        }
        return a(aVarA);
    }

    private List<l> a(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.f8000a);
        aVar.a();
        synchronized (f7996e) {
            int i = 0;
            while (true) {
                if (i >= 4) {
                    break;
                }
                if (f7996e[i] == null) {
                    f7996e[i] = aVar;
                    break;
                }
                i++;
            }
        }
        return arrayList;
    }

    private a a() {
        synchronized (f7996e) {
            for (int i = 0; i < 4; i++) {
                a aVar = f7996e[i];
                if (aVar != null) {
                    f7996e[i] = null;
                    return aVar;
                }
            }
            return new a();
        }
    }

    private org.greenrobot.eventbus.a.a b(a aVar) {
        if (aVar.h != null && aVar.h.c() != null) {
            org.greenrobot.eventbus.a.a aVarC = aVar.h.c();
            if (aVar.f == aVarC.a()) {
                return aVarC;
            }
        }
        List<org.greenrobot.eventbus.a.b> list = this.f7997b;
        if (list == null) {
            return null;
        }
        Iterator<org.greenrobot.eventbus.a.b> it = list.iterator();
        while (it.hasNext()) {
            org.greenrobot.eventbus.a.a aVarA = it.next().a(aVar.f);
            if (aVarA != null) {
                return aVarA;
            }
        }
        return null;
    }

    private List<l> c(Class<?> cls) {
        a aVarA = a();
        aVarA.a(cls);
        while (aVarA.f != null) {
            c(aVarA);
            aVarA.b();
        }
        return a(aVarA);
    }

    private void c(a aVar) {
        Method[] methods;
        try {
            methods = aVar.f.getDeclaredMethods();
        } catch (Throwable unused) {
            methods = aVar.f.getMethods();
            aVar.g = true;
        }
        for (Method method : methods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    j jVar = (j) method.getAnnotation(j.class);
                    if (jVar != null) {
                        Class<?> cls = parameterTypes[0];
                        if (aVar.a(method, cls)) {
                            aVar.f8000a.add(new l(method, cls, jVar.a(), jVar.c(), jVar.b()));
                        }
                    }
                } else if (this.f7998c && method.isAnnotationPresent(j.class)) {
                    throw new e("@Subscribe method " + (method.getDeclaringClass().getName() + "." + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                }
            } else if (this.f7998c && method.isAnnotationPresent(j.class)) {
                throw new e((method.getDeclaringClass().getName() + "." + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
            }
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List<l> f8000a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Map<Class, Object> f8001b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Map<String, Class> f8002c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final StringBuilder f8003d = new StringBuilder(128);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Class<?> f8004e;
        Class<?> f;
        boolean g;
        org.greenrobot.eventbus.a.a h;

        a() {
        }

        void a(Class<?> cls) {
            this.f = cls;
            this.f8004e = cls;
            this.g = false;
            this.h = null;
        }

        void a() {
            this.f8000a.clear();
            this.f8001b.clear();
            this.f8002c.clear();
            this.f8003d.setLength(0);
            this.f8004e = null;
            this.f = null;
            this.g = false;
            this.h = null;
        }

        boolean a(Method method, Class<?> cls) {
            Object objPut = this.f8001b.put(cls, method);
            if (objPut == null) {
                return true;
            }
            if (objPut instanceof Method) {
                if (!b((Method) objPut, cls)) {
                    throw new IllegalStateException();
                }
                this.f8001b.put(cls, this);
            }
            return b(method, cls);
        }

        private boolean b(Method method, Class<?> cls) {
            this.f8003d.setLength(0);
            this.f8003d.append(method.getName());
            StringBuilder sb = this.f8003d;
            sb.append('>');
            sb.append(cls.getName());
            String string = this.f8003d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class clsPut = this.f8002c.put(string, declaringClass);
            if (clsPut == null || clsPut.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f8002c.put(string, clsPut);
            return false;
        }

        void b() {
            if (this.g) {
                this.f = null;
                return;
            }
            Class<? super Object> superclass = this.f.getSuperclass();
            this.f = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.")) {
                this.f = null;
            }
        }
    }
}
