package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class avb implements com.google.android.gms.ads.formats.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WeakHashMap<IBinder, avb> f4529a = new WeakHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final auy f4530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.ads.formats.b f4531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.ads.j f4532d = new com.google.android.gms.ads.j();

    private avb(auy auyVar) {
        Context context;
        com.google.android.gms.ads.formats.b bVar = null;
        this.f4530b = auyVar;
        try {
            context = (Context) com.google.android.gms.b.b.a(auyVar.e());
        } catch (RemoteException | NullPointerException e) {
            mj.b("", e);
            context = null;
        }
        if (context != null) {
            com.google.android.gms.ads.formats.b bVar2 = new com.google.android.gms.ads.formats.b(context);
            try {
                bVar = this.f4530b.a(com.google.android.gms.b.b.a(bVar2)) ? bVar2 : null;
            } catch (RemoteException e2) {
                mj.b("", e2);
            }
        }
        this.f4531c = bVar;
    }

    public static avb a(auy auyVar) {
        avb avbVar;
        synchronized (f4529a) {
            avbVar = f4529a.get(auyVar.asBinder());
            if (avbVar == null) {
                avbVar = new avb(auyVar);
                f4529a.put(auyVar.asBinder(), avbVar);
            }
        }
        return avbVar;
    }

    @Override // com.google.android.gms.ads.formats.i
    public final String a() {
        try {
            return this.f4530b.l();
        } catch (RemoteException e) {
            mj.b("", e);
            return null;
        }
    }

    public final auy b() {
        return this.f4530b;
    }
}
