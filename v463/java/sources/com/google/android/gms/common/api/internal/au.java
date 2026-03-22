package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface au {
    <A extends a.b, R extends com.google.android.gms.common.api.l, T extends c.a<R, A>> T a(T t);

    void a();

    void a(int i);

    void a(Bundle bundle);

    void a(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z);

    <A extends a.b, T extends c.a<? extends com.google.android.gms.common.api.l, A>> T b(T t);

    boolean b();

    void c();
}
