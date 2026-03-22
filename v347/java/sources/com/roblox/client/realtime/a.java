package com.roblox.client.realtime;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a {
    protected static boolean sSignalRConnected = false;
    protected static long sSequenceNumber = -1;

    public abstract void setProcessor(String str, j jVar);

    public abstract void start();

    public abstract void stop();

    public static boolean isSignalRConnected() {
        return sSignalRConnected;
    }

    public static long getSequenceNumber() {
        return sSequenceNumber;
    }

    public boolean shouldStopPreviousConnectionOnStart() {
        return false;
    }

    public boolean canStartConnectionOnConnectivityRestore() {
        return true;
    }

    protected String getTypeFromPayload(String str) {
        try {
            return new JSONObject(str).optString("Type");
        } catch (JSONException e) {
            return "";
        }
    }
}
