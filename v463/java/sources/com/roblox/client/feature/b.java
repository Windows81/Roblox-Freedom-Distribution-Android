package com.roblox.client.feature;

import android.content.Context;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static String a(Context context, String str) {
        if (context == null) {
            return null;
        }
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1442032290:
                if (str.equals("SETTINGS_TAG")) {
                    b2 = 3;
                }
                break;
            case -734952016:
                if (str.equals("FRIENDS_TAG")) {
                    b2 = 0;
                }
                break;
            case 1050009095:
                if (str.equals("MESSAGES_TAG")) {
                    b2 = 2;
                }
                break;
            case 1147058740:
                if (str.equals("CATALOG_TAG")) {
                    b2 = 1;
                }
                break;
        }
        if (b2 == 0) {
            return context.getString(o.j.CommonUI_Features_Label_Friends);
        }
        if (b2 == 1) {
            return context.getString(o.j.CommonUI_Features_Label_Catalog);
        }
        if (b2 == 2) {
            return context.getString(o.j.CommonUI_Features_Label_Messages);
        }
        if (b2 != 3) {
            return null;
        }
        return context.getString(o.j.CommonUI_Features_Label_Settings);
    }
}
