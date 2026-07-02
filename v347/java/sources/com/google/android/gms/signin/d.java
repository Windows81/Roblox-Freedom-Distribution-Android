package com.google.android.gms.signin;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.signin.internal.g;

/* JADX INFO: loaded from: classes.dex */
final class d extends a.AbstractC0068a<g, c> {
    d() {
    }

    @Override // com.google.android.gms.common.api.a.AbstractC0068a
    public final /* synthetic */ a.f a(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, c cVar, f.a aVar, f.b bVar) {
        c cVar2 = cVar;
        return new g(context, looper, true, eVar, cVar2 == null ? c.f6040a : cVar2, aVar, bVar);
    }
}
