package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class di {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f4197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f4199c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final long f4200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final zzer f4201e;
    private final String f;

    di(fc fcVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzer zzerVar;
        com.google.android.gms.common.internal.aa.a(str2);
        com.google.android.gms.common.internal.aa.a(str3);
        this.f4197a = str2;
        this.f4198b = str3;
        this.f = TextUtils.isEmpty(str) ? null : str;
        this.f4199c = j;
        this.f4200d = j2;
        if (j2 != 0 && j2 > j) {
            fcVar.q().y().a("Event created with reverse previous/current timestamps. appId", dx.a(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzerVar = new zzer(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    fcVar.q().v().a("Param name can't be null");
                } else {
                    Object objA = fcVar.m().a(next, bundle2.get(next));
                    if (objA == null) {
                        fcVar.q().y().a("Param value can't be null", fcVar.n().b(next));
                    } else {
                        fcVar.m().a(bundle2, next, objA);
                    }
                }
                it.remove();
            }
            zzerVar = new zzer(bundle2);
        }
        this.f4201e = zzerVar;
    }

    private di(fc fcVar, String str, String str2, String str3, long j, long j2, zzer zzerVar) {
        com.google.android.gms.common.internal.aa.a(str2);
        com.google.android.gms.common.internal.aa.a(str3);
        com.google.android.gms.common.internal.aa.a(zzerVar);
        this.f4197a = str2;
        this.f4198b = str3;
        this.f = TextUtils.isEmpty(str) ? null : str;
        this.f4199c = j;
        this.f4200d = j2;
        if (j2 != 0 && j2 > j) {
            fcVar.q().y().a("Event created with reverse previous/current timestamps. appId, name", dx.a(str2), dx.a(str3));
        }
        this.f4201e = zzerVar;
    }

    final di a(fc fcVar, long j) {
        return new di(fcVar, this.f, this.f4197a, this.f4198b, this.f4199c, j, this.f4201e);
    }

    public final String toString() {
        String str = this.f4197a;
        String str2 = this.f4198b;
        String strValueOf = String.valueOf(this.f4201e);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(strValueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(strValueOf);
        sb.append('}');
        return sb.toString();
    }
}
