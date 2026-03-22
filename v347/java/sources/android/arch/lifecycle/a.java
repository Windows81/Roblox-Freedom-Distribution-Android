package android.arch.lifecycle;

import android.arch.lifecycle.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static a f129a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class, C0004a> f130b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<Class, Boolean> f131c = new HashMap();

    a() {
    }

    boolean a(Class cls) {
        if (this.f131c.containsKey(cls)) {
            return this.f131c.get(cls).booleanValue();
        }
        Method[] methodArrC = c(cls);
        for (Method method : methodArrC) {
            if (((m) method.getAnnotation(m.class)) != null) {
                a(cls, methodArrC);
                return true;
            }
        }
        this.f131c.put(cls, false);
        return false;
    }

    private Method[] c(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    C0004a b(Class cls) {
        C0004a c0004a = this.f130b.get(cls);
        if (c0004a == null) {
            return a(cls, null);
        }
        return c0004a;
    }

    private void a(Map<b, d.a> map, b bVar, d.a aVar, Class cls) {
        d.a aVar2 = map.get(bVar);
        if (aVar2 != null && aVar != aVar2) {
            throw new IllegalArgumentException("Method " + bVar.f135b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + aVar2 + ", new value " + aVar);
        }
        if (aVar2 == null) {
            map.put(bVar, aVar);
        }
    }

    private C0004a a(Class cls, Method[] methodArr) {
        int i;
        boolean z;
        C0004a c0004aB;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (c0004aB = b(superclass)) != null) {
            map.putAll(c0004aB.f133b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, d.a> entry : b(cls2).f133b.entrySet()) {
                a(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = c(cls);
        }
        int length = methodArr.length;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < length) {
            Method method = methodArr[i2];
            m mVar = (m) method.getAnnotation(m.class);
            if (mVar == null) {
                z = z2;
            } else {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(g.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                d.a aVarA = mVar.a();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(d.a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (aVarA != d.a.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                a(map, new b(i, method), aVarA, cls);
                z = true;
            }
            i2++;
            z2 = z;
        }
        C0004a c0004a = new C0004a(map);
        this.f130b.put(cls, c0004a);
        this.f131c.put(cls, Boolean.valueOf(z2));
        return c0004a;
    }

    /* JADX INFO: renamed from: android.arch.lifecycle.a$a, reason: collision with other inner class name */
    static class C0004a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Map<d.a, List<b>> f132a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Map<b, d.a> f133b;

        C0004a(Map<b, d.a> map) {
            this.f133b = map;
            for (Map.Entry<b, d.a> entry : map.entrySet()) {
                d.a value = entry.getValue();
                List<b> arrayList = this.f132a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f132a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        void a(g gVar, d.a aVar, Object obj) {
            a(this.f132a.get(aVar), gVar, aVar, obj);
            a(this.f132a.get(d.a.ON_ANY), gVar, aVar, obj);
        }

        private static void a(List<b> list, g gVar, d.a aVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(gVar, aVar, obj);
                }
            }
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f134a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Method f135b;

        b(int i, Method method) {
            this.f134a = i;
            this.f135b = method;
            this.f135b.setAccessible(true);
        }

        void a(g gVar, d.a aVar, Object obj) {
            try {
                switch (this.f134a) {
                    case 0:
                        this.f135b.invoke(obj, new Object[0]);
                        return;
                    case 1:
                        this.f135b.invoke(obj, gVar);
                        return;
                    case 2:
                        this.f135b.invoke(obj, gVar, aVar);
                        return;
                    default:
                        return;
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f134a == bVar.f134a && this.f135b.getName().equals(bVar.f135b.getName());
        }

        public int hashCode() {
            return (this.f134a * 31) + this.f135b.getName().hashCode();
        }
    }
}
