package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.core.a.a.c;
import androidx.core.e.b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Class f1459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Constructor f1460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final Method f1461c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final Method f1462d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final Method f1463e;
    protected final Method f;
    protected final Method g;

    public f() throws NoSuchMethodException {
        Method methodF;
        Constructor constructorA;
        Method methodB;
        Method methodC;
        Method methodD;
        Method methodE;
        Class cls = null;
        try {
            Class clsA = a();
            constructorA = a(clsA);
            methodB = b(clsA);
            methodC = c(clsA);
            methodD = d(clsA);
            methodE = e(clsA);
            methodF = f(clsA);
            cls = clsA;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e2.getClass().getName(), e2);
            methodF = null;
            constructorA = null;
            methodB = null;
            methodC = null;
            methodD = null;
            methodE = null;
        }
        this.f1459a = cls;
        this.f1460b = constructorA;
        this.f1461c = methodB;
        this.f1462d = methodC;
        this.f1463e = methodD;
        this.f = methodE;
        this.g = methodF;
    }

    private boolean b() {
        if (this.f1461c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f1461c != null;
    }

    private Object c() {
        try {
            return this.f1460b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private boolean a(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f1461c.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private boolean a(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.f1462d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    protected Typeface a(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f1459a, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.g.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private boolean b(Object obj) {
        try {
            return ((Boolean) this.f1463e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private void c(Object obj) {
        try {
            this.f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // androidx.core.graphics.h
    public Typeface a(Context context, c.b bVar, Resources resources, int i) {
        if (!b()) {
            return super.a(context, bVar, resources, i);
        }
        Object objC = c();
        for (c.C0024c c0024c : bVar.a()) {
            if (!a(context, objC, c0024c.a(), c0024c.e(), c0024c.b(), c0024c.c() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c0024c.d()))) {
                c(objC);
                return null;
            }
        }
        if (b(objC)) {
            return a(objC);
        }
        return null;
    }

    @Override // androidx.core.graphics.d, androidx.core.graphics.h
    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0028b[] c0028bArr, int i) {
        if (c0028bArr.length < 1) {
            return null;
        }
        if (!b()) {
            b.C0028b c0028bA = a(c0028bArr, i);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(c0028bA.a(), "r", cancellationSignal);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(c0028bA.c()).setItalic(c0028bA.d()).build();
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return typefaceBuild;
                } finally {
                }
            } catch (IOException unused) {
                return null;
            }
        } else {
            Map<Uri, ByteBuffer> mapA = androidx.core.e.b.a(context, c0028bArr, cancellationSignal);
            Object objC = c();
            boolean z = false;
            for (b.C0028b c0028b : c0028bArr) {
                ByteBuffer byteBuffer = mapA.get(c0028b.a());
                if (byteBuffer != null) {
                    if (!a(objC, byteBuffer, c0028b.b(), c0028b.c(), c0028b.d() ? 1 : 0)) {
                        c(objC);
                        return null;
                    }
                    z = true;
                }
            }
            if (!z) {
                c(objC);
                return null;
            }
            if (b(objC)) {
                return Typeface.create(a(objC), i);
            }
            return null;
        }
    }

    @Override // androidx.core.graphics.h
    public Typeface a(Context context, Resources resources, int i, String str, int i2) {
        if (!b()) {
            return super.a(context, resources, i, str, i2);
        }
        Object objC = c();
        if (!a(context, objC, str, 0, -1, -1, null)) {
            c(objC);
            return null;
        }
        if (b(objC)) {
            return a(objC);
        }
        return null;
    }

    protected Class a() throws ClassNotFoundException {
        return Class.forName("android.graphics.FontFamily");
    }

    protected Constructor a(Class cls) throws NoSuchMethodException {
        return cls.getConstructor(new Class[0]);
    }

    protected Method b(Class cls) throws NoSuchMethodException {
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
    }

    protected Method c(Class cls) throws NoSuchMethodException {
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
    }

    protected Method d(Class cls) throws NoSuchMethodException {
        return cls.getMethod("freeze", new Class[0]);
    }

    protected Method e(Class cls) throws NoSuchMethodException {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    protected Method f(Class cls) throws NoSuchMethodException {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
