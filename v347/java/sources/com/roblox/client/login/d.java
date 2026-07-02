package com.roblox.client.login;

import android.content.Context;
import b.ac;
import com.roblox.abtesting.a;
import com.roblox.client.RobloxSettings;
import com.roblox.client.components.d;
import com.roblox.client.h.c;
import com.roblox.client.h.t;
import com.roblox.client.locale.f;
import com.roblox.client.pushnotification.l;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends com.roblox.client.components.d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f7424c = d.class.getCanonicalName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f7425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f7426b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f7427d;

    public interface g {
        void a();
    }

    public void a(g gVar) {
        this.f7427d = gVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context, String str, long j) {
        super(str);
        this.f7425a = context;
        this.f7426b = j;
        com.roblox.abtesting.a.a().b(j);
        a(new f());
        a(new a());
        a(new b());
        a(new e());
        a(new c());
        a(new C0119d());
    }

    @Override // com.roblox.client.components.d
    public void c() {
        if (this.f7427d != null) {
            this.f7427d.a();
        }
    }

    private class f implements d.a {
        private f() {
        }

        @Override // com.roblox.client.components.d.a
        public void a() {
            if (d.this.f7425a != null) {
                l.a().a(d.this.f7425a);
            }
            d.this.a("PushNotificationRegistration");
        }
    }

    private class a implements d.a {
        private a() {
        }

        @Override // com.roblox.client.components.d.a
        public void a() {
            com.roblox.abtesting.a.a().c(new a.InterfaceC0093a() { // from class: com.roblox.client.login.d.a.1
                @Override // com.roblox.abtesting.a.InterfaceC0093a
                public void a() {
                    d.this.a("ABTestEnroll");
                }
            });
        }
    }

    private class b implements d.a {
        private b() {
        }

        @Override // com.roblox.client.components.d.a
        public void a() {
            com.roblox.abtesting.a.a().b(new a.InterfaceC0093a() { // from class: com.roblox.client.login.d.b.1
                @Override // com.roblox.abtesting.a.InterfaceC0093a
                public void a() {
                    d.this.a("ABTestGetEnrollment");
                }
            });
        }
    }

    private class e implements d.a {
        private e() {
        }

        @Override // com.roblox.client.components.d.a
        public void a() {
            com.roblox.client.i.g.a().a(new com.roblox.client.h.c(t.n(), Integer.valueOf(RobloxSettings.getPostLoginRequestTimeout()), new c.a() { // from class: com.roblox.client.login.d.e.1
                @Override // com.roblox.client.h.c.a
                public void a(int i) {
                    d.this.a("ChatSettings");
                }
            }));
        }
    }

    /* JADX INFO: renamed from: com.roblox.client.login.d$d, reason: collision with other inner class name */
    private class C0119d implements d.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f7435b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f7436c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f7437d;
        private final String e;
        private final String f;

        private C0119d() {
            this.f7435b = "LuaChat";
            this.f7436c = "rolloutFeatures";
            this.f7437d = "featureName";
            this.e = "isRolloutEnabled";
            this.f = "ChatRolloutSettings";
        }

        @Override // com.roblox.client.components.d.a
        public void a() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("LuaChat");
            com.roblox.platform.g.a().b().b(arrayList).a(new d.d<ac>() { // from class: com.roblox.client.login.d.d.1
                @Override // d.d
                public void a(d.b<ac> bVar, d.l<ac> lVar) {
                    if (lVar.d() == null) {
                        com.roblox.client.util.g.d(d.f7424c, "GetChatRolloutSettingsTask null body");
                    } else {
                        try {
                            C0119d.this.a(lVar.d().g());
                        } catch (IOException | JSONException e) {
                            com.roblox.client.util.g.d(d.f7424c, "GetChatRolloutSettingsTask exception: " + e.getMessage());
                        }
                    }
                    d.this.a("ChatRolloutSettings");
                }

                @Override // d.d
                public void a(d.b<ac> bVar, Throwable th) {
                    d.this.a("ChatRolloutSettings");
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) throws JSONException {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutFeatures");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if ("LuaChat".equals(jSONObject.optString("featureName"))) {
                    com.roblox.client.n.a.a(jSONObject.optBoolean("isRolloutEnabled"));
                    return;
                }
            }
        }
    }

    class c implements d.a {
        c() {
        }

        @Override // com.roblox.client.components.d.a
        public void a() {
            if (com.roblox.client.b.o() && d.this.f7425a != null) {
                new com.roblox.client.locale.f().a(d.this.f7425a, true, new f.a() { // from class: com.roblox.client.login.d.c.1
                    @Override // com.roblox.client.locale.f.a
                    public void a() {
                        d.this.a("AppLocaleSetting");
                    }
                });
            } else {
                d.this.a("AppLocaleSetting");
            }
        }
    }
}
