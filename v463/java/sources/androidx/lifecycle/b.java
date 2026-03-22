package androidx.lifecycle;

import androidx.lifecycle.g;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static b f2111a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class, a> f2112b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<Class, Boolean> f2113c = new HashMap();

    b() {
    }

    boolean a(Class cls) {
        if (this.f2113c.containsKey(cls)) {
            return this.f2113c.get(cls).booleanValue();
        }
        Method[] methodArrC = c(cls);
        for (Method method : methodArrC) {
            if (((r) method.getAnnotation(r.class)) != null) {
                a(cls, methodArrC);
                return true;
            }
        }
        this.f2113c.put(cls, false);
        return false;
    }

    private Method[] c(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e2) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
        }
    }

    a b(Class cls) {
        a aVar = this.f2112b.get(cls);
        return aVar != null ? aVar : a(cls, null);
    }

    private void a(Map<C0053b, g.a> map, C0053b c0053b, g.a aVar, Class cls) {
        g.a aVar2 = map.get(c0053b);
        if (aVar2 == null || aVar == aVar2) {
            if (aVar2 == null) {
                map.put(c0053b, aVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + c0053b.f2117b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + aVar2 + ", new value " + aVar);
    }

    private a a(Class cls, Method[] methodArr) {
        int i;
        a aVarB;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (aVarB = b(superclass)) != null) {
            map.putAll(aVarB.f2115b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0053b, g.a> entry : b(cls2).f2115b.entrySet()) {
                a(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = c(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            r rVar = (r) method.getAnnotation(r.class);
            if (rVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(j.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                g.a aVarA = rVar.a();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(g.a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (aVarA != g.a.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                a(map, new C0053b(i, method), aVarA, cls);
                z = true;
            }
        }
        a aVar = new a(map);
        this.f2112b.put(cls, aVar);
        this.f2113c.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Map<g.a, List<C0053b>> f2114a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Map<C0053b, g.a> f2115b;

        a(Map<C0053b, g.a> map) {
            this.f2115b = map;
            for (Map.Entry<C0053b, g.a> entry : map.entrySet()) {
                g.a value = entry.getValue();
                List<C0053b> arrayList = this.f2114a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f2114a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        void a(j jVar, g.a aVar, Object obj) {
            a(this.f2114a.get(aVar), jVar, aVar, obj);
            a(this.f2114a.get(g.a.ON_ANY), jVar, aVar, obj);
        }

        private static void a(List<C0053b> list, j jVar, g.a aVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(jVar, aVar, obj);
                }
            }
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.b$b, reason: collision with other inner class name */
    static class C0053b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f2116a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Method f2117b;

        C0053b(int i, Method method) {
            this.f2116a = i;
            this.f2117b = method;
            method.setAccessible(true);
        }

        void a(j jVar, g.a aVar, Object obj) {
            try {
                int i = this.f2116a;
                if (i == 0) {
                    this.f2117b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f2117b.invoke(obj, jVar);
                } else {
                    if (i != 2) {
                        return;
                    }
                    this.f2117b.invoke(obj, jVar, aVar);
                }
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("Failed to call observer method", e3.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0053b c0053b = (C0053b) obj;
            return this.f2116a == c0053b.f2116a && this.f2117b.getName().equals(c0053b.f2117b.getName());
        }

        public int hashCode() {
            return (this.f2116a * 31) + this.f2117b.getName().hashCode();
        }
    }
}
