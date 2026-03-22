package com.roblox.client.b;

import com.roblox.client.i;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f {
    public void a() {
        c.a("ResetPassword", "Success");
    }

    public void a(String str, int i, String str2, String str3) {
        if (str == null) {
            str = "UnknownFailure";
        }
        c.a("ResetPassword", str + "_" + i, str2);
        if (str3 != null) {
            i.a("resetPassword", "username", str3, true);
        }
    }
}
