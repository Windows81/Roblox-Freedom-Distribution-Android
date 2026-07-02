package com.roblox.client.hybrid.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.roblox.a.c;
import com.roblox.client.e.p;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.roblox.a.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.support.v4.a.f f7114a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(android.support.v4.a.f fVar) {
        super("Chat");
        this.f7114a = fVar;
        a("newMessageNotification", new c());
        a("getTopBarHeight", new C0107b());
        a("getKeyboardHeight", new a());
        a("startChatConversation", new e());
        a("shareGameToChat", new d());
    }

    private class c implements c.a {
        private c() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            JSONObject jSONObjectC = aVar.c();
            if (jSONObjectC != null) {
                Bundle bundle = new Bundle();
                try {
                    Object obj = jSONObjectC.get("numUnreadMessages");
                    if (obj instanceof String) {
                        bundle.putInt("numUnreadMessages", Integer.parseInt((String) obj));
                    } else if (obj instanceof Integer) {
                        bundle.putInt("numUnreadMessages", jSONObjectC.getInt("numUnreadMessages"));
                    } else {
                        bundle.putInt("numUnreadMessages", 0);
                    }
                    Intent intent = new Intent();
                    intent.setAction("com.roblox.android.notificationmanager.POST");
                    intent.putExtra("notificationId", 19);
                    intent.putExtra("userParams", bundle);
                    b.this.f7114a.a(intent);
                    aVar.a(true, null);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.hybrid.a.b$b, reason: collision with other inner class name */
    private class C0107b implements c.a {
        private C0107b() {
        }

        @Override // com.roblox.a.c.a
        public void a(final com.roblox.a.a aVar) {
            com.roblox.client.util.g.b("SAM", "Inside GetTopBarHeight Java");
            Intent intent = new Intent();
            intent.setAction("com.roblox.android.notificationmanager.POST");
            intent.putExtra("notificationId", 107);
            b.this.f7114a.a(intent);
            b.this.f7114a.a(new BroadcastReceiver() { // from class: com.roblox.client.hybrid.a.b.b.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent2) {
                    Bundle bundleExtra = intent2.getBundleExtra("returnData");
                    int i = bundleExtra != null ? bundleExtra.getInt("topBarHeight", 0) : 0;
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("topBarHeight", i);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    aVar.a(true, jSONObject);
                }
            }, new IntentFilter("com.roblox.hybrid.broadcastreceiver.RESPONSE.getTopBarHeight"));
        }
    }

    private class a implements c.a {
        private a() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            Intent intent = new Intent();
            intent.setAction("com.roblox.android.notificationmanager.POST");
            intent.putExtra("notificationId", 108);
            b.this.f7114a.a(intent);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("keyboardHeight", 50);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            aVar.a(true, jSONObject);
        }
    }

    private class e implements c.a {
        private e() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            JSONObject jSONObjectOptJSONObject;
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObjectC = aVar.c();
            if (jSONObjectC != null && (jSONObjectOptJSONObject = jSONObjectC.optJSONObject("params")) != null) {
                JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("userIds");
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    long jOptLong = jSONArrayOptJSONArray.optLong(i, -1L);
                    if (jOptLong != -1) {
                        arrayList.add(Long.valueOf(jOptLong));
                    }
                }
            }
            if (arrayList.size() > 0) {
                org.greenrobot.eventbus.c.a().c(new p(-1L, ((Long) arrayList.get(0)).longValue()));
                aVar.a(true, null);
            } else {
                aVar.a(false, null);
            }
        }
    }

    private class d implements c.a {
        private d() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            String strOptString = aVar.c().optString("placeID");
            if (strOptString != null) {
                com.roblox.client.util.g.a("rbx.hybrid", "ShareGameToChat.execute() " + strOptString);
                aVar.a(true, null);
            } else {
                aVar.a(false, null);
            }
        }
    }
}
