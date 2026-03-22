package com.google.android.gms.internal.measurement;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ke extends jy<Boolean> {
    ke(kj kjVar, String str, Boolean bool) {
        super(kjVar, str, bool, null);
    }

    @Override // com.google.android.gms.internal.measurement.jy
    protected final /* synthetic */ Boolean a(String str) {
        if (jt.f4634a.matcher(str).matches()) {
            return true;
        }
        if (jt.f4635b.matcher(str).matches()) {
            return false;
        }
        String str2 = this.f4649a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 28 + String.valueOf(str).length());
        sb.append("Invalid boolean value for ");
        sb.append(str2);
        sb.append(": ");
        sb.append(str);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
