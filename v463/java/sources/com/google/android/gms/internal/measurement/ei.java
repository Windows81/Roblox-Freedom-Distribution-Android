package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.a.a.a;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ei extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pair<String, Long> f4259a = new Pair<>("", 0L);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public em f4260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final el f4261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final el f4262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final el f4263e;
    public final el f;
    public final el g;
    public final el h;
    public final el i;
    public final en j;
    public final el k;
    public final el l;
    public final ek m;
    public final el n;
    public final el o;
    public boolean p;
    private SharedPreferences r;
    private String s;
    private boolean t;
    private long u;
    private String v;
    private long w;
    private final Object x;

    ei(fc fcVar) {
        super(fcVar);
        this.f4261c = new el(this, "last_upload", 0L);
        this.f4262d = new el(this, "last_upload_attempt", 0L);
        this.f4263e = new el(this, "backoff", 0L);
        this.f = new el(this, "last_delete_stale", 0L);
        this.k = new el(this, "time_before_start", 10000L);
        this.l = new el(this, "session_timeout", 1800000L);
        this.m = new ek(this, "start_new_session", true);
        this.n = new el(this, "last_pause_time", 0L);
        this.o = new el(this, "time_active", 0L);
        this.g = new el(this, "midnight_offset", 0L);
        this.h = new el(this, "first_open_time", 0L);
        this.i = new el(this, "app_install_time", 0L);
        this.j = new en(this, "app_instance_id", null);
        this.x = new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedPreferences C() {
        c();
        F();
        return this.r;
    }

    final boolean A() {
        c();
        return C().getBoolean("deferred_analytics_collection", false);
    }

    final boolean B() {
        return this.r.contains("deferred_analytics_collection");
    }

    final Pair<String, Boolean> a(String str) {
        c();
        long jB = j().b();
        if (this.s != null && jB < this.u) {
            return new Pair<>(this.s, Boolean.valueOf(this.t));
        }
        this.u = jB + s().a(str, dn.f4211c);
        com.google.android.gms.a.a.a.a(true);
        try {
            a.C0076a c0076aA = com.google.android.gms.a.a.a.a(k());
            if (c0076aA != null) {
                this.s = c0076aA.a();
                this.t = c0076aA.b();
            }
            if (this.s == null) {
                this.s = "";
            }
        } catch (Exception e2) {
            q().B().a("Unable to get advertising id", e2);
            this.s = "";
        }
        com.google.android.gms.a.a.a.a(false);
        return new Pair<>(this.s, Boolean.valueOf(this.t));
    }

    final void a(boolean z) {
        c();
        q().C().a("Setting useService", Boolean.valueOf(z));
        SharedPreferences.Editor editorEdit = C().edit();
        editorEdit.putBoolean("use_service", z);
        editorEdit.apply();
    }

    final String b(String str) {
        c();
        String str2 = (String) a(str).first;
        MessageDigest messageDigestF = iq.f("MD5");
        if (messageDigestF == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestF.digest(str2.getBytes())));
    }

    final void b(boolean z) {
        c();
        q().C().a("Setting measurementEnabled", Boolean.valueOf(z));
        SharedPreferences.Editor editorEdit = C().edit();
        editorEdit.putBoolean("measurement_enabled", z);
        editorEdit.apply();
    }

    final void c(String str) {
        c();
        SharedPreferences.Editor editorEdit = C().edit();
        editorEdit.putString("gmp_app_id", str);
        editorEdit.apply();
    }

    final boolean c(boolean z) {
        c();
        return C().getBoolean("measurement_enabled", z);
    }

    final void d(String str) {
        synchronized (this.x) {
            this.v = str;
            this.w = j().b();
        }
    }

    final void d(boolean z) {
        c();
        q().C().a("Updating deferred analytics collection", Boolean.valueOf(z));
        SharedPreferences.Editor editorEdit = C().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z);
        editorEdit.apply();
    }

    @Override // com.google.android.gms.internal.measurement.fy
    protected final void e_() {
        SharedPreferences sharedPreferences = k().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.r = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.p = z;
        if (!z) {
            SharedPreferences.Editor editorEdit = this.r.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        this.f4260b = new em(this, "health_monitor", Math.max(0L, dn.f4212d.b().longValue()));
    }

    @Override // com.google.android.gms.internal.measurement.fy
    protected final boolean t() {
        return true;
    }

    final String v() {
        c();
        return C().getString("gmp_app_id", null);
    }

    final String w() {
        synchronized (this.x) {
            if (Math.abs(j().b() - this.w) >= 1000) {
                return null;
            }
            return this.v;
        }
    }

    final Boolean x() {
        c();
        if (C().contains("use_service")) {
            return Boolean.valueOf(C().getBoolean("use_service", false));
        }
        return null;
    }

    final void y() {
        c();
        q().C().a("Clearing collection preferences.");
        boolean zContains = C().contains("measurement_enabled");
        boolean zC = zContains ? c(true) : true;
        SharedPreferences.Editor editorEdit = C().edit();
        editorEdit.clear();
        editorEdit.apply();
        if (zContains) {
            b(zC);
        }
    }

    protected final String z() {
        c();
        String string = C().getString("previous_os_version", null);
        g().F();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor editorEdit = C().edit();
            editorEdit.putString("previous_os_version", str);
            editorEdit.apply();
        }
        return string;
    }
}
