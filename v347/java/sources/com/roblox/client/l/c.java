package com.roblox.client.l;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c extends HashMap<String, Object> {
    public void a(String str, String str2) {
        put(str, str2);
    }

    public void a(String str, int i) {
        put(str, Integer.valueOf(i));
    }

    public void a(String str, boolean z) {
        put(str, Boolean.valueOf(z));
    }

    public boolean a(String str) {
        return b(str, false);
    }

    public boolean b(String str, boolean z) {
        Object obj = get(str);
        if (obj != null) {
            try {
                return ((Boolean) obj).booleanValue();
            } catch (ClassCastException e) {
                a(str, obj, "Boolean", Boolean.valueOf(z), e);
                return z;
            }
        }
        return z;
    }

    private void a(String str, Object obj, String str2, Object obj2, ClassCastException classCastException) {
        com.roblox.client.util.g.d("BundleMap", "Key " + str + " expected " + str2 + " but value was a " + obj.getClass().getName() + ".  The default value " + obj2 + " was returned.");
        com.roblox.client.util.g.d("BundleMap", "Attempt to cast generated internal exception:" + classCastException.getMessage());
    }
}
