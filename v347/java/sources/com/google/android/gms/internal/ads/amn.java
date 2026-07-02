package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class amn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ajc f4211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f4212b;

    public amn() {
    }

    public amn(Context context) {
        aro.a(context);
        if (((Boolean) aoo.f().a(aro.db)).booleanValue()) {
            try {
                this.f4211a = ajd.a(DynamiteModule.a(context, DynamiteModule.f3606a, ModuleDescriptor.MODULE_ID).a("com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"));
                com.google.android.gms.b.b.a(context);
                this.f4211a.a(com.google.android.gms.b.b.a(context), "GMA_SDK");
                this.f4212b = true;
            } catch (RemoteException | DynamiteModule.a | NullPointerException e) {
                mj.b("Cannot dynamite load clearcut");
            }
        }
    }

    public amn(Context context, String str, String str2) {
        aro.a(context);
        try {
            this.f4211a = ajd.a(DynamiteModule.a(context, DynamiteModule.f3606a, ModuleDescriptor.MODULE_ID).a("com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"));
            com.google.android.gms.b.b.a(context);
            this.f4211a.a(com.google.android.gms.b.b.a(context), str, null);
            this.f4212b = true;
        } catch (RemoteException | DynamiteModule.a | NullPointerException e) {
            mj.b("Cannot dynamite load clearcut");
        }
    }

    public final amp a(byte[] bArr) {
        return new amp(this, bArr);
    }
}
