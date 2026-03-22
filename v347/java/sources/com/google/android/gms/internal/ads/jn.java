package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class jn implements asn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ List f5188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ asm f5189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Context f5190c;

    jn(jm jmVar, List list, asm asmVar, Context context) {
        this.f5188a = list;
        this.f5189b = asmVar;
        this.f5190c = context;
    }

    @Override // com.google.android.gms.internal.ads.asn
    public final void a() {
        for (String str : this.f5188a) {
            String strValueOf = String.valueOf(str);
            jd.d(strValueOf.length() != 0 ? "Pinging url: ".concat(strValueOf) : new String("Pinging url: "));
            this.f5189b.a(Uri.parse(str), null, null);
        }
        this.f5189b.a((Activity) this.f5190c);
    }

    @Override // com.google.android.gms.internal.ads.asn
    public final void b() {
    }
}
