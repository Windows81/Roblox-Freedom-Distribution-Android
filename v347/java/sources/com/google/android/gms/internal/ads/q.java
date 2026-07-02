package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.b.c;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class q extends com.google.android.gms.b.c<u> {
    public q() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    public final r a(Activity activity) {
        r tVar;
        try {
            IBinder iBinderA = a((Context) activity).a(com.google.android.gms.b.b.a(activity));
            if (iBinderA == null) {
                tVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinderA.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
                tVar = iInterfaceQueryLocalInterface instanceof r ? (r) iInterfaceQueryLocalInterface : new t(iBinderA);
            }
            return tVar;
        } catch (RemoteException e) {
            mj.c("Could not create remote AdOverlay.", e);
            return null;
        } catch (c.a e2) {
            mj.c("Could not create remote AdOverlay.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.b.c
    protected final /* synthetic */ u a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return iInterfaceQueryLocalInterface instanceof u ? (u) iInterfaceQueryLocalInterface : new v(iBinder);
    }
}
