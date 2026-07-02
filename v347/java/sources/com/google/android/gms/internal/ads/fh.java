package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class fh extends fj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5016a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f5017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SharedPreferences f5018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final bal<JSONObject, JSONObject> f5019d;

    public fh(Context context, bal<JSONObject, JSONObject> balVar) {
        this.f5017b = context.getApplicationContext();
        this.f5019d = balVar;
    }

    @Override // com.google.android.gms.internal.ads.fj
    public final nd<Void> a() {
        synchronized (this.f5016a) {
            if (this.f5018c == null) {
                this.f5018c = this.f5017b.getSharedPreferences("google_ads_flags_meta", 0);
            }
        }
        if (com.google.android.gms.ads.internal.aw.l().a() - this.f5018c.getLong("js_last_update", 0L) < ((Long) aoo.f().a(aro.bU)).longValue()) {
            return ms.a((Object) null);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("js", zzang.a().f5784a);
            jSONObject.put("mf", aoo.f().a(aro.bV));
            jSONObject.put("cl", "193400285");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("dynamite_version", ModuleDescriptor.MODULE_VERSION);
            return ms.a(this.f5019d.b(jSONObject), new mo(this) { // from class: com.google.android.gms.internal.ads.fi

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final fh f5020a;

                {
                    this.f5020a = this;
                }

                @Override // com.google.android.gms.internal.ads.mo
                public final Object a(Object obj) {
                    return this.f5020a.a((JSONObject) obj);
                }
            }, nj.f5347b);
        } catch (JSONException e) {
            jd.b("Unable to populate SDK Core Constants parameters.", e);
            return ms.a((Object) null);
        }
    }

    final /* synthetic */ Void a(JSONObject jSONObject) {
        aro.a(this.f5017b, 1, jSONObject);
        this.f5018c.edit().putLong("js_last_update", com.google.android.gms.ads.internal.aw.l().a()).apply();
        return null;
    }
}
