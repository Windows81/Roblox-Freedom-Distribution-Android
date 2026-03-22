package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class az {
    public static ba<Long> A;
    public static ba<Long> B;
    public static ba<Long> C;
    public static ba<Long> D;
    public static ba<Long> E;
    private static ba<Integer> L;
    private static ba<Long> M;
    private static ba<String> N;
    private static ba<Integer> O;
    private static ba<Long> P;
    private static ba<Long> Q;
    public static ba<String> q;
    public static ba<Integer> r;
    public static ba<Integer> s;
    public static ba<Integer> t;
    public static ba<String> u;
    public static ba<Integer> v;
    public static ba<Integer> w;
    public static ba<Integer> x;
    public static ba<Long> y;
    public static ba<Boolean> z;
    private static ba<Boolean> F = ba.a("analytics.service_enabled", false, false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ba<Boolean> f5887a = ba.a("analytics.service_client_enabled", true, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static ba<String> f5888b = ba.a("analytics.log_tag", "GAv4", "GAv4-SVC");
    private static ba<Long> G = ba.a("analytics.max_tokens", 60L, 60L);
    private static ba<Float> H = ba.a("analytics.tokens_per_sec", 0.5f, 0.5f);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static ba<Integer> f5889c = ba.a("analytics.max_stored_hits", 2000, 20000);
    private static ba<Integer> I = ba.a("analytics.max_stored_hits_per_app", 2000, 2000);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static ba<Integer> f5890d = ba.a("analytics.max_stored_properties_per_app", 100, 100);
    public static ba<Long> e = ba.a("analytics.local_dispatch_millis", 1800000L, 120000L);
    public static ba<Long> f = ba.a("analytics.initial_local_dispatch_millis", 5000L, 5000L);
    private static ba<Long> J = ba.a("analytics.min_local_dispatch_millis", 120000L, 120000L);
    private static ba<Long> K = ba.a("analytics.max_local_dispatch_millis", 7200000L, 7200000L);
    public static ba<Long> g = ba.a("analytics.dispatch_alarm_millis", 7200000L, 7200000L);
    public static ba<Long> h = ba.a("analytics.max_dispatch_alarm_millis", 32400000L, 32400000L);
    public static ba<Integer> i = ba.a("analytics.max_hits_per_dispatch", 20, 20);
    public static ba<Integer> j = ba.a("analytics.max_hits_per_batch", 20, 20);
    public static ba<String> k = ba.a("analytics.insecure_host", "http://www.google-analytics.com", "http://www.google-analytics.com");
    public static ba<String> l = ba.a("analytics.secure_host", "https://ssl.google-analytics.com", "https://ssl.google-analytics.com");
    public static ba<String> m = ba.a("analytics.simple_endpoint", "/collect", "/collect");
    public static ba<String> n = ba.a("analytics.batching_endpoint", "/batch", "/batch");
    public static ba<Integer> o = ba.a("analytics.max_get_length", 2036, 2036);
    public static ba<String> p = ba.a("analytics.batching_strategy.k", ai.BATCH_BY_COUNT.name(), ai.BATCH_BY_COUNT.name());

    static {
        String strName = an.GZIP.name();
        q = ba.a("analytics.compression_strategy.k", strName, strName);
        L = ba.a("analytics.max_hits_per_request.k", 20, 20);
        r = ba.a("analytics.max_hit_length.k", 8192, 8192);
        s = ba.a("analytics.max_post_length.k", 8192, 8192);
        t = ba.a("analytics.max_batch_post_length", 8192, 8192);
        u = ba.a("analytics.fallback_responses.k", "404,502", "404,502");
        v = ba.a("analytics.batch_retry_interval.seconds.k", 3600, 3600);
        M = ba.a("analytics.service_monitor_interval", 86400000L, 86400000L);
        w = ba.a("analytics.http_connection.connect_timeout_millis", 60000, 60000);
        x = ba.a("analytics.http_connection.read_timeout_millis", 61000, 61000);
        y = ba.a("analytics.campaigns.time_limit", 86400000L, 86400000L);
        N = ba.a("analytics.first_party_experiment_id", "", "");
        O = ba.a("analytics.first_party_experiment_variant", 0, 0);
        z = ba.a("analytics.test.disable_receiver", false, false);
        A = ba.a("analytics.service_client.idle_disconnect_millis", 10000L, 10000L);
        B = ba.a("analytics.service_client.connect_timeout_millis", 5000L, 5000L);
        P = ba.a("analytics.service_client.second_connect_delay_millis", 5000L, 5000L);
        Q = ba.a("analytics.service_client.unexpected_reconnect_millis", 60000L, 60000L);
        C = ba.a("analytics.service_client.reconnect_throttle_millis", 1800000L, 1800000L);
        D = ba.a("analytics.monitoring.sample_period_millis", 86400000L, 86400000L);
        E = ba.a("analytics.initialization_warning_threshold", 5000L, 5000L);
    }
}
