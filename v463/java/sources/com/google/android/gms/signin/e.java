package com.google.android.gms.signin;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.signin.a;
import com.google.android.gms.signin.internal.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class e extends a.AbstractC0083a<g, a.C0104a> {
    e() {
    }

    @Override // com.google.android.gms.common.api.a.AbstractC0083a
    public final /* synthetic */ a.f a(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, a.C0104a c0104a, f.b bVar, f.c cVar) {
        return new g(context, looper, false, eVar, c0104a.a(), bVar, cVar);
    }
}
