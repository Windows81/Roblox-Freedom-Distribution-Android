package com.roblox.client.signup.multiscreen;

import android.content.Context;
import com.google.android.gms.f.g;
import com.roblox.client.ae.k;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {
    public void a(Context context, final String str) {
        g<Void> gVarA = com.google.android.gms.auth.api.a.a.a(context).a();
        gVarA.a(new com.google.android.gms.f.e<Void>() { // from class: com.roblox.client.signup.multiscreen.e.1
            @Override // com.google.android.gms.f.e
            public void a(Void r2) {
                k.b(str, "onSuccess.");
            }
        });
        gVarA.a(new com.google.android.gms.f.d() { // from class: com.roblox.client.signup.multiscreen.e.2
            @Override // com.google.android.gms.f.d
            public void a(Exception exc) {
                k.b(str, "onFailure.");
            }
        });
    }
}
