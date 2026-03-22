package com.google.firebase.iid;

import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class l extends m<Void> {
    l(int i, int i2, Bundle bundle) {
        super(i, 2, bundle);
    }

    @Override // com.google.firebase.iid.m
    final boolean a() {
        return true;
    }

    @Override // com.google.firebase.iid.m
    final void a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            a((Object) null);
        } else {
            a(new n(4, "Invalid response to one way request"));
        }
    }
}
