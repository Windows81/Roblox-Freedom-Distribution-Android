package com.google.android.gms.iid;

import android.os.Bundle;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class d extends aj<Bundle> {
    d(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.gms.iid.aj
    final void a(Bundle bundle) {
        Object bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(bundle2);
            Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(strValueOf).length() + 16 + String.valueOf(strValueOf2).length()).append("Finishing ").append(strValueOf).append(" with ").append(strValueOf2).toString());
        }
        this.f3645b.a((T) bundle2);
    }

    @Override // com.google.android.gms.iid.aj
    final boolean a() {
        return false;
    }
}
