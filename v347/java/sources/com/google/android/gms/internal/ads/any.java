package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.b.c;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class any extends com.google.android.gms.b.c<apd> {
    public any() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public final apa a(Context context, String str, bbu bbuVar) {
        apa apcVar;
        try {
            IBinder iBinderA = a(context).a(com.google.android.gms.b.b.a(context), str, bbuVar, 12451000);
            if (iBinderA == null) {
                apcVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinderA.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                apcVar = iInterfaceQueryLocalInterface instanceof apa ? (apa) iInterfaceQueryLocalInterface : new apc(iBinderA);
            }
            return apcVar;
        } catch (RemoteException | c.a e) {
            mj.c("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.b.c
    protected final /* synthetic */ apd a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return iInterfaceQueryLocalInterface instanceof apd ? (apd) iInterfaceQueryLocalInterface : new ape(iBinder);
    }
}
