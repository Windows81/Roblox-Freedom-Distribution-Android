package com.roblox.client.login;

import android.content.Context;
import c.ad;
import com.roblox.abtesting.a;
import com.roblox.client.ab.b;
import com.roblox.client.ae.k;
import com.roblox.client.components.b;
import com.roblox.client.locale.i;
import com.roblox.client.pushnotification.l;
import com.roblox.platform.i;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends com.roblox.client.components.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f6523c = a.class.getCanonicalName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f6524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f6525b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f6526d;

    public interface g {
        void a();
    }

    public void a(g gVar) {
        this.f6526d = gVar;
    }

    public a(Context context, String str, long j) {
        super(str);
        this.f6524a = context;
        this.f6525b = j;
        com.roblox.abtesting.a.a().b(j);
        a(new f());
        a(new C0157a());
        a(new b());
        a(new c());
        a(new d());
        a(new e());
    }

    @Override // com.roblox.client.components.b
    public void c() {
        g gVar = this.f6526d;
        if (gVar != null) {
            gVar.a();
        }
    }

    private class f implements b.a {
        private f() {
        }

        @Override // com.roblox.client.components.b.a
        public void a() {
            if (a.this.f6524a != null) {
                l.a().a(a.this.f6524a);
            }
            a.this.a("PushNotificationRegistration");
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.login.a$a, reason: collision with other inner class name */
    private class C0157a implements b.a {
        private C0157a() {
        }

        @Override // com.roblox.client.components.b.a
        public void a() {
            com.roblox.abtesting.a.a().c(new a.InterfaceC0117a() { // from class: com.roblox.client.login.a.a.1
                @Override // com.roblox.abtesting.a.InterfaceC0117a
                public void a() {
                    a.this.a("ABTestEnroll");
                }
            });
        }
    }

    private class b implements b.a {
        private b() {
        }

        @Override // com.roblox.client.components.b.a
        public void a() {
            com.roblox.abtesting.a.a().b(new a.InterfaceC0117a() { // from class: com.roblox.client.login.a.b.1
                @Override // com.roblox.abtesting.a.InterfaceC0117a
                public void a() {
                    a.this.a("ABTestGetEnrollment");
                }
            });
        }
    }

    private class d implements b.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f6534b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f6535c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f6536d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f6537e;
        private final String f;

        private d() {
            this.f6534b = "LuaChat";
            this.f6535c = "rolloutFeatures";
            this.f6536d = "featureName";
            this.f6537e = "isRolloutEnabled";
            this.f = "ChatRolloutSettings";
        }

        @Override // com.roblox.client.components.b.a
        public void a() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("LuaChat");
            i.a().b().a(arrayList).a(new e.d<ad>() { // from class: com.roblox.client.login.a.d.1
                @Override // e.d
                public void a(e.b<ad> bVar, e.l<ad> lVar) {
                    if (lVar.e() == null) {
                        k.d(a.f6523c, "GetChatRolloutSettingsTask null body");
                    } else {
                        try {
                            d.this.a(lVar.e().g());
                        } catch (IOException | JSONException e2) {
                            k.d(a.f6523c, "GetChatRolloutSettingsTask exception: " + e2.getMessage());
                        }
                    }
                    a.this.a("ChatRolloutSettings");
                }

                @Override // e.d
                public void a(e.b<ad> bVar, Throwable th) {
                    a.this.a("ChatRolloutSettings");
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) throws JSONException {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutFeatures");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if ("LuaChat".equals(jSONObject.optString("featureName"))) {
                    com.roblox.client.x.c.a(jSONObject.optBoolean("isRolloutEnabled"));
                    return;
                }
            }
        }
    }

    class c implements b.a {
        c() {
        }

        @Override // com.roblox.client.components.b.a
        public void a() {
            if (a.this.f6524a != null) {
                new com.roblox.client.locale.i().a(a.this.f6524a, true, new i.a() { // from class: com.roblox.client.login.a.c.1
                    @Override // com.roblox.client.locale.i.a
                    public void a(boolean z) {
                        a.this.a("AppLocaleSetting");
                    }
                });
            } else {
                a.this.a("AppLocaleSetting");
            }
        }
    }

    class e implements b.a {
        e() {
        }

        @Override // com.roblox.client.components.b.a
        public void a() {
            new com.roblox.client.ab.b().a(new b.a() { // from class: com.roblox.client.login.a.e.1
                @Override // com.roblox.client.ab.b.a
                public void a(com.roblox.client.ab.e eVar) {
                    a.this.a("UserSelectedTheme");
                }
            });
        }
    }
}
