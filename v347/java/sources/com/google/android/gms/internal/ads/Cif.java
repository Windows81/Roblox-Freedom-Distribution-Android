package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.a.a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.if, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@cm
public final class Cif implements ih {
    @Override // com.google.android.gms.internal.ads.ih
    public final nd<a.C0063a> a(Context context) {
        no noVar = new no();
        aoo.a();
        if (ly.f(context)) {
            jk.a(new ig(this, context, noVar));
        }
        return noVar;
    }

    @Override // com.google.android.gms.internal.ads.ih
    public final nd<String> a(String str, PackageInfo packageInfo) {
        return ms.a(str);
    }
}
