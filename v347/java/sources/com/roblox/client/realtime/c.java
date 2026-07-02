package com.roblox.client.realtime;

import android.content.Context;
import com.b.a.a.o;
import com.roblox.client.e.u;
import com.roblox.client.e.x;
import com.roblox.client.h.t;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f7748a;

    public c(Context context) {
        this.f7748a = context;
    }

    @Override // com.roblox.client.realtime.j
    public boolean a(String str, String str2, long j) {
        if ("ChatNotifications".equals(str)) {
            return a(str2);
        }
        return false;
    }

    private boolean a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            long j = jSONObject.getLong("ConversationId");
            String string = jSONObject.getString("Type");
            if ("NewMessage".equals(string) || "NewMessageBySelf".equals(string)) {
                a(j, 5);
                return true;
            }
            if ("RemovedFromConversation".equals(string) || "ConversationRemoved".equals(string)) {
                a(j);
                return true;
            }
            if ("AddedToConversation".equals(string) || "NewConversation".equals(string)) {
                com.roblox.client.i.g.a().a(new com.roblox.client.h.e(this.f7748a, j, true));
                return true;
            }
            if ("ParticipantLeft".equals(string) || "ParticipantAdded".equals(string)) {
                com.roblox.client.i.g.a().a(new com.roblox.client.h.e(this.f7748a, j, false, string));
                return true;
            }
            if ("ConversationTitleChanged".equals(string)) {
                com.roblox.client.i.g.a().a(new com.roblox.client.h.e(this.f7748a, j, false, string, jSONObject.optString("ActorType", null), jSONObject.optLong("ActorTargetId", -1L)));
                return true;
            }
            if (!"ParticipantTyping".equals(string) || !com.roblox.client.b.t()) {
                return false;
            }
            long jOptLong = jSONObject.optLong("UserId", -1L);
            if (jOptLong == -1 || !jSONObject.has("IsTyping")) {
                return false;
            }
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.i(j, jOptLong, jSONObject.optBoolean("IsTyping")));
            return false;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void a(long j, int i) {
        if (com.roblox.client.chat.a.a.a().c(j) == null) {
            com.roblox.client.i.g.a().a(new com.roblox.client.h.e(this.f7748a, j, true));
            return;
        }
        com.roblox.client.chat.a.c cVarA = com.roblox.client.chat.a.a.a().a(j);
        com.roblox.client.chat.a.h hVarD = cVarA.d();
        if (hVarD != null) {
            cVarA.a(hVarD.e(), true);
        }
        o oVarN = t.n();
        oVarN.a(Long.toString(j));
        com.roblox.client.i.g.a().a(new com.roblox.client.h.a(oVarN, j, i, null, true, null));
    }

    public void a(long j) {
        com.roblox.client.chat.a.h hVarD = com.roblox.client.chat.a.a.a().d(j);
        if (hVarD != null && !hVarD.k()) {
            org.greenrobot.eventbus.c.a().c(new x(com.roblox.client.chat.a.a.a().d()));
        }
        com.roblox.client.chat.a.a.a().b(j);
        org.greenrobot.eventbus.c.a().c(new u(j));
    }
}
