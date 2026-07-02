package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.b.c;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class anz extends com.google.android.gms.b.c<api> {
    public anz() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public final apf a(Context context, zzjn zzjnVar, String str, bbu bbuVar, int i) {
        apf aphVar;
        try {
            IBinder iBinderA = a(context).a(com.google.android.gms.b.b.a(context), zzjnVar, str, bbuVar, 12451000, i);
            if (iBinderA == null) {
                aphVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinderA.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                aphVar = iInterfaceQueryLocalInterface instanceof apf ? (apf) iInterfaceQueryLocalInterface : new aph(iBinderA);
            }
            return aphVar;
        } catch (RemoteException | c.a e) {
            mj.a("Could not create remote AdManager.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.b.c
    protected final /* synthetic */ api a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return iInterfaceQueryLocalInterface instanceof api ? (api) iInterfaceQueryLocalInterface : new apj(iBinder);
    }
}
