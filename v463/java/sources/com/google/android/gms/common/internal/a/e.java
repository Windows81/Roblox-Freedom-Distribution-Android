package com.google.android.gms.common.internal.a;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.a.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends com.google.android.gms.common.internal.j<g> {
    public e(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, f.b bVar, f.c cVar) {
        super(context, looper, 39, eVar, bVar, cVar);
    }

    @Override // com.google.android.gms.common.internal.d
    public String a_() {
        return "com.google.android.gms.common.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public g a(IBinder iBinder) {
        return g.a.a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected String b() {
        return "com.google.android.gms.common.internal.service.ICommonService";
    }

    @Override // com.google.android.gms.common.internal.j, com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public int f() {
        return super.f();
    }
}
