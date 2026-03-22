package com.google.ads.interactivemedia.v3.a.b;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class k {
    public abstract <T> T a(Class<T> cls) throws Exception;

    public static k a() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            final Object obj = declaredField.get(null);
            final Method method = cls.getMethod("allocateInstance", Class.class);
            return new k() { // from class: com.google.ads.interactivemedia.v3.a.b.k.1
                @Override // com.google.ads.interactivemedia.v3.a.b.k
                public <T> T a(Class<T> cls2) throws Exception {
                    return (T) method.invoke(obj, cls2);
                }
            };
        } catch (Exception e) {
            try {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                declaredMethod.setAccessible(true);
                final int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                final Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                declaredMethod2.setAccessible(true);
                return new k() { // from class: com.google.ads.interactivemedia.v3.a.b.k.2
                    @Override // com.google.ads.interactivemedia.v3.a.b.k
                    public <T> T a(Class<T> cls2) throws Exception {
                        return (T) declaredMethod2.invoke(null, cls2, Integer.valueOf(iIntValue));
                    }
                };
            } catch (Exception e2) {
                try {
                    final Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new k() { // from class: com.google.ads.interactivemedia.v3.a.b.k.3
                        @Override // com.google.ads.interactivemedia.v3.a.b.k
                        public <T> T a(Class<T> cls2) throws Exception {
                            return (T) declaredMethod3.invoke(null, cls2, Object.class);
                        }
                    };
                } catch (Exception e3) {
                    return new k() { // from class: com.google.ads.interactivemedia.v3.a.b.k.4
                        @Override // com.google.ads.interactivemedia.v3.a.b.k
                        public <T> T a(Class<T> cls2) {
                            String strValueOf = String.valueOf(cls2);
                            throw new UnsupportedOperationException(new StringBuilder(String.valueOf(strValueOf).length() + 16).append("Cannot allocate ").append(strValueOf).toString());
                        }
                    };
                }
            }
        }
    }
}
