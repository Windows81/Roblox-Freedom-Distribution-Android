package com.roblox.client.purchase;

import android.content.Context;
import java.io.Serializable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class d implements Serializable {
    public abstract CharSequence a(Context context);

    public abstract boolean a();

    public abstract boolean b();

    public static int a(String str) {
        switch (str) {
            case "com.roblox.client.robux40":
                return 40;
            case "com.roblox.client.robux80":
                return 80;
            case "com.roblox.client.robux400":
                return 400;
            case "com.roblox.client.robux800":
            case "com.roblox.client.robux800promo":
                return 800;
            case "com.roblox.client.robux2000":
                return 2000;
            case "com.roblox.client.robux4500":
                return 4500;
            case "com.roblox.client.robux10000":
                return 10000;
            case "com.roblox.client.robux22500":
                return 22500;
            case "com.roblox.client.robux90bc":
                return 90;
            case "com.roblox.client.robux450bc":
                return 450;
            case "com.roblox.client.robux1000bc":
                return 1000;
            case "com.roblox.client.robux1000promobc":
                return 1000;
            case "com.roblox.client.robux2750bc":
                return 2750;
            case "com.roblox.client.robux6000bc":
                return 6000;
            case "com.roblox.client.robux15000bc":
                return 15000;
            case "com.roblox.client.robux35000bc":
                return 35000;
            default:
                return 0;
        }
    }
}
