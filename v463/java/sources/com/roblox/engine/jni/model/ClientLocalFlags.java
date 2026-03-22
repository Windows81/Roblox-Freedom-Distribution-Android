package com.roblox.engine.jni.model;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ClientLocalFlags {
    private JSONObject flags = new JSONObject();

    public void add(String str, String str2) {
        try {
            this.flags.put(str, str2);
        } catch (JSONException unused) {
        }
    }

    public JSONObject getAll() {
        return this.flags;
    }

    public int size() {
        return this.flags.length();
    }

    public boolean isEmpty() {
        return this.flags.length() == 0;
    }
}
