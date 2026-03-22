package com.google.android.gms.gcm;

import android.os.Bundle;
import com.google.android.gms.iid.o;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@Deprecated
public class a extends o {
    static void a(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next != null && next.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    public void a() {
    }

    public void a(String str) {
    }

    public void a(String str, Bundle bundle) {
    }

    public void a(String str, String str2) {
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f4  */
    @Override // com.google.android.gms.iid.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleIntent(android.content.Intent r8) {
        /*
            Method dump skipped, instruction units count: 444
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.a.handleIntent(android.content.Intent):void");
    }
}
