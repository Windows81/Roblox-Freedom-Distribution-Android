package com.roblox.client.hybrid.a;

import com.roblox.a.c;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends com.roblox.a.c {
    public f() {
        super("Navigation");
        a("navigateToFeature", new a());
        a("openUserProfile", new b());
    }

    private class a implements c.a {
        private a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
        @Override // com.roblox.a.c.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(com.roblox.a.a r7) {
            /*
                r6 = this;
                org.json.JSONObject r0 = r7.c()
                r1 = 0
                if (r0 == 0) goto L1e
                java.lang.String r2 = "params"
                org.json.JSONObject r0 = r0.optJSONObject(r2)
                if (r0 == 0) goto L1c
                java.lang.String r2 = "feature"
                java.lang.String r2 = r0.optString(r2, r1)
                java.lang.String r3 = "urlPath"
                java.lang.String r3 = r0.optString(r3, r1)
                goto L21
            L1c:
                r2 = r1
                goto L20
            L1e:
                r0 = r1
                r2 = r0
            L20:
                r3 = r2
            L21:
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                r4.append(r2)
                java.lang.String r5 = " "
                r4.append(r5)
                r4.append(r3)
                java.lang.String r4 = r4.toString()
                java.lang.String r5 = "Navigation"
                com.roblox.client.ae.k.a(r5, r4)
                r4 = 0
                if (r2 == 0) goto L58
                java.lang.String r2 = r6.a(r2)
                if (r2 == 0) goto L58
                com.roblox.client.l.j r4 = new com.roblox.client.l.j
                r4.<init>(r2)
                r4.a(r3)
                if (r0 == 0) goto L50
                r4.a(r0)
            L50:
                org.greenrobot.eventbus.c r0 = org.greenrobot.eventbus.c.a()
                r0.c(r4)
                r4 = 1
            L58:
                r7.a(r4, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.hybrid.a.f.a.a(com.roblox.a.a):void");
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
            if ("Universal Friends".equals(str)) {
                return "UNIVERSAL_FRIENDS_TAG";
            }
            if ("GameDetails".equals(str)) {
                if (com.roblox.client.b.bG()) {
                    return "GAME_DETAILS_TAG";
                }
                return null;
            }
            if ("Nearby Friends".equals(str)) {
                return "NEARBY_TAG";
            }
            if ("CaptchaSuccess".equals(str)) {
                return "CAPTCHA_SUCCESS_TAG";
            }
            if ("CaptchaShown".equals(str)) {
                return "CAPTCHA_SHOWN_TAG";
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
                com.roblox.client.l.j jVar = new com.roblox.client.l.j("PROFILE_TAG");
                jVar.a(com.roblox.client.l.j.a(jOptLong));
                org.greenrobot.eventbus.c.a().c(jVar);
                aVar.a(true, null);
            }
        }
    }
}
