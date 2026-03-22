package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class d implements DynamiteModule.b {
    d() {
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.b
    public final DynamiteModule.b.C0080b a(Context context, String str, DynamiteModule.b.a aVar) throws DynamiteModule.a {
        DynamiteModule.b.C0080b c0080b = new DynamiteModule.b.C0080b();
        c0080b.f3611b = aVar.a(context, str, true);
        if (c0080b.f3611b != 0) {
            c0080b.f3612c = 1;
        } else {
            c0080b.f3610a = aVar.a(context, str);
            if (c0080b.f3610a != 0) {
                c0080b.f3612c = -1;
            }
        }
        return c0080b;
    }
}
