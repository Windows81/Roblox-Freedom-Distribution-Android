package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.a.a.c;
import androidx.core.e.b;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class e extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class f1455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Constructor f1456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Method f1457c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Method f1458d;

    e() {
    }

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi24Impl", e2.getClass().getName(), e2);
            cls = null;
            method = null;
            method2 = null;
        }
        f1456b = constructor;
        f1455a = cls;
        f1457c = method2;
        f1458d = method;
    }

    public static boolean a() {
        if (f1457c == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return f1457c != null;
    }

    private static Object b() {
        try {
            return f1456b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean a(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f1457c.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static Typeface a(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f1455a, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f1458d.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // androidx.core.graphics.h
    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0028b[] c0028bArr, int i) {
        Object objB = b();
        androidx.c.g gVar = new androidx.c.g();
        for (b.C0028b c0028b : c0028bArr) {
            Uri uriA = c0028b.a();
            ByteBuffer byteBufferA = (ByteBuffer) gVar.get(uriA);
            if (byteBufferA == null) {
                byteBufferA = i.a(context, cancellationSignal, uriA);
                gVar.put(uriA, byteBufferA);
            }
            if (!a(objB, byteBufferA, c0028b.b(), c0028b.c(), c0028b.d())) {
                return null;
            }
        }
        return Typeface.create(a(objB), i);
    }

    @Override // androidx.core.graphics.h
    public Typeface a(Context context, c.b bVar, Resources resources, int i) {
        Object objB = b();
        for (c.C0024c c0024c : bVar.a()) {
            ByteBuffer byteBufferA = i.a(context, resources, c0024c.f());
            if (byteBufferA == null || !a(objB, byteBufferA, c0024c.e(), c0024c.b(), c0024c.c())) {
                return null;
            }
        }
        return a(objB);
    }
}
