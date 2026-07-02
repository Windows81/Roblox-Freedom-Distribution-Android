package android.support.v4.b;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.support.v4.a.a.a;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class f extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class f864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Constructor f865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Method f866c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Method f867d;
    private static final Method e;
    private static final Method f;
    private static final Method g;

    static {
        Method declaredMethod;
        Method method;
        Method method2;
        Method method3;
        Constructor<?> constructor;
        Class<?> cls;
        Method method4 = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls2.getConstructor(new Class[0]);
            Method method5 = cls2.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
            Method method6 = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
            Method method7 = cls2.getMethod("freeze", new Class[0]);
            Method method8 = cls2.getMethod("abortCreation", new Class[0]);
            declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls2, 1).getClass(), Integer.TYPE, Integer.TYPE);
            declaredMethod.setAccessible(true);
            method4 = method8;
            method = method7;
            method2 = method6;
            method3 = method5;
            constructor = constructor2;
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e2.getClass().getName(), e2);
            declaredMethod = null;
            method = null;
            method2 = null;
            method3 = null;
            constructor = null;
            cls = null;
        }
        f865b = constructor;
        f864a = cls;
        f866c = method3;
        f867d = method2;
        e = method;
        f = method4;
        g = declaredMethod;
    }

    private static boolean a() {
        if (f866c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return f866c != null;
    }

    private static Object b() {
        try {
            return f865b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean a(Context context, Object obj, String str, int i, int i2, int i3) {
        try {
            return ((Boolean) f866c.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean a(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) f867d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static Typeface a(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f864a, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) g.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean b(Object obj) {
        try {
            return ((Boolean) e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void c(Object obj) {
        try {
            f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // android.support.v4.b.g, android.support.v4.b.c.a
    public Typeface a(Context context, a.b bVar, Resources resources, int i) {
        if (!a()) {
            return super.a(context, bVar, resources, i);
        }
        Object objB = b();
        for (a.c cVar : bVar.a()) {
            if (!a(context, objB, cVar.a(), 0, cVar.b(), cVar.c() ? 1 : 0)) {
                c(objB);
                return null;
            }
        }
        if (b(objB)) {
            return a(objB);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0058  */
    @Override // android.support.v4.b.d, android.support.v4.b.g, android.support.v4.b.c.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.Typeface a(android.content.Context r11, android.os.CancellationSignal r12, android.support.v4.e.b.C0018b[] r13, int r14) throws java.lang.Throwable {
        /*
            r10 = this;
            int r0 = r13.length
            r1 = 1
            if (r0 >= r1) goto L6
            r0 = 0
        L5:
            return r0
        L6:
            boolean r0 = a()
            if (r0 != 0) goto L67
            android.support.v4.e.b$b r0 = r10.a(r13, r14)
            android.content.ContentResolver r1 = r11.getContentResolver()
            android.net.Uri r2 = r0.a()     // Catch: java.io.IOException -> L49
            java.lang.String r3 = "r"
            android.os.ParcelFileDescriptor r2 = r1.openFileDescriptor(r2, r3, r12)     // Catch: java.io.IOException -> L49
            r1 = 0
            android.graphics.Typeface$Builder r3 = new android.graphics.Typeface$Builder     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> Lc3
            java.io.FileDescriptor r4 = r2.getFileDescriptor()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> Lc3
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> Lc3
            int r4 = r0.c()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> Lc3
            android.graphics.Typeface$Builder r3 = r3.setWeight(r4)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> Lc3
            boolean r0 = r0.d()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> Lc3
            android.graphics.Typeface$Builder r0 = r3.setItalic(r0)     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> Lc3
            android.graphics.Typeface r0 = r0.build()     // Catch: java.lang.Throwable -> L50 java.lang.Throwable -> Lc3
            if (r2 == 0) goto L5
            if (r1 == 0) goto L4c
            r2.close()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L49
            goto L5
        L44:
            r2 = move-exception
            r1.addSuppressed(r2)     // Catch: java.io.IOException -> L49
            goto L5
        L49:
            r0 = move-exception
            r0 = 0
            goto L5
        L4c:
            r2.close()     // Catch: java.io.IOException -> L49
            goto L5
        L50:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L52
        L52:
            r1 = move-exception
            r9 = r1
            r1 = r0
            r0 = r9
        L56:
            if (r2 == 0) goto L5d
            if (r1 == 0) goto L63
            r2.close()     // Catch: java.io.IOException -> L49 java.lang.Throwable -> L5e
        L5d:
            throw r0     // Catch: java.io.IOException -> L49
        L5e:
            r2 = move-exception
            r1.addSuppressed(r2)     // Catch: java.io.IOException -> L49
            goto L5d
        L63:
            r2.close()     // Catch: java.io.IOException -> L49
            goto L5d
        L67:
            java.util.Map r3 = android.support.v4.e.b.a(r11, r13, r12)
            java.lang.Object r4 = b()
            r1 = 0
            int r5 = r13.length
            r0 = 0
            r2 = r0
        L73:
            if (r2 >= r5) goto La8
            r6 = r13[r2]
            android.net.Uri r0 = r6.a()
            java.lang.Object r0 = r3.get(r0)
            java.nio.ByteBuffer r0 = (java.nio.ByteBuffer) r0
            if (r0 != 0) goto L89
            r0 = r1
        L84:
            int r1 = r2 + 1
            r2 = r1
            r1 = r0
            goto L73
        L89:
            int r7 = r6.b()
            int r8 = r6.c()
            boolean r1 = r6.d()
            if (r1 == 0) goto La4
            r1 = 1
        L98:
            boolean r0 = a(r4, r0, r7, r8, r1)
            if (r0 != 0) goto La6
            c(r4)
            r0 = 0
            goto L5
        La4:
            r1 = 0
            goto L98
        La6:
            r0 = 1
            goto L84
        La8:
            if (r1 != 0) goto Lb0
            c(r4)
            r0 = 0
            goto L5
        Lb0:
            boolean r0 = b(r4)
            if (r0 != 0) goto Lb9
            r0 = 0
            goto L5
        Lb9:
            android.graphics.Typeface r0 = a(r4)
            android.graphics.Typeface r0 = android.graphics.Typeface.create(r0, r14)
            goto L5
        Lc3:
            r0 = move-exception
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.b.f.a(android.content.Context, android.os.CancellationSignal, android.support.v4.e.b$b[], int):android.graphics.Typeface");
    }

    @Override // android.support.v4.b.g, android.support.v4.b.c.a
    public Typeface a(Context context, Resources resources, int i, String str, int i2) {
        if (!a()) {
            return super.a(context, resources, i, str, i2);
        }
        Object objB = b();
        if (!a(context, objB, str, 0, -1, -1)) {
            c(objB);
            return null;
        }
        if (b(objB)) {
            return a(objB);
        }
        return null;
    }
}
