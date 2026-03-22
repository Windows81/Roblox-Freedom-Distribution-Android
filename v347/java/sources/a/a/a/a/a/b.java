package a.a.a.a.a;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<Set<a.a.a.a.b.b<d, d>>> f6a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7b = true;

    static Set<a.a.a.a.b.b<d, d>> a() {
        return f6a.get();
    }

    static a.a.a.a.b.b<d, d> a(Object obj, Object obj2) {
        return a.a.a.a.b.b.a(new d(obj), new d(obj2));
    }

    static boolean b(Object obj, Object obj2) {
        Set<a.a.a.a.b.b<d, d>> setA = a();
        a.a.a.a.b.b<d, d> bVarA = a(obj, obj2);
        return setA != null && (setA.contains(bVarA) || setA.contains(a.a.a.a.b.b.a(bVarA.a(), bVarA.b())));
    }

    static void c(Object obj, Object obj2) {
        synchronized (b.class) {
            if (a() == null) {
                f6a.set(new HashSet());
            }
        }
        a().add(a(obj, obj2));
    }

    static void d(Object obj, Object obj2) {
        Set<a.a.a.a.b.b<d, d>> setA = a();
        if (setA != null) {
            setA.remove(a(obj, obj2));
            synchronized (b.class) {
                Set<a.a.a.a.b.b<d, d>> setA2 = a();
                if (setA2 != null && setA2.isEmpty()) {
                    f6a.remove();
                }
            }
        }
    }

    public static boolean a(Object obj, Object obj2, String... strArr) {
        return a(obj, obj2, false, null, strArr);
    }

    public static boolean a(Object obj, Object obj2, boolean z, Class<?> cls, String... strArr) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        Class<?> cls2 = obj.getClass();
        Class<?> superclass = obj2.getClass();
        if (cls2.isInstance(obj2)) {
            if (superclass.isInstance(obj)) {
                superclass = cls2;
            }
        } else {
            if (!superclass.isInstance(obj)) {
                return false;
            }
            if (!cls2.isInstance(obj2)) {
                superclass = cls2;
            }
        }
        b bVar = new b();
        try {
            if (superclass.isArray()) {
                bVar.e(obj, obj2);
            } else {
                a(obj, obj2, superclass, bVar, z, strArr);
                while (superclass.getSuperclass() != null && superclass != cls) {
                    superclass = superclass.getSuperclass();
                    a(obj, obj2, superclass, bVar, z, strArr);
                }
            }
            return bVar.b();
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    private static void a(Object obj, Object obj2, Class<?> cls, b bVar, boolean z, String[] strArr) {
        if (!b(obj, obj2)) {
            try {
                c(obj, obj2);
                Field[] declaredFields = cls.getDeclaredFields();
                AccessibleObject.setAccessible(declaredFields, true);
                for (int i = 0; i < declaredFields.length && bVar.f7b; i++) {
                    Field field = declaredFields[i];
                    if (!a.a.a.a.a.b(strArr, field.getName()) && field.getName().indexOf(36) == -1 && ((z || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                        try {
                            bVar.e(field.get(obj), field.get(obj2));
                        } catch (IllegalAccessException e) {
                            throw new InternalError("Unexpected IllegalAccessException");
                        }
                    }
                }
            } finally {
                d(obj, obj2);
            }
        }
    }

    public b e(Object obj, Object obj2) {
        if (this.f7b && obj != obj2) {
            if (obj == null || obj2 == null) {
                a(false);
            } else if (!obj.getClass().isArray()) {
                this.f7b = obj.equals(obj2);
            } else if (obj.getClass() != obj2.getClass()) {
                a(false);
            } else if (obj instanceof long[]) {
                a((long[]) obj, (long[]) obj2);
            } else if (obj instanceof int[]) {
                a((int[]) obj, (int[]) obj2);
            } else if (obj instanceof short[]) {
                a((short[]) obj, (short[]) obj2);
            } else if (obj instanceof char[]) {
                a((char[]) obj, (char[]) obj2);
            } else if (obj instanceof byte[]) {
                a((byte[]) obj, (byte[]) obj2);
            } else if (obj instanceof double[]) {
                a((double[]) obj, (double[]) obj2);
            } else if (obj instanceof float[]) {
                a((float[]) obj, (float[]) obj2);
            } else if (obj instanceof boolean[]) {
                a((boolean[]) obj, (boolean[]) obj2);
            } else {
                a((Object[]) obj, (Object[]) obj2);
            }
        }
        return this;
    }

    public b a(long j, long j2) {
        if (this.f7b) {
            this.f7b = j == j2;
        }
        return this;
    }

    public b a(int i, int i2) {
        if (this.f7b) {
            this.f7b = i == i2;
        }
        return this;
    }

    public b a(short s, short s2) {
        if (this.f7b) {
            this.f7b = s == s2;
        }
        return this;
    }

    public b a(char c2, char c3) {
        if (this.f7b) {
            this.f7b = c2 == c3;
        }
        return this;
    }

    public b a(byte b2, byte b3) {
        if (this.f7b) {
            this.f7b = b2 == b3;
        }
        return this;
    }

    public b a(double d2, double d3) {
        return !this.f7b ? this : a(Double.doubleToLongBits(d2), Double.doubleToLongBits(d3));
    }

    public b a(float f, float f2) {
        return !this.f7b ? this : a(Float.floatToIntBits(f), Float.floatToIntBits(f2));
    }

    public b a(boolean z, boolean z2) {
        if (this.f7b) {
            this.f7b = z == z2;
        }
        return this;
    }

    public b a(Object[] objArr, Object[] objArr2) {
        if (this.f7b && objArr != objArr2) {
            if (objArr == null || objArr2 == null || objArr.length != objArr2.length) {
                a(false);
            } else {
                for (int i = 0; i < objArr.length && this.f7b; i++) {
                    e(objArr[i], objArr2[i]);
                }
            }
        }
        return this;
    }

    public b a(long[] jArr, long[] jArr2) {
        if (this.f7b && jArr != jArr2) {
            if (jArr == null || jArr2 == null || jArr.length != jArr2.length) {
                a(false);
            } else {
                for (int i = 0; i < jArr.length && this.f7b; i++) {
                    a(jArr[i], jArr2[i]);
                }
            }
        }
        return this;
    }

    public b a(int[] iArr, int[] iArr2) {
        if (this.f7b && iArr != iArr2) {
            if (iArr == null || iArr2 == null || iArr.length != iArr2.length) {
                a(false);
            } else {
                for (int i = 0; i < iArr.length && this.f7b; i++) {
                    a(iArr[i], iArr2[i]);
                }
            }
        }
        return this;
    }

    public b a(short[] sArr, short[] sArr2) {
        if (this.f7b && sArr != sArr2) {
            if (sArr == null || sArr2 == null || sArr.length != sArr2.length) {
                a(false);
            } else {
                for (int i = 0; i < sArr.length && this.f7b; i++) {
                    a(sArr[i], sArr2[i]);
                }
            }
        }
        return this;
    }

    public b a(char[] cArr, char[] cArr2) {
        if (this.f7b && cArr != cArr2) {
            if (cArr == null || cArr2 == null || cArr.length != cArr2.length) {
                a(false);
            } else {
                for (int i = 0; i < cArr.length && this.f7b; i++) {
                    a(cArr[i], cArr2[i]);
                }
            }
        }
        return this;
    }

    public b a(byte[] bArr, byte[] bArr2) {
        if (this.f7b && bArr != bArr2) {
            if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
                a(false);
            } else {
                for (int i = 0; i < bArr.length && this.f7b; i++) {
                    a(bArr[i], bArr2[i]);
                }
            }
        }
        return this;
    }

    public b a(double[] dArr, double[] dArr2) {
        if (this.f7b && dArr != dArr2) {
            if (dArr == null || dArr2 == null || dArr.length != dArr2.length) {
                a(false);
            } else {
                for (int i = 0; i < dArr.length && this.f7b; i++) {
                    a(dArr[i], dArr2[i]);
                }
            }
        }
        return this;
    }

    public b a(float[] fArr, float[] fArr2) {
        if (this.f7b && fArr != fArr2) {
            if (fArr == null || fArr2 == null || fArr.length != fArr2.length) {
                a(false);
            } else {
                for (int i = 0; i < fArr.length && this.f7b; i++) {
                    a(fArr[i], fArr2[i]);
                }
            }
        }
        return this;
    }

    public b a(boolean[] zArr, boolean[] zArr2) {
        if (this.f7b && zArr != zArr2) {
            if (zArr == null || zArr2 == null || zArr.length != zArr2.length) {
                a(false);
            } else {
                for (int i = 0; i < zArr.length && this.f7b; i++) {
                    a(zArr[i], zArr2[i]);
                }
            }
        }
        return this;
    }

    public boolean b() {
        return this.f7b;
    }

    protected void a(boolean z) {
        this.f7b = z;
    }
}
