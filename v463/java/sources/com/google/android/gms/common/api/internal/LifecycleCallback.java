package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class LifecycleCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final h f3471a;

    protected LifecycleCallback(h hVar) {
        this.f3471a = hVar;
    }

    public static h a(Activity activity) {
        return a(new g(activity));
    }

    protected static h a(g gVar) {
        if (gVar.a()) {
            return bu.a(gVar.d());
        }
        if (gVar.b()) {
            return bj.a(gVar.c());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    private static h getChimeraLifecycleFragmentImpl(g gVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    public final Activity a() {
        return this.f3471a.a();
    }

    public void a(int i, int i2, Intent intent) {
    }

    public void a(Bundle bundle) {
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public void b() {
    }

    public void b(Bundle bundle) {
    }

    public void c() {
    }

    public void d() {
    }

    public void e() {
    }
}
