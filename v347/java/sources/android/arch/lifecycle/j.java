package android.arch.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<Class, Integer> f150a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Map<Class, List<Constructor<? extends c>>> f151b = new HashMap();

    static GenericLifecycleObserver a(Object obj) {
        int i = 0;
        if (obj instanceof FullLifecycleObserver) {
            return new FullLifecycleObserverAdapter((FullLifecycleObserver) obj);
        }
        if (obj instanceof GenericLifecycleObserver) {
            return (GenericLifecycleObserver) obj;
        }
        Class<?> cls = obj.getClass();
        if (b(cls) == 2) {
            List<Constructor<? extends c>> list = f151b.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(a(list.get(0), obj));
            }
            c[] cVarArr = new c[list.size()];
            while (true) {
                int i2 = i;
                if (i2 < list.size()) {
                    cVarArr[i2] = a(list.get(i2), obj);
                    i = i2 + 1;
                } else {
                    return new CompositeGeneratedAdaptersObserver(cVarArr);
                }
            }
        } else {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
    }

    private static c a(Constructor<? extends c> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    private static Constructor<? extends c> a(Class<?> cls) {
        try {
            Package r1 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r1 != null ? r1.getName() : "";
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
                return declaredConstructor;
            }
            return declaredConstructor;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static int b(Class<?> cls) {
        if (f150a.containsKey(cls)) {
            return f150a.get(cls).intValue();
        }
        int iC = c(cls);
        f150a.put(cls, Integer.valueOf(iC));
        return iC;
    }

    private static int c(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends c> constructorA = a(cls);
        if (constructorA != null) {
            f151b.put(cls, Collections.singletonList(constructorA));
            return 2;
        }
        if (a.f129a.a(cls)) {
            return 1;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        ArrayList arrayList = null;
        if (d(superclass)) {
            if (b(superclass) == 1) {
                return 1;
            }
            arrayList = new ArrayList(f151b.get(superclass));
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            if (d(cls2)) {
                if (b(cls2) == 1) {
                    return 1;
                }
                ArrayList arrayList2 = arrayList == null ? new ArrayList() : arrayList;
                arrayList2.addAll(f151b.get(cls2));
                arrayList = arrayList2;
            }
        }
        if (arrayList == null) {
            return 1;
        }
        f151b.put(cls, arrayList);
        return 2;
    }

    private static boolean d(Class<?> cls) {
        return cls != null && f.class.isAssignableFrom(cls);
    }

    public static String a(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }
}
