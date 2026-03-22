package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class ass extends auc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Drawable f4448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Uri f4449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f4450c;

    public ass(Drawable drawable, Uri uri, double d2) {
        this.f4448a = drawable;
        this.f4449b = uri;
        this.f4450c = d2;
    }

    @Override // com.google.android.gms.internal.ads.aub
    public final com.google.android.gms.b.a a() throws RemoteException {
        return com.google.android.gms.b.b.a(this.f4448a);
    }

    @Override // com.google.android.gms.internal.ads.aub
    public final Uri b() throws RemoteException {
        return this.f4449b;
    }

    @Override // com.google.android.gms.internal.ads.aub
    public final double c() {
        return this.f4450c;
    }
}
