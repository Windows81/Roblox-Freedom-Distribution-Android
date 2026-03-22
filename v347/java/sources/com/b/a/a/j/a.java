package com.b.a.a.j;

import android.content.Context;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InterfaceC0052a f2394a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f2395b;

    /* JADX INFO: renamed from: com.b.a.a.j.a$a, reason: collision with other inner class name */
    public interface InterfaceC0052a {
    }

    public abstract void a();

    public abstract void a(b bVar, boolean z);

    public abstract void b(b bVar);

    protected a() {
    }

    public void a(Context context, InterfaceC0052a interfaceC0052a) {
        this.f2395b = context.getApplicationContext();
        this.f2394a = interfaceC0052a;
    }
}
