package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum abl {
    VOID(Void.class, Void.class, null),
    INT(Integer.TYPE, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, false),
    STRING(String.class, String.class, ""),
    BYTE_STRING(zv.class, zv.class, zv.f5750a),
    ENUM(Integer.TYPE, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);

    private final Class<?> k;
    private final Class<?> l;
    private final Object m;

    abl(Class cls, Class cls2, Object obj) {
        this.k = cls;
        this.l = cls2;
        this.m = obj;
    }

    public final Class<?> a() {
        return this.l;
    }
}
