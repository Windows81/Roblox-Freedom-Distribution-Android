package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class z {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f5293b = TimeUnit.DAYS.toMillis(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f5294a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f5296d;

    private z(String str, String str2, long j) {
        this.f5294a = str;
        this.f5295c = str2;
        this.f5296d = j;
    }

    static z a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("{")) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new z(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e2) {
                String strValueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 23);
                sb.append("Failed to parse token: ");
                sb.append(strValueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                return null;
            }
        }
        return new z(str, null, 0L);
    }

    static String a(String str, String str2, long j) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            jSONObject.put("appVersion", str2);
            jSONObject.put("timestamp", j);
            return jSONObject.toString();
        } catch (JSONException e2) {
            String strValueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 24);
            sb.append("Failed to encode token: ");
            sb.append(strValueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    static String a(z zVar) {
        if (zVar == null) {
            return null;
        }
        return zVar.f5294a;
    }

    final boolean b(String str) {
        return System.currentTimeMillis() > this.f5296d + f5293b || !str.equals(this.f5295c);
    }
}
