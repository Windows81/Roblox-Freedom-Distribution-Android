package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ac implements d.InterfaceC0090d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<aa> f3478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.common.api.a<?> f3479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f3480c;

    public ac(aa aaVar, com.google.android.gms.common.api.a<?> aVar, boolean z) {
        this.f3478a = new WeakReference<>(aaVar);
        this.f3479b = aVar;
        this.f3480c = z;
    }

    @Override // com.google.android.gms.common.internal.d.InterfaceC0090d
    public final void a(ConnectionResult connectionResult) {
        aa aaVar = this.f3478a.get();
        if (aaVar == null) {
            return;
        }
        com.google.android.gms.common.internal.aa.a(Looper.myLooper() == aaVar.f3472a.f3514d.c(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        aaVar.f3473b.lock();
        try {
            if (aaVar.b(0)) {
                if (!connectionResult.b()) {
                    aaVar.b(connectionResult, this.f3479b, this.f3480c);
                }
                if (aaVar.d()) {
                    aaVar.e();
                }
            }
        } finally {
            aaVar.f3473b.unlock();
        }
    }
}
