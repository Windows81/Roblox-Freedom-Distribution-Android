package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import javax.annotation.ParametersAreNonnullByDefault;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class all {
    public static int a(String str) {
        byte[] bytes;
        try {
            bytes = str.getBytes(Constants.UTF8_NAME);
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        return com.google.android.gms.common.util.m.a(bytes, 0, bytes.length, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String[] a(java.lang.String r13, boolean r14) {
        /*
            Method dump skipped, instruction units count: 256
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.all.a(java.lang.String, boolean):java.lang.String[]");
    }
}
