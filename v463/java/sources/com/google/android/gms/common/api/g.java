package com.google.android.gms.common.api;

import com.google.android.gms.common.api.l;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class g<R extends l> {

    public interface a {
        void a(Status status);
    }

    public abstract R a(long j, TimeUnit timeUnit);

    public abstract void a();

    public void a(a aVar) {
        throw new UnsupportedOperationException();
    }

    public abstract void a(m<? super R> mVar);

    public abstract boolean b();

    public Integer c() {
        throw new UnsupportedOperationException();
    }
}
