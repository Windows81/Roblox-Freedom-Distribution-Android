package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class aue extends c.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aub f4515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Drawable f4516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Uri f4517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f4518d;

    public aue(aub aubVar) {
        com.google.android.gms.b.a aVarA;
        Uri uriB = null;
        this.f4515a = aubVar;
        try {
            aVarA = this.f4515a.a();
        } catch (RemoteException e) {
            mj.b("", e);
        }
        Drawable drawable = aVarA != null ? (Drawable) com.google.android.gms.b.b.a(aVarA) : null;
        this.f4516b = drawable;
        try {
            uriB = this.f4515a.b();
        } catch (RemoteException e2) {
            mj.b("", e2);
        }
        this.f4517c = uriB;
        double dC = 1.0d;
        try {
            dC = this.f4515a.c();
        } catch (RemoteException e3) {
            mj.b("", e3);
        }
        this.f4518d = dC;
    }

    @Override // com.google.android.gms.ads.formats.c.b
    public final Drawable a() {
        return this.f4516b;
    }

    @Override // com.google.android.gms.ads.formats.c.b
    public final Uri b() {
        return this.f4517c;
    }

    @Override // com.google.android.gms.ads.formats.c.b
    public final double c() {
        return this.f4518d;
    }
}
