package com.google.gson.internal.a;

import com.google.gson.m;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class c extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Class f5359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5360b = b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Field f5361c = c();

    c() {
    }

    @Override // com.google.gson.internal.a.b
    public void a(AccessibleObject accessibleObject) {
        if (b(accessibleObject)) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e2) {
            throw new m("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e2);
        }
    }

    boolean b(AccessibleObject accessibleObject) {
        if (this.f5360b != null && this.f5361c != null) {
            try {
                f5359a.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f5360b, accessibleObject, Long.valueOf(((Long) f5359a.getMethod("objectFieldOffset", Field.class).invoke(this.f5360b, this.f5361c)).longValue()), true);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static Object b() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f5359a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private static Field c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }
}
