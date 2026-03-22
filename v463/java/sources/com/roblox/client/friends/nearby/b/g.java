package com.roblox.client.friends.nearby.b;

import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.p;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {
    public void a(int i, long j, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("otherUserId", String.valueOf(j)));
        arrayList.add(new NameValuePair("status", com.roblox.client.friends.nearby.b.a.a.b(i)));
        arrayList.add(new NameValuePair("failureReason", str));
        p.a("nearbyFriendingAction", "nearby", arrayList);
    }

    public void a(int i, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("otherUserId", String.valueOf(j)));
        arrayList.add(new NameValuePair("status", com.roblox.client.friends.nearby.b.a.a.b(i)));
        p.a("nearbyFriendingAction", "nearby", arrayList);
    }

    public void a(long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("foundUserId", String.valueOf(j)));
        p.a("nearbyUserFound", "nearby", arrayList);
    }
}
