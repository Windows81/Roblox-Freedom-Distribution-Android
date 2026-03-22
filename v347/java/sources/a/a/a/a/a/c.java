package a.a.a.a.a;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<Set<d>> f8a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f9b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f10c;

    static Set<d> a() {
        return f8a.get();
    }

    static boolean a(Object obj) {
        Set<d> setA = a();
        return setA != null && setA.contains(new d(obj));
    }

    private static void a(Object obj, Class<?> cls, c cVar, boolean z, String[] strArr) {
        if (!a(obj)) {
            try {
                b(obj);
                Field[] declaredFields = cls.getDeclaredFields();
                AccessibleObject.setAccessible(declaredFields, true);
                for (Field field : declaredFields) {
                    if (!a.a.a.a.a.b(strArr, field.getName()) && field.getName().indexOf(36) == -1 && ((z || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                        try {
                            cVar.d(field.get(obj));
                        } catch (IllegalAccessException e) {
                            throw new InternalError("Unexpected IllegalAccessException");
                        }
                    }
                }
            } finally {
                c(obj);
            }
        }
    }

    public static <T> int a(int i, int i2, T t, boolean z, Class<? super T> cls, String... strArr) {
        if (t == null) {
            throw new IllegalArgumentException("The object to build a hash code for must not be null");
        }
        c cVar = new c(i, i2);
        Class<?> superclass = t.getClass();
        a(t, superclass, cVar, z, strArr);
        while (superclass.getSuperclass() != null && superclass != cls) {
            superclass = superclass.getSuperclass();
            a(t, superclass, cVar, z, strArr);
        }
        return cVar.b();
    }

    public static int a(Object obj, String... strArr) {
        return a(17, 37, obj, false, null, strArr);
    }

    static void b(Object obj) {
        synchronized (c.class) {
            if (a() == null) {
                f8a.set(new HashSet());
            }
        }
        a().add(new d(obj));
    }

    static void c(Object obj) {
        Set<d> setA = a();
        if (setA != null) {
            setA.remove(new d(obj));
            synchronized (c.class) {
                Set<d> setA2 = a();
                if (setA2 != null && setA2.isEmpty()) {
                    f8a.remove();
                }
            }
        }
    }

    public c() {
        this.f10c = 0;
        this.f9b = 37;
        this.f10c = 17;
    }

    public c(int i, int i2) {
        this.f10c = 0;
        a.a.a.a.c.a(i % 2 != 0, "HashCodeBuilder requires an odd initial value", new Object[0]);
        a.a.a.a.c.a(i2 % 2 != 0, "HashCodeBuilder requires an odd multiplier", new Object[0]);
        this.f9b = i2;
        this.f10c = i;
    }

    public c a(boolean z) {
        this.f10c = (z ? 0 : 1) + (this.f9b * this.f10c);
        return this;
    }

    public c a(boolean[] zArr) {
        if (zArr == null) {
            this.f10c *= this.f9b;
        } else {
            for (boolean z : zArr) {
                a(z);
            }
        }
        return this;
    }

    public c a(byte b2) {
        this.f10c = (this.f10c * this.f9b) + b2;
        return this;
    }

    public c a(byte[] bArr) {
        if (bArr == null) {
            this.f10c *= this.f9b;
        } else {
            for (byte b2 : bArr) {
                a(b2);
            }
        }
        return this;
    }

    public c a(char c2) {
        this.f10c = (this.f10c * this.f9b) + c2;
        return this;
    }

    public c a(char[] cArr) {
        if (cArr == null) {
            this.f10c *= this.f9b;
        } else {
            for (char c2 : cArr) {
                a(c2);
            }
        }
        return this;
    }

    public c a(double d2) {
        return a(Double.doubleToLongBits(d2));
    }

    public c a(double[] dArr) {
        if (dArr == null) {
            this.f10c *= this.f9b;
        } else {
            for (double d2 : dArr) {
                a(d2);
            }
        }
        return this;
    }

    public c a(float f) {
        this.f10c = (this.f10c * this.f9b) + Float.floatToIntBits(f);
        return this;
    }

    public c a(float[] fArr) {
        if (fArr == null) {
            this.f10c *= this.f9b;
        } else {
            for (float f : fArr) {
                a(f);
            }
        }
        return this;
    }

    public c a(int i) {
        this.f10c = (this.f10c * this.f9b) + i;
        return this;
    }

    public c a(int[] iArr) {
        if (iArr == null) {
            this.f10c *= this.f9b;
        } else {
            for (int i : iArr) {
                a(i);
            }
        }
        return this;
    }

    public c a(long j) {
        this.f10c = (this.f10c * this.f9b) + ((int) ((j >> 32) ^ j));
        return this;
    }

    public c a(long[] jArr) {
        if (jArr == null) {
            this.f10c *= this.f9b;
        } else {
            for (long j : jArr) {
                a(j);
            }
        }
        return this;
    }

    public c d(Object obj) {
        if (obj == null) {
            this.f10c *= this.f9b;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof long[]) {
                a((long[]) obj);
            } else if (obj instanceof int[]) {
                a((int[]) obj);
            } else if (obj instanceof short[]) {
                a((short[]) obj);
            } else if (obj instanceof char[]) {
                a((char[]) obj);
            } else if (obj instanceof byte[]) {
                a((byte[]) obj);
            } else if (obj instanceof double[]) {
                a((double[]) obj);
            } else if (obj instanceof float[]) {
                a((float[]) obj);
            } else if (obj instanceof boolean[]) {
                a((boolean[]) obj);
            } else {
                a((Object[]) obj);
            }
        } else {
            this.f10c = (this.f10c * this.f9b) + obj.hashCode();
        }
        return this;
    }

    public c a(Object[] objArr) {
        if (objArr == null) {
            this.f10c *= this.f9b;
        } else {
            for (Object obj : objArr) {
                d(obj);
            }
        }
        return this;
    }

    public c a(short s) {
        this.f10c = (this.f10c * this.f9b) + s;
        return this;
    }

    public c a(short[] sArr) {
        if (sArr == null) {
            this.f10c *= this.f9b;
        } else {
            for (short s : sArr) {
                a(s);
            }
        }
        return this;
    }

    public int b() {
        return this.f10c;
    }

    public int hashCode() {
        return b();
    }
}
