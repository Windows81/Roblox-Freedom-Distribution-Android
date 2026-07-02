package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.amn;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.hp;
import com.google.android.gms.internal.ads.hq;
import com.google.android.gms.internal.ads.hu;
import com.google.android.gms.internal.ads.on;
import com.google.android.gms.internal.ads.ou;
import com.google.android.gms.internal.ads.pi;
import com.google.android.gms.internal.ads.pt;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class bt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final pt f3069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final on f3070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final hu f3071c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final amn f3072d;

    private bt(pt ptVar, on onVar, hu huVar, amn amnVar) {
        this.f3069a = ptVar;
        this.f3070b = onVar;
        this.f3071c = huVar;
        this.f3072d = amnVar;
    }

    public static bt a(Context context) {
        return new bt(new pi(), new ou(), new hp(new hq()), new amn(context));
    }
}
