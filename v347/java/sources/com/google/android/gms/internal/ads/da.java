package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class da {
    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Context context, boolean z) {
        if (!z) {
            return true;
        }
        int iB = DynamiteModule.b(context, ModuleDescriptor.MODULE_ID);
        return iB != 0 && iB <= DynamiteModule.a(context, ModuleDescriptor.MODULE_ID);
    }
}
