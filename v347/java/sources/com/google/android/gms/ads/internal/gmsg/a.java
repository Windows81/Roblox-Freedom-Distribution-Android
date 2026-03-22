package com.google.android.gms.ads.internal.gmsg;

import android.os.Bundle;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class a implements ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k f3098a;

    public a(k kVar) {
        this.f3098a = kVar;
    }

    private static Bundle a(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            Bundle bundle = new Bundle();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (obj != null) {
                    if (obj instanceof Boolean) {
                        bundle.putBoolean(next, ((Boolean) obj).booleanValue());
                    } else if (obj instanceof Double) {
                        bundle.putDouble(next, ((Double) obj).doubleValue());
                    } else if (obj instanceof Integer) {
                        bundle.putInt(next, ((Integer) obj).intValue());
                    } else if (obj instanceof Long) {
                        bundle.putLong(next, ((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        bundle.putString(next, (String) obj);
                    } else {
                        String strValueOf = String.valueOf(next);
                        jd.e(strValueOf.length() != 0 ? "Unsupported type for key:".concat(strValueOf) : new String("Unsupported type for key:"));
                    }
                }
            }
            return bundle;
        } catch (JSONException e) {
            jd.b("Failed to convert ad metadata to JSON.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        String str;
        if (this.f3098a == null) {
            return;
        }
        String str2 = map.get("name");
        if (str2 == null) {
            jd.d("Ad metadata with no name parameter.");
            str = "";
        } else {
            str = str2;
        }
        Bundle bundleA = a(map.get("info"));
        if (bundleA == null) {
            jd.c("Failed to convert ad metadata to Bundle.");
        } else {
            this.f3098a.a(str, bundleA);
        }
    }
}
