package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.f;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ch extends cj {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray<a> f3592e;

    private class a implements f.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f3593a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.google.android.gms.common.api.f f3594b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final f.c f3595c;

        public a(int i, com.google.android.gms.common.api.f fVar, f.c cVar) {
            this.f3593a = i;
            this.f3594b = fVar;
            this.f3595c = cVar;
            fVar.a(this);
        }

        @Override // com.google.android.gms.common.api.f.c
        public final void a(ConnectionResult connectionResult) {
            String strValueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
            sb.append("beginFailureResolution for ");
            sb.append(strValueOf);
            Log.d("AutoManageHelper", sb.toString());
            ch.this.b(connectionResult, this.f3593a);
        }
    }

    private ch(h hVar) {
        super(hVar);
        this.f3592e = new SparseArray<>();
        this.f3471a.a("AutoManageHelper", this);
    }

    private final a b(int i) {
        if (this.f3592e.size() <= i) {
            return null;
        }
        SparseArray<a> sparseArray = this.f3592e;
        return sparseArray.get(sparseArray.keyAt(i));
    }

    public static ch b(g gVar) {
        h hVarA = a(gVar);
        ch chVar = (ch) hVarA.a("AutoManageHelper", ch.class);
        return chVar != null ? chVar : new ch(hVarA);
    }

    public final void a(int i) {
        a aVar = this.f3592e.get(i);
        this.f3592e.remove(i);
        if (aVar != null) {
            aVar.f3594b.b(aVar);
            aVar.f3594b.g();
        }
    }

    public final void a(int i, com.google.android.gms.common.api.f fVar, f.c cVar) {
        com.google.android.gms.common.internal.aa.a(fVar, "GoogleApiClient instance cannot be null");
        boolean z = this.f3592e.indexOfKey(i) < 0;
        StringBuilder sb = new StringBuilder(54);
        sb.append("Already managing a GoogleApiClient with id ");
        sb.append(i);
        com.google.android.gms.common.internal.aa.a(z, sb.toString());
        ck ckVar = this.f3603c.get();
        boolean z2 = this.f3602b;
        String strValueOf = String.valueOf(ckVar);
        StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 49);
        sb2.append("starting AutoManage for client ");
        sb2.append(i);
        sb2.append(" ");
        sb2.append(z2);
        sb2.append(" ");
        sb2.append(strValueOf);
        Log.d("AutoManageHelper", sb2.toString());
        this.f3592e.put(i, new a(i, fVar, cVar));
        if (this.f3602b && ckVar == null) {
            String strValueOf2 = String.valueOf(fVar);
            StringBuilder sb3 = new StringBuilder(String.valueOf(strValueOf2).length() + 11);
            sb3.append("connecting ");
            sb3.append(strValueOf2);
            Log.d("AutoManageHelper", sb3.toString());
            fVar.e();
        }
    }

    @Override // com.google.android.gms.common.api.internal.cj
    protected final void a(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        a aVar = this.f3592e.get(i);
        if (aVar != null) {
            a(i);
            f.c cVar = aVar.f3595c;
            if (cVar != null) {
                cVar.a(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.f3592e.size(); i++) {
            a aVarB = b(i);
            if (aVarB != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(aVarB.f3593a);
                printWriter.println(":");
                aVarB.f3594b.a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.cj, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void b() {
        super.b();
        boolean z = this.f3602b;
        String strValueOf = String.valueOf(this.f3592e);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 14);
        sb.append("onStart ");
        sb.append(z);
        sb.append(" ");
        sb.append(strValueOf);
        Log.d("AutoManageHelper", sb.toString());
        if (this.f3603c.get() == null) {
            for (int i = 0; i < this.f3592e.size(); i++) {
                a aVarB = b(i);
                if (aVarB != null) {
                    aVarB.f3594b.e();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.cj, com.google.android.gms.common.api.internal.LifecycleCallback
    public void d() {
        super.d();
        for (int i = 0; i < this.f3592e.size(); i++) {
            a aVarB = b(i);
            if (aVarB != null) {
                aVarB.f3594b.g();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.cj
    protected final void f() {
        for (int i = 0; i < this.f3592e.size(); i++) {
            a aVarB = b(i);
            if (aVarB != null) {
                aVarB.f3594b.e();
            }
        }
    }
}
