package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class aua extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final atx f4512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c.b> f4513b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f4514c;

    public aua(atx atxVar) {
        aub audVar;
        IBinder iBinder;
        this.f4512a = atxVar;
        try {
            this.f4514c = this.f4512a.a();
        } catch (RemoteException e) {
            mj.b("", e);
            this.f4514c = "";
        }
        try {
            for (aub aubVar : atxVar.b()) {
                if (!(aubVar instanceof IBinder) || (iBinder = (IBinder) aubVar) == null) {
                    audVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    audVar = iInterfaceQueryLocalInterface instanceof aub ? (aub) iInterfaceQueryLocalInterface : new aud(iBinder);
                }
                if (audVar != null) {
                    this.f4513b.add(new aue(audVar));
                }
            }
        } catch (RemoteException e2) {
            mj.b("", e2);
        }
    }
}
