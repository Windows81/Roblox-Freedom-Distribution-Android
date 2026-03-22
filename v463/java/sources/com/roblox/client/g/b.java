package com.roblox.client.g;

import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.p;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {
    public void a(String str) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new NameValuePair("action", str));
        p.a("suggestionsAction", "storingCredentials", arrayList);
    }

    public void a(String str, String str2) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new NameValuePair("action", str));
        arrayList.add(new NameValuePair("error", str2));
        p.a("suggestionsAction", "storingCredentials", arrayList);
    }

    public void b(String str) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new NameValuePair("action", str));
        p.a("saveAction", "storingCredentials", arrayList);
    }

    public void b(String str, String str2) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new NameValuePair("action", str));
        arrayList.add(new NameValuePair("error", str2));
        p.a("saveAction", "storingCredentials", arrayList);
    }
}
