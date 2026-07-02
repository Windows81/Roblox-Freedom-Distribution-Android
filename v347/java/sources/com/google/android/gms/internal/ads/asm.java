package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class asm implements afr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.support.b.e f4433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private android.support.b.b f4434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private android.support.b.d f4435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private asn f4436d;

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (listQueryIntentActivities == null || resolveInfoResolveActivity == null) {
            return false;
        }
        for (int i = 0; i < listQueryIntentActivities.size(); i++) {
            if (resolveInfoResolveActivity.activityInfo.name.equals(listQueryIntentActivities.get(i).activityInfo.name)) {
                return resolveInfoResolveActivity.activityInfo.packageName.equals(afp.a(context));
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.afr
    public final void a() {
        this.f4434b = null;
        this.f4433a = null;
        if (this.f4436d != null) {
            this.f4436d.b();
        }
    }

    public final void a(Activity activity) {
        if (this.f4435c == null) {
            return;
        }
        activity.unbindService(this.f4435c);
        this.f4434b = null;
        this.f4433a = null;
        this.f4435c = null;
    }

    @Override // com.google.android.gms.internal.ads.afr
    public final void a(android.support.b.b bVar) {
        this.f4434b = bVar;
        this.f4434b.a(0L);
        if (this.f4436d != null) {
            this.f4436d.a();
        }
    }

    public final void a(asn asnVar) {
        this.f4436d = asnVar;
    }

    public final boolean a(Uri uri, Bundle bundle, List<Bundle> list) {
        if (this.f4434b == null) {
            return false;
        }
        if (this.f4434b == null) {
            this.f4433a = null;
        } else if (this.f4433a == null) {
            this.f4433a = this.f4434b.a((android.support.b.a) null);
        }
        android.support.b.e eVar = this.f4433a;
        if (eVar != null) {
            return eVar.a(uri, null, null);
        }
        return false;
    }

    public final void b(Activity activity) {
        String strA;
        if (this.f4434b == null && (strA = afp.a(activity)) != null) {
            this.f4435c = new afq(this);
            android.support.b.b.a(activity, strA, this.f4435c);
        }
    }
}
