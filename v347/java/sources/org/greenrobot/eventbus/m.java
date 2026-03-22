package org.greenrobot.eventbus;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Class<?>, List<l>> f8276a = new ConcurrentHashMap();
    private static final a[] e = new a[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<org.greenrobot.eventbus.a.b> f8277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f8278c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f8279d;

    m(List<org.greenrobot.eventbus.a.b> list, boolean z, boolean z2) {
        this.f8277b = list;
        this.f8278c = z;
        this.f8279d = z2;
    }

    List<l> a(Class<?> cls) {
        List<l> listB = f8276a.get(cls);
        if (listB == null) {
            if (this.f8279d) {
                listB = c(cls);
            } else {
                listB = b(cls);
            }
            if (listB.isEmpty()) {
                throw new e("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
            }
            f8276a.put(cls, listB);
        }
        return listB;
    }

    private List<l> b(Class<?> cls) {
        a aVarA = a();
        aVarA.a(cls);
        while (aVarA.f != null) {
            aVarA.h = b(aVarA);
            if (aVarA.h != null) {
                for (l lVar : aVarA.h.b()) {
                    if (aVarA.a(lVar.f8272a, lVar.f8274c)) {
                        aVarA.f8280a.add(lVar);
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
        ArrayList arrayList = new ArrayList(aVar.f8280a);
        aVar.a();
        synchronized (e) {
            int i = 0;
            while (true) {
                if (i >= 4) {
                    break;
                }
                if (e[i] != null) {
                    i++;
                } else {
                    e[i] = aVar;
                    break;
                }
            }
        }
        return arrayList;
    }

    private a a() {
        synchronized (e) {
            for (int i = 0; i < 4; i++) {
                a aVar = e[i];
                if (aVar != null) {
                    e[i] = null;
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
        if (this.f8277b != null) {
            Iterator<org.greenrobot.eventbus.a.b> it = this.f8277b.iterator();
            while (it.hasNext()) {
                org.greenrobot.eventbus.a.a aVarA = it.next().a(aVar.f);
                if (aVarA != null) {
                    return aVarA;
                }
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
        Method[] declaredMethods;
        try {
            declaredMethods = aVar.f.getDeclaredMethods();
        } catch (Throwable th) {
            Method[] methods = aVar.f.getMethods();
            aVar.g = true;
            declaredMethods = methods;
        }
        for (Method method : declaredMethods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    j jVar = (j) method.getAnnotation(j.class);
                    if (jVar != null) {
                        Class<?> cls = parameterTypes[0];
                        if (aVar.a(method, cls)) {
                            aVar.f8280a.add(new l(method, cls, jVar.a(), jVar.c(), jVar.b()));
                        }
                    }
                } else if (this.f8278c && method.isAnnotationPresent(j.class)) {
                    throw new e("@Subscribe method " + (method.getDeclaringClass().getName() + "." + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                }
            } else if (this.f8278c && method.isAnnotationPresent(j.class)) {
                throw new e((method.getDeclaringClass().getName() + "." + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
            }
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final List<l> f8280a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Map<Class, Object> f8281b = new HashMap();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Map<String, Class> f8282c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final StringBuilder f8283d = new StringBuilder(128);
        Class<?> e;
        Class<?> f;
        boolean g;
        org.greenrobot.eventbus.a.a h;

        a() {
        }

        void a(Class<?> cls) {
            this.f = cls;
            this.e = cls;
            this.g = false;
            this.h = null;
        }

        void a() {
            this.f8280a.clear();
            this.f8281b.clear();
            this.f8282c.clear();
            this.f8283d.setLength(0);
            this.e = null;
            this.f = null;
            this.g = false;
            this.h = null;
        }

        boolean a(Method method, Class<?> cls) {
            Object objPut = this.f8281b.put(cls, method);
            if (objPut == null) {
                return true;
            }
            if (objPut instanceof Method) {
                if (!b((Method) objPut, cls)) {
                    throw new IllegalStateException();
                }
                this.f8281b.put(cls, this);
            }
            return b(method, cls);
        }

        private boolean b(Method method, Class<?> cls) {
            this.f8283d.setLength(0);
            this.f8283d.append(method.getName());
            this.f8283d.append('>').append(cls.getName());
            String string = this.f8283d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class clsPut = this.f8282c.put(string, declaringClass);
            if (clsPut == null || clsPut.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f8282c.put(string, clsPut);
            return false;
        }

        void b() {
            if (this.g) {
                this.f = null;
                return;
            }
            this.f = this.f.getSuperclass();
            String name = this.f.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.")) {
                this.f = null;
            }
        }
    }
}
