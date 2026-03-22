package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Logger f3860a = Logger.getLogger(aec.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Unsafe f3861b = c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class<?> f3862c = zq.b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f3863d = c(Long.TYPE);
    private static final boolean e = c(Integer.TYPE);
    private static final d f;
    private static final boolean g;
    private static final boolean h;
    private static final long i;
    private static final long j;
    private static final long k;
    private static final long l;
    private static final long m;
    private static final long n;
    private static final long o;
    private static final long p;
    private static final long q;
    private static final long r;
    private static final long s;
    private static final long t;
    private static final long u;
    private static final long v;
    private static final long w;
    private static final boolean x;

    static final class a extends d {
        a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final byte a(Object obj, long j) {
            return aec.x ? aec.k(obj, j) : aec.l(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, byte b2) {
            if (aec.x) {
                aec.c(obj, j, b2);
            } else {
                aec.d(obj, j, b2);
            }
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, double d2) {
            a(obj, j, Double.doubleToLongBits(d2));
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, float f) {
            a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, boolean z) {
            if (aec.x) {
                aec.d(obj, j, z);
            } else {
                aec.e(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final boolean b(Object obj, long j) {
            return aec.x ? aec.m(obj, j) : aec.n(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final float c(Object obj, long j) {
            return Float.intBitsToFloat(e(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final double d(Object obj, long j) {
            return Double.longBitsToDouble(f(obj, j));
        }
    }

    static final class b extends d {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final byte a(Object obj, long j) {
            return aec.x ? aec.k(obj, j) : aec.l(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, byte b2) {
            if (aec.x) {
                aec.c(obj, j, b2);
            } else {
                aec.d(obj, j, b2);
            }
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, double d2) {
            a(obj, j, Double.doubleToLongBits(d2));
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, float f) {
            a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, boolean z) {
            if (aec.x) {
                aec.d(obj, j, z);
            } else {
                aec.e(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final boolean b(Object obj, long j) {
            return aec.x ? aec.m(obj, j) : aec.n(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final float c(Object obj, long j) {
            return Float.intBitsToFloat(e(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final double d(Object obj, long j) {
            return Double.longBitsToDouble(f(obj, j));
        }
    }

    static final class c extends d {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final byte a(Object obj, long j) {
            return this.f3864a.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, byte b2) {
            this.f3864a.putByte(obj, j, b2);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, double d2) {
            this.f3864a.putDouble(obj, j, d2);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, float f) {
            this.f3864a.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final void a(Object obj, long j, boolean z) {
            this.f3864a.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final boolean b(Object obj, long j) {
            return this.f3864a.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final float c(Object obj, long j) {
            return this.f3864a.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.aec.d
        public final double d(Object obj, long j) {
            return this.f3864a.getDouble(obj, j);
        }
    }

    static abstract class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Unsafe f3864a;

        d(Unsafe unsafe) {
            this.f3864a = unsafe;
        }

        public abstract byte a(Object obj, long j);

        public final long a(Field field) {
            return this.f3864a.objectFieldOffset(field);
        }

        public abstract void a(Object obj, long j, byte b2);

        public abstract void a(Object obj, long j, double d2);

        public abstract void a(Object obj, long j, float f);

        public final void a(Object obj, long j, int i) {
            this.f3864a.putInt(obj, j, i);
        }

        public final void a(Object obj, long j, long j2) {
            this.f3864a.putLong(obj, j, j2);
        }

        public abstract void a(Object obj, long j, boolean z);

        public abstract boolean b(Object obj, long j);

        public abstract float c(Object obj, long j);

        public abstract double d(Object obj, long j);

        public final int e(Object obj, long j) {
            return this.f3864a.getInt(obj, j);
        }

        public final long f(Object obj, long j) {
            return this.f3864a.getLong(obj, j);
        }
    }

    static {
        Field field = null;
        f = f3861b == null ? null : zq.a() ? f3863d ? new b(f3861b) : e ? new a(f3861b) : null : new c(f3861b);
        g = f();
        h = e();
        i = a((Class<?>) byte[].class);
        j = a((Class<?>) boolean[].class);
        k = b((Class<?>) boolean[].class);
        l = a((Class<?>) int[].class);
        m = b((Class<?>) int[].class);
        n = a((Class<?>) long[].class);
        o = b((Class<?>) long[].class);
        p = a((Class<?>) float[].class);
        q = b((Class<?>) float[].class);
        r = a((Class<?>) double[].class);
        s = b((Class<?>) double[].class);
        t = a((Class<?>) Object[].class);
        u = b((Class<?>) Object[].class);
        v = b(g());
        Field fieldA = a((Class<?>) String.class, "value");
        if (fieldA != null && fieldA.getType() == char[].class) {
            field = fieldA;
        }
        w = b(field);
        x = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private aec() {
    }

    static byte a(byte[] bArr, long j2) {
        return f.a(bArr, i + j2);
    }

    private static int a(Class<?> cls) {
        if (h) {
            return f.f3864a.arrayBaseOffset(cls);
        }
        return -1;
    }

    static int a(Object obj, long j2) {
        return f.e(obj, j2);
    }

    static long a(Field field) {
        return f.a(field);
    }

    private static Field a(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    static void a(Object obj, long j2, double d2) {
        f.a(obj, j2, d2);
    }

    static void a(Object obj, long j2, float f2) {
        f.a(obj, j2, f2);
    }

    static void a(Object obj, long j2, int i2) {
        f.a(obj, j2, i2);
    }

    static void a(Object obj, long j2, long j3) {
        f.a(obj, j2, j3);
    }

    static void a(Object obj, long j2, Object obj2) {
        f.f3864a.putObject(obj, j2, obj2);
    }

    static void a(Object obj, long j2, boolean z) {
        f.a(obj, j2, z);
    }

    static void a(byte[] bArr, long j2, byte b2) {
        f.a((Object) bArr, i + j2, b2);
    }

    static boolean a() {
        return h;
    }

    private static int b(Class<?> cls) {
        if (h) {
            return f.f3864a.arrayIndexScale(cls);
        }
        return -1;
    }

    static long b(Object obj, long j2) {
        return f.f(obj, j2);
    }

    private static long b(Field field) {
        if (field == null || f == null) {
            return -1L;
        }
        return f.a(field);
    }

    static boolean b() {
        return g;
    }

    static Unsafe c() {
        try {
            return (Unsafe) AccessController.doPrivileged(new aed());
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Object obj, long j2, byte b2) {
        int i2 = ((((int) j2) ^ (-1)) & 3) << 3;
        a(obj, j2 & (-4), (a(obj, j2 & (-4)) & ((255 << i2) ^ (-1))) | ((b2 & 255) << i2));
    }

    private static boolean c(Class<?> cls) {
        if (!zq.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f3862c;
            cls2.getMethod("peekLong", cls, Boolean.TYPE);
            cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
            cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
            cls2.getMethod("peekInt", cls, Boolean.TYPE);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    static boolean c(Object obj, long j2) {
        return f.b(obj, j2);
    }

    static float d(Object obj, long j2) {
        return f.c(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Object obj, long j2, byte b2) {
        int i2 = (((int) j2) & 3) << 3;
        a(obj, j2 & (-4), (a(obj, j2 & (-4)) & ((255 << i2) ^ (-1))) | ((b2 & 255) << i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Object obj, long j2, boolean z) {
        c(obj, j2, (byte) (z ? 1 : 0));
    }

    static double e(Object obj, long j2) {
        return f.d(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Object obj, long j2, boolean z) {
        d(obj, j2, (byte) (z ? 1 : 0));
    }

    private static boolean e() {
        if (f3861b == null) {
            return false;
        }
        try {
            Class<?> cls = f3861b.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            cls.getMethod("getInt", Object.class, Long.TYPE);
            cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
            cls.getMethod("getObject", Object.class, Long.TYPE);
            cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
            if (zq.a()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, Long.TYPE);
            cls.getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, Long.TYPE);
            cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, Long.TYPE);
            cls.getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE);
            cls.getMethod("getDouble", Object.class, Long.TYPE);
            cls.getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f3860a;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", new StringBuilder(String.valueOf(strValueOf).length() + 71).append("platform method missing - proto runtime falling back to safer methods: ").append(strValueOf).toString());
            return false;
        }
    }

    static Object f(Object obj, long j2) {
        return f.f3864a.getObject(obj, j2);
    }

    private static boolean f() {
        if (f3861b == null) {
            return false;
        }
        try {
            Class<?> cls = f3861b.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (g() == null) {
                return false;
            }
            if (zq.a()) {
                return true;
            }
            cls.getMethod("getByte", Long.TYPE);
            cls.getMethod("putByte", Long.TYPE, Byte.TYPE);
            cls.getMethod("getInt", Long.TYPE);
            cls.getMethod("putInt", Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Long.TYPE);
            cls.getMethod("putLong", Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Long.TYPE, Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f3860a;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(th);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", new StringBuilder(String.valueOf(strValueOf).length() + 71).append("platform method missing - proto runtime falling back to safer methods: ").append(strValueOf).toString());
            return false;
        }
    }

    private static Field g() {
        Field fieldA;
        if (zq.a() && (fieldA = a((Class<?>) Buffer.class, "effectiveDirectAddress")) != null) {
            return fieldA;
        }
        Field fieldA2 = a((Class<?>) Buffer.class, "address");
        if (fieldA2 == null || fieldA2.getType() != Long.TYPE) {
            return null;
        }
        return fieldA2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte k(Object obj, long j2) {
        return (byte) (a(obj, (-4) & j2) >>> ((int) ((((-1) ^ j2) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte l(Object obj, long j2) {
        return (byte) (a(obj, (-4) & j2) >>> ((int) ((3 & j2) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean m(Object obj, long j2) {
        return k(obj, j2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean n(Object obj, long j2) {
        return l(obj, j2) != 0;
    }
}
