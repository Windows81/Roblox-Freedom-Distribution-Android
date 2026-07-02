package android.support.v4.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.support.v4.a.a.a;
import android.support.v4.e.b;
import android.support.v4.g.m;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class e extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class f860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Constructor f861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Method f862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Method f863d;

    e() {
    }

    static {
        Method method;
        Constructor<?> constructor;
        Class<?> cls;
        Method method2 = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls2.getConstructor(new Class[0]);
            Method method3 = cls2.getMethod("addFontWeightStyle", ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls2, 1).getClass());
            method2 = method3;
            constructor = constructor2;
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            method = null;
            constructor = null;
            cls = null;
        }
        f861b = constructor;
        f860a = cls;
        f862c = method2;
        f863d = method;
    }

    public static boolean a() {
        if (f862c == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return f862c != null;
    }

    private static Object b() {
        try {
            return f861b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    private static boolean a(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f862c.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    private static Typeface a(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f860a, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f863d.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // android.support.v4.b.g, android.support.v4.b.c.a
    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0018b[] c0018bArr, int i) throws Throwable {
        Object objB = b();
        m mVar = new m();
        for (b.C0018b c0018b : c0018bArr) {
            Uri uriA = c0018b.a();
            ByteBuffer byteBufferA = (ByteBuffer) mVar.get(uriA);
            if (byteBufferA == null) {
                byteBufferA = h.a(context, cancellationSignal, uriA);
                mVar.put(uriA, byteBufferA);
            }
            if (!a(objB, byteBufferA, c0018b.b(), c0018b.c(), c0018b.d())) {
                return null;
            }
        }
        return Typeface.create(a(objB), i);
    }

    @Override // android.support.v4.b.g, android.support.v4.b.c.a
    public Typeface a(Context context, a.b bVar, Resources resources, int i) {
        Object objB = b();
        for (a.c cVar : bVar.a()) {
            ByteBuffer byteBufferA = h.a(context, resources, cVar.d());
            if (byteBufferA == null || !a(objB, byteBufferA, 0, cVar.b(), cVar.c())) {
                return null;
            }
        }
        return a(objB);
    }
}
