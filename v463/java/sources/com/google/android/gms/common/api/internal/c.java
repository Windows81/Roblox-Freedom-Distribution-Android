package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    public static abstract class a<R extends com.google.android.gms.common.api.l, A extends a.b> extends BasePendingResult<R> implements b<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a.c<A> f3577b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.google.android.gms.common.api.a<?> f3578c;

        protected a(com.google.android.gms.common.api.a<?> aVar, com.google.android.gms.common.api.f fVar) {
            super((com.google.android.gms.common.api.f) com.google.android.gms.common.internal.aa.a(fVar, "GoogleApiClient must not be null"));
            com.google.android.gms.common.internal.aa.a(aVar, "Api must not be null");
            this.f3577b = (a.c<A>) aVar.c();
            this.f3578c = aVar;
        }

        private void a(RemoteException remoteException) {
            b(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        protected abstract void a(A a2) throws RemoteException;

        protected void a(R r) {
        }

        @Override // com.google.android.gms.common.api.internal.c.b
        public /* synthetic */ void a(Object obj) {
            super.b((com.google.android.gms.common.api.l) obj);
        }

        public final void b(Status status) {
            com.google.android.gms.common.internal.aa.b(!status.d(), "Failed result must not be success");
            R rA = a(status);
            b(rA);
            a((com.google.android.gms.common.api.l) rA);
        }

        public final void b(A a2) throws DeadObjectException {
            if (a2 instanceof com.google.android.gms.common.internal.ad) {
                a2 = ((com.google.android.gms.common.internal.ad) a2).e();
            }
            try {
                a((a.b) a2);
            } catch (DeadObjectException e2) {
                a((RemoteException) e2);
                throw e2;
            } catch (RemoteException e3) {
                a(e3);
            }
        }

        public final a.c<A> d() {
            return this.f3577b;
        }

        public final com.google.android.gms.common.api.a<?> e() {
            return this.f3578c;
        }
    }

    public interface b<R> {
        void a(R r);
    }
}
