package com.roblox.engine.jni.util;

import android.util.Log;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NetworkUtils {
    public static String getPublicIPv4Addresseses() {
        try {
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            String str = "";
            while (it.hasNext()) {
                for (InetAddress inetAddress : Collections.list(((NetworkInterface) it.next()).getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress()) {
                        String hostAddress = inetAddress.getHostAddress();
                        if (hostAddress.indexOf(58) < 0) {
                            str = str + hostAddress + " : ";
                        }
                    }
                }
            }
            return str;
        } catch (Exception e2) {
            Log.w("IPAddress", "Android Loop Back IP scanning exception :" + e2);
            return "";
        }
    }
}
