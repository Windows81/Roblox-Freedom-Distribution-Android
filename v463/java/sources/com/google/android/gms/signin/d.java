package com.google.android.gms.signin;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.signin.internal.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class d extends a.AbstractC0083a<g, c> {
    d() {
    }

    @Override // com.google.android.gms.common.api.a.AbstractC0083a
    public final /* synthetic */ a.f a(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, c cVar, f.b bVar, f.c cVar2) {
        c cVar3 = cVar;
        if (cVar3 == null) {
            cVar3 = c.f4749a;
        }
        return new g(context, looper, true, eVar, cVar3, bVar, cVar2);
    }
}
