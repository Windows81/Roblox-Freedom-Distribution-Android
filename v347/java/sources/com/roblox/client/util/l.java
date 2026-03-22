package com.roblox.client.util;

import b.ac;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class l {
    public static String a(d.l<ac> lVar) {
        String strG;
        try {
            if (lVar.d() != null) {
                strG = lVar.d().g();
            } else if (lVar.e() == null) {
                strG = "";
            } else {
                strG = lVar.e().g();
            }
            return strG;
        } catch (IOException e) {
            return "";
        }
    }
}
