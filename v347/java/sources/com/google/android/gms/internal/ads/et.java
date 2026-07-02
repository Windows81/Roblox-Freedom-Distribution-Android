package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class et {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SimpleDateFormat f4981a = new SimpleDateFormat("yyyyMMdd", Locale.US);

    /* JADX WARN: Removed duplicated region for block: B:78:0x02c0 A[PHI: r18
  0x02c0: PHI (r18v3 int) = (r18v2 int), (r18v5 int) binds: [B:55:0x0141, B:60:0x0152] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzaej a(android.content.Context r54, com.google.android.gms.internal.ads.zzaef r55, java.lang.String r56) {
        /*
            Method dump skipped, instruction units count: 711
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.et.a(android.content.Context, com.google.android.gms.internal.ads.zzaef, java.lang.String):com.google.android.gms.internal.ads.zzaej");
    }

    private static Integer a(boolean z) {
        return Integer.valueOf(z ? 1 : 0);
    }

    private static List<String> a(JSONArray jSONArray, List<String> list) throws JSONException {
        if (jSONArray == null) {
            return null;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            list.add(jSONArray.getString(i));
        }
        return list;
    }

    private static JSONArray a(List<String> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        return jSONArray;
    }

    public static JSONObject a(Context context, em emVar) {
        String str;
        zzaef zzaefVar = emVar.j;
        Location location = emVar.f4967d;
        fc fcVar = emVar.k;
        Bundle bundle = emVar.f4964a;
        JSONObject jSONObject = emVar.l;
        try {
            HashMap map = new HashMap();
            map.put("extra_caps", aoo.f().a(aro.bT));
            if (emVar.f4966c.size() > 0) {
                map.put("eid", TextUtils.join(",", emVar.f4966c));
            }
            if (zzaefVar.f5759b != null) {
                map.put("ad_pos", zzaefVar.f5759b);
            }
            zzjj zzjjVar = zzaefVar.f5760c;
            String strA = ix.a();
            if (strA != null) {
                map.put("abf", strA);
            }
            if (zzjjVar.f5800b != -1) {
                map.put("cust_age", f4981a.format(new Date(zzjjVar.f5800b)));
            }
            if (zzjjVar.f5801c != null) {
                map.put("extras", zzjjVar.f5801c);
            }
            if (zzjjVar.f5802d != -1) {
                map.put("cust_gender", Integer.valueOf(zzjjVar.f5802d));
            }
            if (zzjjVar.e != null) {
                map.put("kw", zzjjVar.e);
            }
            if (zzjjVar.g != -1) {
                map.put("tag_for_child_directed_treatment", Integer.valueOf(zzjjVar.g));
            }
            if (zzjjVar.f) {
                if (((Boolean) aoo.f().a(aro.dk)).booleanValue()) {
                    map.put("test_request", true);
                } else {
                    map.put("adtest", "on");
                }
            }
            if (zzjjVar.f5799a >= 2) {
                if (zzjjVar.h) {
                    map.put("d_imp_hdr", 1);
                }
                if (!TextUtils.isEmpty(zzjjVar.i)) {
                    map.put("ppid", zzjjVar.i);
                }
            }
            if (zzjjVar.f5799a >= 3 && zzjjVar.l != null) {
                map.put("url", zzjjVar.l);
            }
            if (zzjjVar.f5799a >= 5) {
                if (zzjjVar.n != null) {
                    map.put("custom_targeting", zzjjVar.n);
                }
                if (zzjjVar.o != null) {
                    map.put("category_exclusions", zzjjVar.o);
                }
                if (zzjjVar.p != null) {
                    map.put("request_agent", zzjjVar.p);
                }
            }
            if (zzjjVar.f5799a >= 6 && zzjjVar.q != null) {
                map.put("request_pkg", zzjjVar.q);
            }
            if (zzjjVar.f5799a >= 7) {
                map.put("is_designed_for_families", Boolean.valueOf(zzjjVar.r));
            }
            if (zzaefVar.f5761d.g != null) {
                boolean z = false;
                boolean z2 = false;
                for (zzjn zzjnVar : zzaefVar.f5761d.g) {
                    if (!zzjnVar.i && !z2) {
                        map.put("format", zzjnVar.f5803a);
                        z2 = true;
                    }
                    if (zzjnVar.i && !z) {
                        map.put("fluid", "height");
                        z = true;
                    }
                    if (z2 && z) {
                        break;
                    }
                }
            } else {
                map.put("format", zzaefVar.f5761d.f5803a);
                if (zzaefVar.f5761d.i) {
                    map.put("fluid", "height");
                }
            }
            if (zzaefVar.f5761d.e == -1) {
                map.put("smart_w", "full");
            }
            if (zzaefVar.f5761d.f5804b == -2) {
                map.put("smart_h", "auto");
            }
            if (zzaefVar.f5761d.g != null) {
                StringBuilder sb = new StringBuilder();
                boolean z3 = false;
                for (zzjn zzjnVar2 : zzaefVar.f5761d.g) {
                    if (zzjnVar2.i) {
                        z3 = true;
                    } else {
                        if (sb.length() != 0) {
                            sb.append("|");
                        }
                        sb.append(zzjnVar2.e == -1 ? (int) (zzjnVar2.f / fcVar.s) : zzjnVar2.e);
                        sb.append("x");
                        sb.append(zzjnVar2.f5804b == -2 ? (int) (zzjnVar2.f5805c / fcVar.s) : zzjnVar2.f5804b);
                    }
                }
                if (z3) {
                    if (sb.length() != 0) {
                        sb.insert(0, "|");
                    }
                    sb.insert(0, "320x50");
                }
                map.put("sz", sb);
            }
            if (zzaefVar.m != 0) {
                map.put("native_version", Integer.valueOf(zzaefVar.m));
                map.put("native_templates", zzaefVar.n);
                zzpl zzplVar = zzaefVar.y;
                if (zzplVar != null) {
                    switch (zzplVar.f5814c) {
                        case 0:
                            str = "any";
                            break;
                        case 1:
                            str = "portrait";
                            break;
                        case 2:
                            str = "landscape";
                            break;
                        default:
                            str = "not_set";
                            break;
                    }
                } else {
                    str = "any";
                }
                map.put("native_image_orientation", str);
                if (!zzaefVar.z.isEmpty()) {
                    map.put("native_custom_templates", zzaefVar.z);
                }
                if (zzaefVar.f5758a >= 24) {
                    map.put("max_num_ads", Integer.valueOf(zzaefVar.Y));
                }
                if (!TextUtils.isEmpty(zzaefVar.W)) {
                    try {
                        map.put("native_advanced_settings", new JSONArray(zzaefVar.W));
                    } catch (JSONException e) {
                        jd.c("Problem creating json from native advanced settings", e);
                    }
                }
            }
            if (zzaefVar.V != null && zzaefVar.V.size() > 0) {
                for (Integer num : zzaefVar.V) {
                    if (num.intValue() == 2) {
                        map.put("iba", true);
                    } else if (num.intValue() == 1) {
                        map.put("ina", true);
                    }
                }
            }
            if (zzaefVar.f5761d.j) {
                map.put("ene", true);
            }
            if (((Boolean) aoo.f().a(aro.ax)).booleanValue()) {
                map.put("xsrve", true);
            }
            if (zzaefVar.O != null) {
                map.put("is_icon_ad", true);
                map.put("icon_ad_expansion_behavior", Integer.valueOf(zzaefVar.O.f5807a));
            }
            map.put("slotname", zzaefVar.e);
            map.put("pn", zzaefVar.f.packageName);
            if (zzaefVar.g != null) {
                map.put("vc", Integer.valueOf(zzaefVar.g.versionCode));
            }
            map.put("ms", emVar.h);
            map.put("seq_num", zzaefVar.i);
            map.put("session_id", zzaefVar.j);
            map.put("js", zzaefVar.k.f5784a);
            fm fmVar = emVar.e;
            Bundle bundle2 = zzaefVar.M;
            Bundle bundle3 = emVar.f4965b;
            map.put("am", Integer.valueOf(fcVar.f5003a));
            map.put("cog", a(fcVar.f5004b));
            map.put("coh", a(fcVar.f5005c));
            if (!TextUtils.isEmpty(fcVar.f5006d)) {
                map.put("carrier", fcVar.f5006d);
            }
            map.put("gl", fcVar.e);
            if (fcVar.f) {
                map.put("simulator", 1);
            }
            if (fcVar.g) {
                map.put("is_sidewinder", 1);
            }
            map.put("ma", a(fcVar.h));
            map.put("sp", a(fcVar.i));
            map.put("hl", fcVar.j);
            if (!TextUtils.isEmpty(fcVar.k)) {
                map.put("mv", fcVar.k);
            }
            map.put("muv", Integer.valueOf(fcVar.m));
            if (fcVar.n != -2) {
                map.put("cnt", Integer.valueOf(fcVar.n));
            }
            map.put("gnt", Integer.valueOf(fcVar.o));
            map.put("pt", Integer.valueOf(fcVar.p));
            map.put("rm", Integer.valueOf(fcVar.q));
            map.put("riv", Integer.valueOf(fcVar.r));
            Bundle bundle4 = new Bundle();
            bundle4.putString("build_build", fcVar.z);
            bundle4.putString("build_device", fcVar.A);
            Bundle bundle5 = new Bundle();
            bundle5.putBoolean("is_charging", fcVar.w);
            bundle5.putDouble("battery_level", fcVar.v);
            bundle4.putBundle("battery", bundle5);
            Bundle bundle6 = new Bundle();
            bundle6.putInt("active_network_state", fcVar.y);
            bundle6.putBoolean("active_network_metered", fcVar.x);
            if (fmVar != null) {
                Bundle bundle7 = new Bundle();
                bundle7.putInt("predicted_latency_micros", fmVar.f5021a);
                bundle7.putLong("predicted_down_throughput_bps", fmVar.f5022b);
                bundle7.putLong("predicted_up_throughput_bps", fmVar.f5023c);
                bundle6.putBundle("predictions", bundle7);
            }
            bundle4.putBundle("network", bundle6);
            Bundle bundle8 = new Bundle();
            bundle8.putBoolean("is_browser_custom_tabs_capable", fcVar.B);
            bundle4.putBundle("browser", bundle8);
            if (bundle2 != null) {
                Bundle bundle9 = new Bundle();
                bundle9.putString("runtime_free", Long.toString(bundle2.getLong("runtime_free_memory", -1L)));
                bundle9.putString("runtime_max", Long.toString(bundle2.getLong("runtime_max_memory", -1L)));
                bundle9.putString("runtime_total", Long.toString(bundle2.getLong("runtime_total_memory", -1L)));
                bundle9.putString("web_view_count", Integer.toString(bundle2.getInt("web_view_count", 0)));
                Debug.MemoryInfo memoryInfo = (Debug.MemoryInfo) bundle2.getParcelable("debug_memory_info");
                if (memoryInfo != null) {
                    bundle9.putString("debug_info_dalvik_private_dirty", Integer.toString(memoryInfo.dalvikPrivateDirty));
                    bundle9.putString("debug_info_dalvik_pss", Integer.toString(memoryInfo.dalvikPss));
                    bundle9.putString("debug_info_dalvik_shared_dirty", Integer.toString(memoryInfo.dalvikSharedDirty));
                    bundle9.putString("debug_info_native_private_dirty", Integer.toString(memoryInfo.nativePrivateDirty));
                    bundle9.putString("debug_info_native_pss", Integer.toString(memoryInfo.nativePss));
                    bundle9.putString("debug_info_native_shared_dirty", Integer.toString(memoryInfo.nativeSharedDirty));
                    bundle9.putString("debug_info_other_private_dirty", Integer.toString(memoryInfo.otherPrivateDirty));
                    bundle9.putString("debug_info_other_pss", Integer.toString(memoryInfo.otherPss));
                    bundle9.putString("debug_info_other_shared_dirty", Integer.toString(memoryInfo.otherSharedDirty));
                }
                bundle4.putBundle("android_mem_info", bundle9);
            }
            Bundle bundle10 = new Bundle();
            bundle10.putBundle("parental_controls", bundle3);
            if (!TextUtils.isEmpty(fcVar.l)) {
                bundle10.putString("package_version", fcVar.l);
            }
            bundle4.putBundle("play_store", bundle10);
            map.put("device", bundle4);
            Bundle bundle11 = new Bundle();
            bundle11.putString("doritos", emVar.f);
            bundle11.putString("doritos_v2", emVar.g);
            if (((Boolean) aoo.f().a(aro.aJ)).booleanValue()) {
                String strA2 = null;
                boolean zB = false;
                if (emVar.i != null) {
                    strA2 = emVar.i.a();
                    zB = emVar.i.b();
                }
                if (TextUtils.isEmpty(strA2)) {
                    aoo.a();
                    bundle11.putString("pdid", ly.b(context));
                    bundle11.putString("pdidtype", "ssaid");
                } else {
                    bundle11.putString("rdid", strA2);
                    bundle11.putBoolean("is_lat", zB);
                    bundle11.putString("idtype", "adid");
                }
            }
            map.put("pii", bundle11);
            map.put("platform", Build.MANUFACTURER);
            map.put("submodel", Build.MODEL);
            if (location != null) {
                a((HashMap<String, Object>) map, location);
            } else if (zzaefVar.f5760c.f5799a >= 2 && zzaefVar.f5760c.k != null) {
                a((HashMap<String, Object>) map, zzaefVar.f5760c.k);
            }
            if (zzaefVar.f5758a >= 2) {
                map.put("quality_signals", zzaefVar.l);
            }
            if (zzaefVar.f5758a >= 4 && zzaefVar.p) {
                map.put("forceHttps", Boolean.valueOf(zzaefVar.p));
            }
            if (bundle != null) {
                map.put("content_info", bundle);
            }
            if (zzaefVar.f5758a >= 5) {
                map.put("u_sd", Float.valueOf(zzaefVar.s));
                map.put("sh", Integer.valueOf(zzaefVar.r));
                map.put("sw", Integer.valueOf(zzaefVar.q));
            } else {
                map.put("u_sd", Float.valueOf(fcVar.s));
                map.put("sh", Integer.valueOf(fcVar.u));
                map.put("sw", Integer.valueOf(fcVar.t));
            }
            if (zzaefVar.f5758a >= 6) {
                if (!TextUtils.isEmpty(zzaefVar.t)) {
                    try {
                        map.put("view_hierarchy", new JSONObject(zzaefVar.t));
                    } catch (JSONException e2) {
                        jd.c("Problem serializing view hierarchy to JSON", e2);
                    }
                }
                map.put("correlation_id", Long.valueOf(zzaefVar.u));
            }
            if (zzaefVar.f5758a >= 7) {
                map.put("request_id", zzaefVar.v);
            }
            if (zzaefVar.f5758a >= 12 && !TextUtils.isEmpty(zzaefVar.B)) {
                map.put("anchor", zzaefVar.B);
            }
            if (zzaefVar.f5758a >= 13) {
                map.put("android_app_volume", Float.valueOf(zzaefVar.C));
            }
            if (zzaefVar.f5758a >= 18) {
                map.put("android_app_muted", Boolean.valueOf(zzaefVar.I));
            }
            if (zzaefVar.f5758a >= 14 && zzaefVar.D > 0) {
                map.put("target_api", Integer.valueOf(zzaefVar.D));
            }
            if (zzaefVar.f5758a >= 15) {
                map.put("scroll_index", Integer.valueOf(zzaefVar.E == -1 ? -1 : zzaefVar.E));
            }
            if (zzaefVar.f5758a >= 16) {
                map.put("_activity_context", Boolean.valueOf(zzaefVar.F));
            }
            if (zzaefVar.f5758a >= 18) {
                if (!TextUtils.isEmpty(zzaefVar.J)) {
                    try {
                        map.put("app_settings", new JSONObject(zzaefVar.J));
                    } catch (JSONException e3) {
                        jd.c("Problem creating json from app settings", e3);
                    }
                }
                map.put("render_in_browser", Boolean.valueOf(zzaefVar.K));
            }
            if (zzaefVar.f5758a >= 18) {
                map.put("android_num_video_cache_tasks", Integer.valueOf(zzaefVar.L));
            }
            zzang zzangVar = zzaefVar.k;
            boolean z4 = zzaefVar.Z;
            boolean z5 = emVar.m;
            boolean z6 = zzaefVar.ab;
            Bundle bundle12 = new Bundle();
            Bundle bundle13 = new Bundle();
            bundle13.putString("cl", "193400285");
            bundle13.putString("rapid_rc", "dev");
            bundle13.putString("rapid_rollup", "HEAD");
            bundle12.putBundle("build_meta", bundle13);
            bundle12.putString("mf", Boolean.toString(((Boolean) aoo.f().a(aro.bV)).booleanValue()));
            bundle12.putBoolean("instant_app", z4);
            bundle12.putBoolean("lite", zzangVar.e);
            bundle12.putBoolean("local_service", z5);
            bundle12.putBoolean("is_privileged_process", z6);
            map.put("sdk_env", bundle12);
            map.put("cache_state", jSONObject);
            if (zzaefVar.f5758a >= 19) {
                map.put("gct", zzaefVar.N);
            }
            if (zzaefVar.f5758a >= 21 && zzaefVar.P) {
                map.put("de", "1");
            }
            if (((Boolean) aoo.f().a(aro.aT)).booleanValue()) {
                String str2 = zzaefVar.f5761d.f5803a;
                boolean z7 = str2.equals("interstitial_mb") || str2.equals("reward_mb");
                Bundle bundle14 = zzaefVar.Q;
                boolean z8 = bundle14 != null;
                if (z7 && z8) {
                    Bundle bundle15 = new Bundle();
                    bundle15.putBundle("interstitial_pool", bundle14);
                    map.put("counters", bundle15);
                }
            }
            if (zzaefVar.R != null) {
                map.put("gmp_app_id", zzaefVar.R);
            }
            if (zzaefVar.S == null) {
                map.put("fbs_aiid", "");
            } else if ("TIME_OUT".equals(zzaefVar.S)) {
                map.put("sai_timeout", aoo.f().a(aro.av));
            } else {
                map.put("fbs_aiid", zzaefVar.S);
            }
            if (zzaefVar.T != null) {
                map.put("fbs_aeid", zzaefVar.T);
            }
            if (zzaefVar.f5758a >= 24) {
                map.put("disable_ml", Boolean.valueOf(zzaefVar.aa));
            }
            String str3 = (String) aoo.f().a(aro.E);
            if (str3 != null && !str3.isEmpty()) {
                if (Build.VERSION.SDK_INT >= ((Integer) aoo.f().a(aro.F)).intValue()) {
                    HashMap map2 = new HashMap();
                    String[] strArrSplit = str3.split(",");
                    for (String str4 : strArrSplit) {
                        map2.put(str4, lw.a(str4));
                    }
                    map.put("video_decoders", map2);
                }
            }
            if (((Boolean) aoo.f().a(aro.dg)).booleanValue()) {
                map.put("omid_v", com.google.android.gms.ads.internal.aw.u().b(context));
            }
            if (zzaefVar.ac != null && !zzaefVar.ac.isEmpty()) {
                map.put("android_permissions", zzaefVar.ac);
            }
            if (jd.a(2)) {
                String strValueOf = String.valueOf(com.google.android.gms.ads.internal.aw.e().a(map).toString(2));
                jd.a(strValueOf.length() != 0 ? "Ad Request JSON: ".concat(strValueOf) : new String("Ad Request JSON: "));
            }
            return com.google.android.gms.ads.internal.aw.e().a(map);
        } catch (JSONException e4) {
            String strValueOf2 = String.valueOf(e4.getMessage());
            jd.e(strValueOf2.length() != 0 ? "Problem serializing ad request to JSON: ".concat(strValueOf2) : new String("Problem serializing ad request to JSON: "));
            return null;
        }
    }

    public static JSONObject a(zzaej zzaejVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (zzaejVar.f5762a != null) {
            jSONObject.put("ad_base_url", zzaejVar.f5762a);
        }
        if (zzaejVar.l != null) {
            jSONObject.put("ad_size", zzaejVar.l);
        }
        jSONObject.put("native", zzaejVar.s);
        if (zzaejVar.s) {
            jSONObject.put("ad_json", zzaejVar.f5763b);
        } else {
            jSONObject.put("ad_html", zzaejVar.f5763b);
        }
        if (zzaejVar.n != null) {
            jSONObject.put("debug_dialog", zzaejVar.n);
        }
        if (zzaejVar.L != null) {
            jSONObject.put("debug_signals", zzaejVar.L);
        }
        if (zzaejVar.f != -1) {
            jSONObject.put("interstitial_timeout", zzaejVar.f / 1000.0d);
        }
        if (zzaejVar.k == com.google.android.gms.ads.internal.aw.g().b()) {
            jSONObject.put("orientation", "portrait");
        } else if (zzaejVar.k == com.google.android.gms.ads.internal.aw.g().a()) {
            jSONObject.put("orientation", "landscape");
        }
        if (zzaejVar.f5764c != null) {
            jSONObject.put("click_urls", a(zzaejVar.f5764c));
        }
        if (zzaejVar.e != null) {
            jSONObject.put("impression_urls", a(zzaejVar.e));
        }
        if (zzaejVar.R != null) {
            jSONObject.put("downloaded_impression_urls", a(zzaejVar.R));
        }
        if (zzaejVar.i != null) {
            jSONObject.put("manual_impression_urls", a(zzaejVar.i));
        }
        if (zzaejVar.q != null) {
            jSONObject.put("active_view", zzaejVar.q);
        }
        jSONObject.put("ad_is_javascript", zzaejVar.o);
        if (zzaejVar.p != null) {
            jSONObject.put("ad_passback_url", zzaejVar.p);
        }
        jSONObject.put("mediation", zzaejVar.g);
        jSONObject.put("custom_render_allowed", zzaejVar.r);
        jSONObject.put("content_url_opted_out", zzaejVar.u);
        jSONObject.put("content_vertical_opted_out", zzaejVar.M);
        jSONObject.put("prefetch", zzaejVar.v);
        if (zzaejVar.j != -1) {
            jSONObject.put("refresh_interval_milliseconds", zzaejVar.j);
        }
        if (zzaejVar.h != -1) {
            jSONObject.put("mediation_config_cache_time_milliseconds", zzaejVar.h);
        }
        if (!TextUtils.isEmpty(zzaejVar.x)) {
            jSONObject.put("gws_query_id", zzaejVar.x);
        }
        jSONObject.put("fluid", zzaejVar.y ? "height" : "");
        jSONObject.put("native_express", zzaejVar.z);
        if (zzaejVar.B != null) {
            jSONObject.put("video_start_urls", a(zzaejVar.B));
        }
        if (zzaejVar.C != null) {
            jSONObject.put("video_complete_urls", a(zzaejVar.C));
        }
        if (zzaejVar.A != null) {
            zzaig zzaigVar = zzaejVar.A;
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("rb_type", zzaigVar.f5778a);
            jSONObject2.put("rb_amount", zzaigVar.f5779b);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("rewards", jSONArray);
        }
        jSONObject.put("use_displayed_impression", zzaejVar.D);
        jSONObject.put("auto_protection_configuration", zzaejVar.E);
        jSONObject.put("render_in_browser", zzaejVar.I);
        jSONObject.put("disable_closable_area", zzaejVar.S);
        return jSONObject;
    }

    private static void a(HashMap<String, Object> map, Location location) {
        HashMap map2 = new HashMap();
        Float fValueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
        Long lValueOf = Long.valueOf(location.getTime() * 1000);
        Long lValueOf2 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
        Long lValueOf3 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
        map2.put("radius", fValueOf);
        map2.put("lat", lValueOf2);
        map2.put("long", lValueOf3);
        map2.put("time", lValueOf);
        map.put("uule", map2);
    }
}
