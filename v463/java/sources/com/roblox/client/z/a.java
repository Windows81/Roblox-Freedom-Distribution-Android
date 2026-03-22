package com.roblox.client.z;

import android.app.Activity;
import com.roblox.client.ae.k;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f7574a;

    public a(String str) {
        this.f7574a = str;
    }

    public void a(Activity activity, String str) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException unused) {
            k.d(this.f7574a, "Exception parsing data external launch data");
            jSONObject = null;
        }
        a(activity, jSONObject);
    }

    public void a(Activity activity, JSONObject jSONObject) {
        if (jSONObject != null) {
            a(activity, jSONObject.optString("app_uri"), jSONObject.optString("web_uri"));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(android.app.Activity r3, java.lang.String r4, java.lang.String r5) {
        /*
            r2 = this;
            java.lang.String r0 = "android.intent.action.VIEW"
            if (r4 == 0) goto L27
            boolean r1 = r4.isEmpty()
            if (r1 != 0) goto L27
            android.content.Intent r1 = new android.content.Intent
            android.net.Uri r4 = android.net.Uri.parse(r4)
            r1.<init>(r0, r4)
            r4 = 268435456(0x10000000, float:2.524355E-29)
            r1.addFlags(r4)
            android.content.pm.PackageManager r4 = r3.getPackageManager()
            android.content.ComponentName r4 = r1.resolveActivity(r4)
            if (r4 == 0) goto L27
            r3.startActivity(r1)
            r4 = 1
            goto L28
        L27:
            r4 = 0
        L28:
            if (r4 != 0) goto L46
            if (r5 == 0) goto L3f
            boolean r4 = r5.isEmpty()
            if (r4 != 0) goto L3f
            android.content.Intent r4 = new android.content.Intent
            android.net.Uri r5 = android.net.Uri.parse(r5)
            r4.<init>(r0, r5)
            r3.startActivity(r4)
            goto L46
        L3f:
            java.lang.String r3 = r2.f7574a
            java.lang.String r4 = "Could not resolve navigation URI"
            com.roblox.client.ae.k.d(r3, r4)
        L46:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.z.a.a(android.app.Activity, java.lang.String, java.lang.String):void");
    }
}
