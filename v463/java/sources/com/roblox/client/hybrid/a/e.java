package com.roblox.client.hybrid.a;

import android.text.TextUtils;
import com.roblox.a.c;
import com.roblox.client.ae.k;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends com.roblox.a.c {
    public e() {
        super("Localization");
        a("languageChangeTrigger", new a());
    }

    class a implements c.a {
        a() {
        }

        @Override // com.roblox.a.c.a
        public void a(com.roblox.a.a aVar) {
            a(aVar, org.greenrobot.eventbus.c.a());
        }

        void a(com.roblox.a.a aVar, org.greenrobot.eventbus.c cVar) {
            k.a("rbx.locale", "RBHybridModuleLocalization LanguageChangeTrigger.execute() " + aVar.c());
            String strOptString = aVar.c().optString("newRobloxLanguageValue");
            if (!TextUtils.isEmpty(strOptString)) {
                k.a("rbx.locale", "newRobloxLocaleValue " + strOptString);
                com.roblox.client.locale.f fVarA = com.roblox.client.locale.f.a(strOptString);
                if (fVarA != null) {
                    cVar.c(new com.roblox.client.l.a(fVarA));
                } else {
                    a("Received new roblox locale value: " + strOptString + " is invalid.");
                }
                aVar.a(true, null);
                return;
            }
            if (strOptString == null) {
                a("Received new roblox locale value is null.");
            } else {
                a("Received new roblox locale value is empty.");
            }
            aVar.a(false, null);
        }

        private void a(String str) {
            com.roblox.client.analytics.d.a(str);
        }
    }
}
