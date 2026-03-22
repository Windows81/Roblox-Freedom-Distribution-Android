package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class jg extends ji {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f5176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ jf f5177b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    jg(jf jfVar, Context context) {
        super(null);
        this.f5177b = jfVar;
        this.f5176a = context;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        SharedPreferences sharedPreferences = this.f5176a.getSharedPreferences("admob", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        synchronized (this.f5177b.f5173b) {
            this.f5177b.e = sharedPreferences;
            this.f5177b.f5172a = editorEdit;
            jf jfVar = this.f5177b;
            jf jfVar2 = this.f5177b;
            jfVar.f = jf.n();
            this.f5177b.g = this.f5177b.e.getBoolean("use_https", this.f5177b.g);
            this.f5177b.s = this.f5177b.e.getBoolean("content_url_opted_out", this.f5177b.s);
            this.f5177b.h = this.f5177b.e.getString("content_url_hashes", this.f5177b.h);
            this.f5177b.j = this.f5177b.e.getBoolean("auto_collect_location", this.f5177b.j);
            this.f5177b.t = this.f5177b.e.getBoolean("content_vertical_opted_out", this.f5177b.t);
            this.f5177b.i = this.f5177b.e.getString("content_vertical_hashes", this.f5177b.i);
            this.f5177b.p = this.f5177b.e.getInt("version_code", this.f5177b.p);
            this.f5177b.k = this.f5177b.e.getString("app_settings_json", this.f5177b.k);
            this.f5177b.l = this.f5177b.e.getLong("app_settings_last_update_ms", this.f5177b.l);
            this.f5177b.m = this.f5177b.e.getLong("app_last_background_time_ms", this.f5177b.m);
            this.f5177b.o = this.f5177b.e.getInt("request_in_session_count", this.f5177b.o);
            this.f5177b.n = this.f5177b.e.getLong("first_ad_req_time_ms", this.f5177b.n);
            this.f5177b.q = this.f5177b.e.getStringSet("never_pool_slots", this.f5177b.q);
            try {
                this.f5177b.r = new JSONObject(this.f5177b.e.getString("native_advanced_settings", "{}"));
            } catch (JSONException e) {
                jd.c("Could not convert native advanced settings to json object", e);
            }
            this.f5177b.a(this.f5177b.p());
        }
    }
}
