package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class d implements DynamiteModule.b {
    d() {
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.C0098b a(Context context, String str, DynamiteModule.b.a aVar) throws DynamiteModule.a {
        DynamiteModule.b.C0098b c0098b = new DynamiteModule.b.C0098b();
        c0098b.f3910b = aVar.a(context, str, true);
        if (c0098b.f3910b != 0) {
            c0098b.f3911c = 1;
        } else {
            c0098b.f3909a = aVar.a(context, str);
            if (c0098b.f3909a != 0) {
                c0098b.f3911c = -1;
            }
        }
        return c0098b;
    }
}
