package com.google.gson.internal.a;

import com.google.gson.internal.d;
import java.lang.reflect.AccessibleObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f5358a;

    public abstract void a(AccessibleObject accessibleObject);

    static {
        f5358a = d.a() < 9 ? new a() : new c();
    }

    public static b a() {
        return f5358a;
    }
}
