package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class jf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("mLock")
    @Nullable
    SharedPreferences.Editor f5172a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private nd<?> f5174c;

    @GuardedBy("mLock")
    @Nullable
    private SharedPreferences e;

    @GuardedBy("mLock")
    @Nullable
    private String h;

    @GuardedBy("mLock")
    @Nullable
    private String i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5173b = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CopyOnWriteArraySet<jj> f5175d = new CopyOnWriteArraySet<>();

    @GuardedBy("mLock")
    private boolean f = false;

    @GuardedBy("mLock")
    private boolean g = true;

    @GuardedBy("mLock")
    private boolean j = false;

    @GuardedBy("mLock")
    private String k = "";

    @GuardedBy("mLock")
    private long l = 0;

    @GuardedBy("mLock")
    private long m = 0;

    @GuardedBy("mLock")
    private long n = 0;

    @GuardedBy("mLock")
    private int o = -1;

    @GuardedBy("mLock")
    private int p = 0;

    @GuardedBy("mLock")
    private Set<String> q = Collections.emptySet();

    @GuardedBy("mLock")
    private JSONObject r = new JSONObject();

    @GuardedBy("mLock")
    private boolean s = true;

    @GuardedBy("mLock")
    private boolean t = true;

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Bundle bundle) {
        new jh(this, bundle).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    public static boolean n() {
        return com.google.android.gms.common.util.n.j() && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    private final void o() {
        if (this.f5174c == null || this.f5174c.isDone()) {
            return;
        }
        try {
            this.f5174c.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            jd.c("Interrupted while waiting for preferences loaded.", e);
        } catch (CancellationException e2) {
            e = e2;
            jd.b("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (ExecutionException e3) {
            e = e3;
            jd.b("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (TimeoutException e4) {
            e = e4;
            jd.b("Fail to initialize AdSharedPreferenceManager.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bundle p() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("listener_registration_bundle", true);
        synchronized (this.f5173b) {
            bundle.putBoolean("use_https", this.g);
            bundle.putBoolean("content_url_opted_out", this.s);
            bundle.putBoolean("content_vertical_opted_out", this.t);
            bundle.putBoolean("auto_collect_location", this.j);
            bundle.putInt("version_code", this.p);
            bundle.putStringArray("never_pool_slots", (String[]) this.q.toArray(new String[this.q.size()]));
            bundle.putString("app_settings_json", this.k);
            bundle.putLong("app_settings_last_update_ms", this.l);
            bundle.putLong("app_last_background_time_ms", this.m);
            bundle.putInt("request_in_session_count", this.o);
            bundle.putLong("first_ad_req_time_ms", this.n);
            bundle.putString("native_advanced_settings", this.r.toString());
            if (this.h != null) {
                bundle.putString("content_url_hashes", this.h);
            }
            if (this.i != null) {
                bundle.putString("content_vertical_hashes", this.i);
            }
        }
        return bundle;
    }

    public final void a(int i) {
        o();
        synchronized (this.f5173b) {
            if (this.p == i) {
                return;
            }
            this.p = i;
            if (this.f5172a != null) {
                this.f5172a.putInt("version_code", i);
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("version_code", i);
            a(bundle);
        }
    }

    public final void a(long j) {
        o();
        synchronized (this.f5173b) {
            if (this.m == j) {
                return;
            }
            this.m = j;
            if (this.f5172a != null) {
                this.f5172a.putLong("app_last_background_time_ms", j);
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("app_last_background_time_ms", j);
            a(bundle);
        }
    }

    public final void a(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.f5174c = (nd) new jg(this, context).c();
    }

    public final void a(jj jjVar) {
        synchronized (this.f5173b) {
            if (this.f5174c != null && this.f5174c.isDone()) {
                jjVar.a(p());
            }
            this.f5175d.add(jjVar);
        }
    }

    public final void a(@Nullable String str) {
        o();
        synchronized (this.f5173b) {
            if (str != null) {
                if (!str.equals(this.h)) {
                    this.h = str;
                    if (this.f5172a != null) {
                        this.f5172a.putString("content_url_hashes", str);
                        this.f5172a.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_url_hashes", str);
                    a(bundle);
                }
            }
        }
    }

    public final void a(String str, String str2, boolean z) {
        int i = 0;
        o();
        synchronized (this.f5173b) {
            JSONArray jSONArrayOptJSONArray = this.r.optJSONArray(str);
            JSONArray jSONArray = jSONArrayOptJSONArray == null ? new JSONArray() : jSONArrayOptJSONArray;
            int length = jSONArray.length();
            while (true) {
                if (i >= jSONArray.length()) {
                    i = length;
                    break;
                }
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject == null) {
                    return;
                }
                if (!str2.equals(jSONObjectOptJSONObject.optString("template_id"))) {
                    i++;
                } else if (z && jSONObjectOptJSONObject.optBoolean("uses_media_view", false) == z) {
                    return;
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("template_id", str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", com.google.android.gms.ads.internal.aw.l().a());
                jSONArray.put(i, jSONObject);
                this.r.put(str, jSONArray);
            } catch (JSONException e) {
                jd.c("Could not update native advanced settings", e);
            }
            if (this.f5172a != null) {
                this.f5172a.putString("native_advanced_settings", this.r.toString());
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", this.r.toString());
            a(bundle);
        }
    }

    public final void a(boolean z) {
        o();
        synchronized (this.f5173b) {
            if (this.g == z) {
                return;
            }
            this.g = z;
            if (this.f5172a != null) {
                this.f5172a.putBoolean("use_https", z);
                this.f5172a.apply();
            }
            if (!this.f) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("use_https", z);
                a(bundle);
            }
        }
    }

    public final boolean a() {
        boolean z;
        o();
        synchronized (this.f5173b) {
            z = this.g || this.f;
        }
        return z;
    }

    public final void b(int i) {
        o();
        synchronized (this.f5173b) {
            if (this.o == i) {
                return;
            }
            this.o = i;
            if (this.f5172a != null) {
                this.f5172a.putInt("request_in_session_count", i);
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("request_in_session_count", i);
            a(bundle);
        }
    }

    public final void b(long j) {
        o();
        synchronized (this.f5173b) {
            if (this.n == j) {
                return;
            }
            this.n = j;
            if (this.f5172a != null) {
                this.f5172a.putLong("first_ad_req_time_ms", j);
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("first_ad_req_time_ms", j);
            a(bundle);
        }
    }

    public final void b(@Nullable String str) {
        o();
        synchronized (this.f5173b) {
            if (str != null) {
                if (!str.equals(this.i)) {
                    this.i = str;
                    if (this.f5172a != null) {
                        this.f5172a.putString("content_vertical_hashes", str);
                        this.f5172a.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_vertical_hashes", str);
                    a(bundle);
                }
            }
        }
    }

    public final void b(boolean z) {
        o();
        synchronized (this.f5173b) {
            if (this.s == z) {
                return;
            }
            this.s = z;
            if (this.f5172a != null) {
                this.f5172a.putBoolean("content_url_opted_out", z);
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.s);
            bundle.putBoolean("content_vertical_opted_out", this.t);
            a(bundle);
        }
    }

    public final boolean b() {
        boolean z;
        o();
        synchronized (this.f5173b) {
            z = this.s;
        }
        return z;
    }

    @Nullable
    public final String c() {
        String str;
        o();
        synchronized (this.f5173b) {
            str = this.h;
        }
        return str;
    }

    public final void c(String str) {
        o();
        synchronized (this.f5173b) {
            if (this.q.contains(str)) {
                return;
            }
            this.q.add(str);
            if (this.f5172a != null) {
                this.f5172a.putStringSet("never_pool_slots", this.q);
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putStringArray("never_pool_slots", (String[]) this.q.toArray(new String[this.q.size()]));
            a(bundle);
        }
    }

    public final void c(boolean z) {
        o();
        synchronized (this.f5173b) {
            if (this.t == z) {
                return;
            }
            this.t = z;
            if (this.f5172a != null) {
                this.f5172a.putBoolean("content_vertical_opted_out", z);
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.s);
            bundle.putBoolean("content_vertical_opted_out", this.t);
            a(bundle);
        }
    }

    public final void d(String str) {
        o();
        synchronized (this.f5173b) {
            if (this.q.contains(str)) {
                this.q.remove(str);
                if (this.f5172a != null) {
                    this.f5172a.putStringSet("never_pool_slots", this.q);
                    this.f5172a.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putStringArray("never_pool_slots", (String[]) this.q.toArray(new String[this.q.size()]));
                a(bundle);
            }
        }
    }

    public final void d(boolean z) {
        o();
        synchronized (this.f5173b) {
            if (this.j == z) {
                return;
            }
            this.j = z;
            if (this.f5172a != null) {
                this.f5172a.putBoolean("auto_collect_location", z);
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("auto_collect_location", z);
            a(bundle);
        }
    }

    public final boolean d() {
        boolean z;
        o();
        synchronized (this.f5173b) {
            z = this.t;
        }
        return z;
    }

    @Nullable
    public final String e() {
        String str;
        o();
        synchronized (this.f5173b) {
            str = this.i;
        }
        return str;
    }

    public final boolean e(String str) {
        boolean zContains;
        o();
        synchronized (this.f5173b) {
            zContains = this.q.contains(str);
        }
        return zContains;
    }

    public final void f(String str) {
        o();
        synchronized (this.f5173b) {
            long jA = com.google.android.gms.ads.internal.aw.l().a();
            this.l = jA;
            if (str == null || str.equals(this.k)) {
                return;
            }
            this.k = str;
            if (this.f5172a != null) {
                this.f5172a.putString("app_settings_json", str);
                this.f5172a.putLong("app_settings_last_update_ms", jA);
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("app_settings_json", str);
            bundle.putLong("app_settings_last_update_ms", jA);
            a(bundle);
        }
    }

    public final boolean f() {
        boolean z;
        o();
        synchronized (this.f5173b) {
            z = this.j;
        }
        return z;
    }

    public final int g() {
        int i;
        o();
        synchronized (this.f5173b) {
            i = this.p;
        }
        return i;
    }

    public final im h() {
        im imVar;
        o();
        synchronized (this.f5173b) {
            imVar = new im(this.k, this.l);
        }
        return imVar;
    }

    public final long i() {
        long j;
        o();
        synchronized (this.f5173b) {
            j = this.m;
        }
        return j;
    }

    public final int j() {
        int i;
        o();
        synchronized (this.f5173b) {
            i = this.o;
        }
        return i;
    }

    public final long k() {
        long j;
        o();
        synchronized (this.f5173b) {
            j = this.n;
        }
        return j;
    }

    public final JSONObject l() {
        JSONObject jSONObject;
        o();
        synchronized (this.f5173b) {
            jSONObject = this.r;
        }
        return jSONObject;
    }

    public final void m() {
        o();
        synchronized (this.f5173b) {
            this.r = new JSONObject();
            if (this.f5172a != null) {
                this.f5172a.remove("native_advanced_settings");
                this.f5172a.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", "{}");
            a(bundle);
        }
    }
}
