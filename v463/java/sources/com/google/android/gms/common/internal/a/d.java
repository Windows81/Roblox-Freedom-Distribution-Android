package com.google.android.gms.common.internal.a;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d implements c {

    /* JADX INFO: Access modifiers changed from: private */
    static class a extends com.google.android.gms.common.internal.a.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c.b<Status> f3739a;

        public a(c.b<Status> bVar) {
            this.f3739a = bVar;
        }

        @Override // com.google.android.gms.common.internal.a.a, com.google.android.gms.common.internal.a.f
        public final void a(int i) throws RemoteException {
            this.f3739a.a(new Status(i));
        }
    }

    @Override // com.google.android.gms.common.internal.a.c
    public final com.google.android.gms.common.api.g<Status> a(com.google.android.gms.common.api.f fVar) {
        return fVar.b(new i(this, fVar));
    }
}
