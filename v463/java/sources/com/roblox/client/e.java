package com.roblox.client;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.roblox.client.o;
import com.roblox.client.r.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Fragment f5982a;

    public e(Fragment fragment) {
        this.f5982a = fragment;
    }

    public void a() {
        if (com.roblox.client.ae.l.b()) {
            return;
        }
        long jP = b.p();
        if (u.a("PREF_NAME_CATALOG_PROMO_SHOWN", Long.toString(jP), com.roblox.client.s.h.a().b()) || jP <= 0) {
            return;
        }
        com.roblox.client.ae.k.a("rbx.catalog", "getCatalogPromo() " + jP);
        com.roblox.client.s.g.a().a(new com.roblox.client.r.d(jP, new d.a() { // from class: com.roblox.client.e.1
            @Override // com.roblox.client.r.d.a
            public void a(boolean z, d.b bVar) {
                com.roblox.client.ae.k.a("rbx.catalog", "onAssetRetrieved() " + z);
                if (z) {
                    d.b bVarA = e.this.a(bVar);
                    e.this.a(bVarA.a(), bVarA.b(), bVarA.c(), bVarA.d());
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
    
        r1 = r3.optString("name");
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
    
        if (android.text.TextUtils.isEmpty(r1) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
    
        r8.a(r1);
        com.roblox.client.ae.k.c("rbx.catalog", "Using localized promo name");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
    
        r1 = r3.optString("description");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
    
        if (android.text.TextUtils.isEmpty(r1) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0071, code lost:
    
        r8.b(r1);
        com.roblox.client.ae.k.c("rbx.catalog", "Using localized promo description");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.roblox.client.r.d.b a(com.roblox.client.r.d.b r8) {
        /*
            r7 = this;
            java.lang.String r0 = "rbx.catalog"
            java.lang.String r1 = com.roblox.client.b.q()
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 != 0) goto L82
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: org.json.JSONException -> L7d
            r2.<init>(r1)     // Catch: org.json.JSONException -> L7d
            java.lang.String r1 = "assetId"
            long r3 = r2.getLong(r1)     // Catch: org.json.JSONException -> L7d
            long r5 = r8.a()     // Catch: org.json.JSONException -> L7d
            int r1 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r1 != 0) goto L82
            java.lang.String r1 = "locales"
            org.json.JSONArray r1 = r2.getJSONArray(r1)     // Catch: org.json.JSONException -> L7d
            r2 = 0
        L26:
            int r3 = r1.length()     // Catch: org.json.JSONException -> L7d
            if (r2 >= r3) goto L82
            org.json.JSONObject r3 = r1.getJSONObject(r2)     // Catch: org.json.JSONException -> L7d
            java.lang.String r4 = "locale"
            java.lang.String r4 = r3.optString(r4)     // Catch: org.json.JSONException -> L7d
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: org.json.JSONException -> L7d
            if (r5 == 0) goto L3d
            goto L7a
        L3d:
            com.roblox.client.locale.f r5 = com.roblox.client.locale.f.a(r4)     // Catch: org.json.JSONException -> L7d
            if (r5 != 0) goto L47
            com.roblox.client.locale.f r5 = com.roblox.client.locale.f.b(r4)     // Catch: org.json.JSONException -> L7d
        L47:
            com.roblox.client.locale.b r4 = com.roblox.client.locale.b.a()     // Catch: org.json.JSONException -> L7d
            boolean r4 = r4.c(r5)     // Catch: org.json.JSONException -> L7d
            if (r4 == 0) goto L7a
            java.lang.String r1 = "name"
            java.lang.String r1 = r3.optString(r1)     // Catch: org.json.JSONException -> L7d
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: org.json.JSONException -> L7d
            if (r2 != 0) goto L65
            r8.a(r1)     // Catch: org.json.JSONException -> L7d
            java.lang.String r1 = "Using localized promo name"
            com.roblox.client.ae.k.c(r0, r1)     // Catch: org.json.JSONException -> L7d
        L65:
            java.lang.String r1 = "description"
            java.lang.String r1 = r3.optString(r1)     // Catch: org.json.JSONException -> L7d
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: org.json.JSONException -> L7d
            if (r2 != 0) goto L82
            r8.b(r1)     // Catch: org.json.JSONException -> L7d
            java.lang.String r1 = "Using localized promo description"
            com.roblox.client.ae.k.c(r0, r1)     // Catch: org.json.JSONException -> L7d
            goto L82
        L7a:
            int r2 = r2 + 1
            goto L26
        L7d:
            java.lang.String r1 = "Could not parse catalog promo localization data"
            com.roblox.client.ae.k.d(r0, r1)
        L82:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.e.a(com.roblox.client.r.d$b):com.roblox.client.r.d$b");
    }

    protected void a(long j, String str, String str2, String str3) {
        String simpleName = com.roblox.client.n.a.class.getSimpleName();
        if (b.p() == j && this.f5982a.A() && this.f5982a.z() && !this.f5982a.y() && this.f5982a.t() != null && this.f5982a.t().a(simpleName) == null) {
            com.roblox.client.ae.k.a("rbx.catalog", "showPromo() title:" + str + " description:" + str2);
            com.roblox.client.n.a aVar = new com.roblox.client.n.a();
            aVar.a(2, 0);
            int dimensionPixelSize = this.f5982a.s().getDimensionPixelSize(o.d.catalogPromoWidth);
            Bundle bundle = new Bundle();
            aVar.getClass();
            bundle.putInt("dialogWidth", dimensionPixelSize);
            aVar.getClass();
            bundle.putInt("dialogHeight", -2);
            bundle.putLong("assetId", j);
            bundle.putString("title", str);
            bundle.putString("description", str2);
            bundle.putString("thumbnail", str3);
            aVar.g(bundle);
            aVar.a(this.f5982a.t(), simpleName);
            u.b("PREF_NAME_CATALOG_PROMO_SHOWN", Long.toString(j), com.roblox.client.s.h.a().b());
        }
    }
}
