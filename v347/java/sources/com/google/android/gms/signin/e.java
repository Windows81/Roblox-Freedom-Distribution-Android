package com.google.android.gms.signin;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.signin.a;
import com.google.android.gms.signin.internal.g;

/* JADX INFO: loaded from: classes.dex */
final class e extends a.AbstractC0068a<g, a.C0085a> {
    e() {
    }

    @Override // com.google.android.gms.common.api.a.AbstractC0068a
    public final /* synthetic */ a.f a(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, a.C0085a c0085a, f.a aVar, f.b bVar) {
        return new g(context, looper, false, eVar, c0085a.a(), aVar, bVar);
    }
}
