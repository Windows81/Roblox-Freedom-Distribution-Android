package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class jh extends ji {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Bundle f5178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ jf f5179b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    jh(jf jfVar, Bundle bundle) {
        super(null);
        this.f5179b = jfVar;
        this.f5178a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        Iterator it = this.f5179b.f5175d.iterator();
        while (it.hasNext()) {
            ((jj) it.next()).a(this.f5178a);
        }
    }
}
