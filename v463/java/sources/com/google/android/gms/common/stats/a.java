package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile a f3850b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<String> f3852d = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<String> f3853e = Collections.EMPTY_LIST;
    private final List<String> f = Collections.EMPTY_LIST;
    private final List<String> g = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f3849a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f3851c = false;

    private a() {
    }

    public static a a() {
        if (f3850b == null) {
            synchronized (f3849a) {
                if (f3850b == null) {
                    f3850b = new a();
                }
            }
        }
        return f3850b;
    }

    private static boolean a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, boolean z) {
        if (z) {
            ComponentName component = intent.getComponent();
            if (component == null ? false : com.google.android.gms.common.util.c.a(context, component.getPackageName())) {
                Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                return false;
            }
        }
        return context.bindService(intent, serviceConnection, i);
    }

    public void a(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
    }

    public void a(Context context, ServiceConnection serviceConnection, String str, Intent intent) {
    }

    public boolean a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return a(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    public boolean a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        return a(context, str, intent, serviceConnection, i, true);
    }

    public void b(Context context, ServiceConnection serviceConnection) {
    }
}
