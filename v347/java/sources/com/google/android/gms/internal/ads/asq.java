package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class asq implements com.google.android.gms.ads.internal.gmsg.ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ asp f4445a;

    asq(asp aspVar) {
        this.f4445a = aspVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        try {
            this.f4445a.f4442b = Long.valueOf(Long.parseLong(map.get("timestamp")));
        } catch (NumberFormatException e) {
            jd.c("Failed to call parse unconfirmedClickTimestamp.");
        }
        this.f4445a.f4441a = map.get("id");
        String str = map.get("asset_id");
        if (this.f4445a.e == null) {
            jd.b("Received unconfirmed click but UnconfirmedClickListener is null.");
            return;
        }
        try {
            this.f4445a.e.a(str);
        } catch (RemoteException e2) {
            mj.d("#007 Could not call remote method.", e2);
        }
    }
}
