package com.roblox.client.realtime;

import com.roblox.client.chat.a.m;
import com.roblox.client.chat.a.n;
import com.roblox.client.h.p;
import com.roblox.client.h.s;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d implements j {
    @Override // com.roblox.client.realtime.j
    public boolean a(String str, String str2, long j) {
        if ("FriendshipNotifications".equals(str)) {
            return a(str2);
        }
        return false;
    }

    private boolean a(String str) {
        JSONException jSONException;
        String str2;
        long j;
        long j2;
        String str3;
        long j3;
        long j4 = 0;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("Type");
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("EventArgs");
                if (jSONObjectOptJSONObject != null) {
                    j3 = jSONObjectOptJSONObject.getLong("UserId1");
                    try {
                        j4 = jSONObjectOptJSONObject.getLong("UserId2");
                    } catch (JSONException e) {
                        j = j3;
                        jSONException = e;
                        str2 = string;
                        jSONException.printStackTrace();
                        String str4 = str2;
                        j2 = 0;
                        str3 = str4;
                    }
                } else {
                    j3 = 0;
                }
                j = j3;
                j2 = j4;
                str3 = string;
            } catch (JSONException e2) {
                jSONException = e2;
                str2 = string;
                j = 0;
            }
        } catch (JSONException e3) {
            jSONException = e3;
            str2 = null;
            j = 0;
        }
        long jA = a(j, j2);
        if (jA != -1) {
            m mVarA = n.a().a(jA);
            if ("FriendshipCreated".equals(str3)) {
                if (mVarA != null) {
                    n.a().b(mVarA);
                    org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.m(mVarA, 0));
                } else {
                    com.roblox.client.i.g.a().a(new s(jA, true));
                }
                a();
                return true;
            }
            if ("FriendshipDestroyed".equals(str3)) {
                m mVar = mVarA == null ? new m(jA, "unknown") : mVarA;
                n.a().c(mVar);
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.m(mVar, 1));
                return true;
            }
            if ("FriendshipRequested".equals(str3)) {
                if (com.roblox.client.b.bs()) {
                    if (mVarA == null) {
                        mVarA = new m(jA, "unknown");
                    }
                    org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.m(mVarA, 2));
                }
                a();
                return true;
            }
            if ("FriendshipDeclined".equals(str3)) {
                if (com.roblox.client.b.bs()) {
                    if (mVarA == null) {
                        mVarA = new m(jA, "unknown");
                    }
                    org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.m(mVarA, 3));
                }
                a();
                return true;
            }
        }
        return false;
    }

    private void a() {
        com.roblox.client.i.g.a().a(new p());
    }

    private long a(long j, long j2) {
        if (com.roblox.client.i.h.a().b() == j) {
            return j2;
        }
        if (com.roblox.client.i.h.a().b() == j2) {
            return j;
        }
        return -1L;
    }
}
