package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.aa;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class h {

    private static final class a<R extends l> extends BasePendingResult<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final R f3464b;

        public a(f fVar, R r) {
            super(fVar);
            this.f3464b = r;
        }

        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        protected final R a(Status status) {
            return this.f3464b;
        }
    }

    public static <R extends l> g<R> a(R r, f fVar) {
        aa.a(r, "Result must not be null");
        aa.b(!r.b().d(), "Status code must not be SUCCESS");
        a aVar = new a(fVar, r);
        aVar.b(r);
        return aVar;
    }
}
