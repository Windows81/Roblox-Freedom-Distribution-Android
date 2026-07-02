package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class pb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f5413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f5414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5415c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f5416d;
    private final String e;
    private final int f;
    private final int g;
    private final int h;
    private final boolean i;

    public pb(String str) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
            }
        } else {
            jSONObject = null;
        }
        jSONObject2 = jSONObject;
        this.f5413a = a(jSONObject2, "aggressive_media_codec_release", aro.B);
        this.f5414b = b(jSONObject2, "byte_buffer_precache_limit", aro.m);
        this.f5415c = b(jSONObject2, "exo_cache_buffer_size", aro.p);
        this.f5416d = b(jSONObject2, "exo_connect_timeout_millis", aro.i);
        this.e = c(jSONObject2, "exo_player_version", aro.h);
        this.f = b(jSONObject2, "exo_read_timeout_millis", aro.j);
        this.g = b(jSONObject2, "load_check_interval_bytes", aro.k);
        this.h = b(jSONObject2, "player_precache_limit", aro.l);
        this.i = a(jSONObject2, "use_cache_data_source", aro.cH);
    }

    private static boolean a(JSONObject jSONObject, String str, are<Boolean> areVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException e) {
            }
        }
        return ((Boolean) aoo.f().a(areVar)).booleanValue();
    }

    private static int b(JSONObject jSONObject, String str, are<Integer> areVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException e) {
            }
        }
        return ((Integer) aoo.f().a(areVar)).intValue();
    }

    private static String c(JSONObject jSONObject, String str, are<String> areVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getString(str);
            } catch (JSONException e) {
            }
        }
        return (String) aoo.f().a(areVar);
    }
}
