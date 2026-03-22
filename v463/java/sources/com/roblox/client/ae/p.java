package com.roblox.client.ae;

import c.ad;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class p {
    public static String a(e.l<ad> lVar) {
        String strG;
        try {
            if (lVar.e() != null) {
                strG = lVar.e().g();
            } else {
                if (lVar.f() == null) {
                    return "";
                }
                strG = lVar.f().g();
            }
            return strG;
        } catch (IOException unused) {
            return "";
        }
    }
}
