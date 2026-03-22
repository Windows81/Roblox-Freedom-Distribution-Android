package com.roblox.client.util;

import android.content.Context;
import android.os.AsyncTask;
import com.roblox.client.util.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b implements a.InterfaceC0133a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f7920a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f7921c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7922b = false;

    public static String a() {
        return f7921c;
    }

    public static b b() {
        if (f7920a == null) {
            synchronized (b.class) {
                if (f7920a == null) {
                    f7920a = new b();
                }
            }
        }
        return f7920a;
    }

    public void a(Context context) {
        if (!this.f7922b) {
            this.f7922b = true;
            new a(context, this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    @Override // com.roblox.client.util.a.InterfaceC0133a
    public void a(String str) {
        f7921c = str;
    }
}
