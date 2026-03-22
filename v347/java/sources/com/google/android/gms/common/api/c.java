package com.google.android.gms.common.api;

import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.ag;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final android.support.v4.g.a<ag<?>, ConnectionResult> f3327a;

    public c(android.support.v4.g.a<ag<?>, ConnectionResult> aVar) {
        this.f3327a = aVar;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (ag<?> agVar : this.f3327a.keySet()) {
            ConnectionResult connectionResult = this.f3327a.get(agVar);
            if (connectionResult.b()) {
                z = false;
            }
            String strA = agVar.a();
            String strValueOf = String.valueOf(connectionResult);
            arrayList.add(new StringBuilder(String.valueOf(strA).length() + 2 + String.valueOf(strValueOf).length()).append(strA).append(": ").append(strValueOf).toString());
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("None of the queried APIs are available. ");
        } else {
            sb.append("Some of the queried APIs are unavailable. ");
        }
        sb.append(TextUtils.join("; ", arrayList));
        return sb.toString();
    }
}
