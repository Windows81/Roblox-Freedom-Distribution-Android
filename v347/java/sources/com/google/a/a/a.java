package com.google.a.a;

import android.util.Base64;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class a implements i {
    a() {
    }

    @Override // com.google.a.a.i
    public String a(byte[] bArr, boolean z) {
        return Base64.encodeToString(bArr, z ? 11 : 2);
    }

    @Override // com.google.a.a.i
    public byte[] a(String str, boolean z) throws IllegalArgumentException {
        return Base64.decode(str, z ? 11 : 2);
    }
}
