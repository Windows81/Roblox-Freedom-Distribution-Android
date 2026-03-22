package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<Class, Integer> f2133a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Map<Class, List<Constructor<? extends e>>> f2134b = new HashMap();

    static f a(Object obj) {
        if (obj instanceof d) {
            return new FullLifecycleObserverAdapter((d) obj);
        }
        if (obj instanceof f) {
            return (f) obj;
        }
        Class<?> cls = obj.getClass();
        if (b(cls) == 2) {
            List<Constructor<? extends e>> list = f2134b.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(a(list.get(0), obj));
            }
            e[] eVarArr = new e[list.size()];
            for (int i = 0; i < list.size(); i++) {
                eVarArr[i] = a(list.get(i), obj);
            }
            return new CompositeGeneratedAdaptersObserver(eVarArr);
        }
        return new ReflectiveGenericLifecycleObserver(obj);
    }

    private static e a(Constructor<? extends e> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (InstantiationException e3) {
            throw new RuntimeException(e3);
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static Constructor<? extends e> a(Class<?> cls) {
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String strA = a(canonicalName);
            if (!name.isEmpty()) {
                strA = name + "." + strA;
            }
            Constructor declaredConstructor = Class.forName(strA).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static int b(Class<?> cls) {
        if (f2133a.containsKey(cls)) {
            return f2133a.get(cls).intValue();
        }
        int iC = c(cls);
        f2133a.put(cls, Integer.valueOf(iC));
        return iC;
    }

    private static int c(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends e> constructorA = a(cls);
        if (constructorA != null) {
            f2134b.put(cls, Collections.singletonList(constructorA));
            return 2;
        }
        if (b.f2111a.a(cls)) {
            return 1;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        ArrayList arrayList = null;
        if (d(superclass)) {
            if (b(superclass) == 1) {
                return 1;
            }
            arrayList = new ArrayList(f2134b.get(superclass));
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            if (d(cls2)) {
                if (b(cls2) == 1) {
                    return 1;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.addAll(f2134b.get(cls2));
            }
        }
        if (arrayList == null) {
            return 1;
        }
        f2134b.put(cls, arrayList);
        return 2;
    }

    private static boolean d(Class<?> cls) {
        return cls != null && i.class.isAssignableFrom(cls);
    }

    public static String a(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }
}
