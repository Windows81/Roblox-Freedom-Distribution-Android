package com.roblox.client.hybrid.a;

import com.roblox.a.c;
import com.roblox.client.e.q;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f extends com.roblox.a.c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f() {
        super("Navigation");
        a("navigateToFeature", new a());
        a("openUserProfile", new b());
    }

    private class a implements c.a {
        private a() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            String strOptString;
            String strOptString2;
            boolean z;
            String strA;
            JSONObject jSONObjectOptJSONObject;
            JSONObject jSONObjectC = aVar.c();
            if (jSONObjectC == null || (jSONObjectOptJSONObject = jSONObjectC.optJSONObject("params")) == null) {
                strOptString = null;
                strOptString2 = null;
            } else {
                strOptString2 = jSONObjectOptJSONObject.optString("feature", null);
                strOptString = jSONObjectOptJSONObject.optString("urlPath", null);
            }
            com.roblox.client.util.g.a("Navigation", strOptString2 + " " + strOptString);
            if (strOptString2 == null || (strA = a(strOptString2)) == null) {
                z = false;
            } else {
                q qVar = new q(strA);
                qVar.a(strOptString);
                org.greenrobot.eventbus.c.a().c(qVar);
                z = true;
            }
            aVar.a(z, null);
        }

        private String a(String str) {
            if ("Settings".equals(str)) {
                return "SETTINGS_TAG";
            }
            if ("Friends".equals(str)) {
                return "FRIENDS_TAG";
            }
            if ("Games".equals(str)) {
                return "GAMES_TAG";
            }
            if ("Home".equals(str)) {
                return "HOME_TAG";
            }
            if ("Messages".equals(str)) {
                return "MESSAGES_TAG";
            }
            if ("Avatar".equals(str)) {
                return "AVATAR_EDITOR_TAG";
            }
            if ("Abuse Report".equals(str)) {
                return "ABUSE_REPORT_TAG";
            }
            if ("Friend Finder".equals(str)) {
                return "FRIEND_FINDER_TAG";
            }
            return null;
        }
    }

    private class b implements c.a {
        private b() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            JSONObject jSONObjectC = aVar.c();
            if (jSONObjectC != null) {
                long jOptLong = jSONObjectC.optLong("userId", -1L);
                q qVar = new q("PROFILE_TAG");
                qVar.a(jOptLong);
                org.greenrobot.eventbus.c.a().c(qVar);
                aVar.a(true, null);
            }
        }
    }
}
