package com.google.android.gms.common.b;

import com.google.android.gms.common.b.a;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class b implements a.InterfaceC0073a {
    b() {
    }

    @Override // com.google.android.gms.common.b.a.InterfaceC0073a
    public final ScheduledExecutorService a() {
        return Executors.newSingleThreadScheduledExecutor();
    }
}
