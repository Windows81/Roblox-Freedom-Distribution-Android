package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface bh {
    <A extends a.b, R extends com.google.android.gms.common.api.l, T extends c.a<R, A>> T a(T t);

    void a();

    void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    boolean a(l lVar);

    ConnectionResult b();

    <A extends a.b, T extends c.a<? extends com.google.android.gms.common.api.l, A>> T b(T t);

    void c();

    boolean f();

    void h();

    void i();
}
