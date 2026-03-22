package com.roblox.client.ae;

import android.content.Context;
import android.os.AsyncTask;
import com.roblox.client.ae.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements a.InterfaceC0122a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f5636a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f5637c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5638b = false;

    public static String a() {
        return f5637c;
    }

    public static b b() {
        if (f5636a == null) {
            synchronized (b.class) {
                if (f5636a == null) {
                    f5636a = new b();
                }
            }
        }
        return f5636a;
    }

    public void a(Context context) {
        if (this.f5638b) {
            return;
        }
        this.f5638b = true;
        new a(context, this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override // com.roblox.client.ae.a.InterfaceC0122a
    public void a(String str) {
        f5637c = str;
    }
}
