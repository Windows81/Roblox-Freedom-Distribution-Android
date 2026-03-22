package com.roblox.client.u;

import android.os.Bundle;
import com.roblox.client.ae.k;
import com.roblox.client.q;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends q {
    private final String q = "RobloxMVPActivity";
    protected e s;

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a(d.ON_CREATE);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        a(d.ON_START);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        a(d.ON_RESUME);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onPause() {
        super.onPause();
        a(d.ON_PAUSE);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStop() {
        super.onStop();
        a(d.ON_STOP);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        a(d.ON_DESTROY);
    }

    private void a(d dVar) {
        e eVar = this.s;
        if (eVar != null) {
            eVar.a(dVar);
        } else {
            k.d("RobloxMVPActivity", "Lifecycle listener is null.");
        }
    }
}
