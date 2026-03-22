package com.google.android.gms.internal.measurement;

import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class dn {
    public static Cdo<Long> A;
    public static Cdo<Long> B;
    public static Cdo<Long> C;
    public static Cdo<Integer> D;
    public static Cdo<Long> E;
    public static Cdo<Integer> F;
    public static Cdo<Integer> G;
    public static Cdo<Long> H;
    public static Cdo<Boolean> I;
    public static Cdo<String> J;
    public static Cdo<Long> K;
    public static Cdo<Integer> L;
    public static Cdo<Double> M;
    public static Cdo<Boolean> N;
    public static Cdo<Boolean> O;
    public static Cdo<Boolean> P;
    public static Cdo<Boolean> Q;
    public static Cdo<Boolean> R;
    public static Cdo<Boolean> S;
    public static Cdo<Boolean> T;
    public static Cdo<Boolean> U;
    private static final kj V;
    private static Cdo<Boolean> W;
    private static Cdo<Boolean> X;
    private static Cdo<Boolean> Y;
    private static Cdo<Boolean> Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Cdo<Boolean> f4209a;
    private static Cdo<Boolean> aa;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Cdo<String> f4210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Cdo<Long> f4211c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Cdo<Long> f4212d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Cdo<Long> f4213e;
    public static Cdo<String> f;
    public static Cdo<String> g;
    public static Cdo<Integer> h;
    public static Cdo<Integer> i;
    public static Cdo<Integer> j;
    public static Cdo<Integer> k;
    public static Cdo<Integer> l;
    public static Cdo<Integer> m;
    public static Cdo<Integer> n;
    public static Cdo<Integer> o;
    public static Cdo<Integer> p;
    public static Cdo<Integer> q;
    public static Cdo<String> r;
    public static Cdo<Long> s;
    public static Cdo<Long> t;
    public static Cdo<Long> u;
    public static Cdo<Long> v;
    public static Cdo<Long> w;
    public static Cdo<Long> x;
    public static Cdo<Long> y;
    public static Cdo<Long> z;

    static {
        String strValueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
        V = new kj(Uri.parse(strValueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(strValueOf) : new String("content://com.google.android.gms.phenotype/")));
        W = Cdo.a("measurement.log_third_party_store_events_enabled", false, false);
        X = Cdo.a("measurement.log_installs_enabled", false, false);
        Y = Cdo.a("measurement.log_upgrades_enabled", false, false);
        Z = Cdo.a("measurement.log_androidId_enabled", false, false);
        f4209a = Cdo.a("measurement.upload_dsid_enabled", false, false);
        f4210b = Cdo.a("measurement.log_tag", "FA", "FA-SVC");
        f4211c = Cdo.a("measurement.ad_id_cache_time", 10000L, 10000L);
        f4212d = Cdo.a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L);
        f4213e = Cdo.a("measurement.config.cache_time", 86400000L, 3600000L);
        f = Cdo.a("measurement.config.url_scheme", "https", "https");
        g = Cdo.a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com");
        h = Cdo.a("measurement.upload.max_bundles", 100, 100);
        i = Cdo.a("measurement.upload.max_batch_size", 65536, 65536);
        j = Cdo.a("measurement.upload.max_bundle_size", 65536, 65536);
        k = Cdo.a("measurement.upload.max_events_per_bundle", 1000, 1000);
        l = Cdo.a("measurement.upload.max_events_per_day", 100000, 100000);
        m = Cdo.a("measurement.upload.max_error_events_per_day", 1000, 1000);
        n = Cdo.a("measurement.upload.max_public_events_per_day", 50000, 50000);
        o = Cdo.a("measurement.upload.max_conversions_per_day", 500, 500);
        p = Cdo.a("measurement.upload.max_realtime_events_per_day", 10, 10);
        q = Cdo.a("measurement.store.max_stored_events_per_app", 100000, 100000);
        r = Cdo.a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a");
        s = Cdo.a("measurement.upload.backoff_period", 43200000L, 43200000L);
        t = Cdo.a("measurement.upload.window_interval", 3600000L, 3600000L);
        u = Cdo.a("measurement.upload.interval", 3600000L, 3600000L);
        v = Cdo.a("measurement.upload.realtime_upload_interval", 10000L, 10000L);
        w = Cdo.a("measurement.upload.debug_upload_interval", 1000L, 1000L);
        x = Cdo.a("measurement.upload.minimum_delay", 500L, 500L);
        y = Cdo.a("measurement.alarm_manager.minimum_interval", 60000L, 60000L);
        z = Cdo.a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L);
        A = Cdo.a("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L);
        B = Cdo.a("measurement.upload.initial_upload_delay_time", 15000L, 15000L);
        C = Cdo.a("measurement.upload.retry_time", 1800000L, 1800000L);
        D = Cdo.a("measurement.upload.retry_count", 6, 6);
        E = Cdo.a("measurement.upload.max_queue_time", 2419200000L, 2419200000L);
        F = Cdo.a("measurement.lifetimevalue.max_currency_tracked", 4, 4);
        G = Cdo.a("measurement.audience.filter_result_max_count", 200, 200);
        H = Cdo.a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L);
        I = Cdo.a("measurement.test.boolean_flag", false, false);
        J = Cdo.a("measurement.test.string_flag", "---", "---");
        K = Cdo.a("measurement.test.long_flag", -1L, -1L);
        L = Cdo.a("measurement.test.int_flag", -2, -2);
        M = Cdo.a("measurement.test.double_flag", -3.0d, -3.0d);
        N = Cdo.a("measurement.lifetimevalue.user_engagement_tracking_enabled", false, false);
        O = Cdo.a("measurement.audience.complex_param_evaluation", false, false);
        P = Cdo.a("measurement.validation.internal_limits_internal_event_params", false, false);
        Q = Cdo.a("measurement.quality.unsuccessful_update_retry_counter", false, false);
        R = Cdo.a("measurement.iid.disable_on_collection_disabled", true, true);
        S = Cdo.a("measurement.app_launch.call_only_when_enabled", true, true);
        T = Cdo.a("measurement.run_on_worker_inline", true, false);
        aa = Cdo.a("measurement.audience.dynamic_filters", false, false);
        U = Cdo.a("measurement.reset_analytics.persist_time", false, false);
    }
}
