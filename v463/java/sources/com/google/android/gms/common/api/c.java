package com.google.android.gms.common.api;

import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.cg;
import com.google.android.gms.common.internal.aa;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.c.a<cg<?>, ConnectionResult> f3447a;

    public c(androidx.c.a<cg<?>, ConnectionResult> aVar) {
        this.f3447a = aVar;
    }

    public final androidx.c.a<cg<?>, ConnectionResult> a() {
        return this.f3447a;
    }

    public ConnectionResult a(e<? extends a.d> eVar) {
        Object objC = eVar.c();
        aa.b(this.f3447a.get(objC) != null, "The given API was not part of the availability request.");
        return this.f3447a.get(objC);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (cg<?> cgVar : this.f3447a.keySet()) {
            ConnectionResult connectionResult = this.f3447a.get(cgVar);
            if (connectionResult.b()) {
                z = false;
            }
            String strA = cgVar.a();
            String strValueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(strA).length() + 2 + String.valueOf(strValueOf).length());
            sb.append(strA);
            sb.append(": ");
            sb.append(strValueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(z ? "None of the queried APIs are available. " : "Some of the queried APIs are unavailable. ");
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}
