package com.google.android.gms.common.c;

import com.google.android.gms.common.c.a;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class b implements a.InterfaceC0087a {
    b() {
    }

    @Override // com.google.android.gms.common.c.a.InterfaceC0087a
    public final ScheduledExecutorService a() {
        return Executors.newSingleThreadScheduledExecutor();
    }
}
