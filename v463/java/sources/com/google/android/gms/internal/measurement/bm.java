package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bm {
    public static bn<Long> A;
    public static bn<Long> B;
    public static bn<Long> C;
    public static bn<Long> D;
    public static bn<Long> E;
    private static bn<Integer> L;
    private static bn<Long> M;
    private static bn<String> N;
    private static bn<Integer> O;
    private static bn<Long> P;
    private static bn<Long> Q;
    public static bn<String> q;
    public static bn<Integer> r;
    public static bn<Integer> s;
    public static bn<Integer> t;
    public static bn<String> u;
    public static bn<Integer> v;
    public static bn<Integer> w;
    public static bn<Integer> x;
    public static bn<Long> y;
    public static bn<Boolean> z;
    private static bn<Boolean> F = bn.a("analytics.service_enabled", false, false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static bn<Boolean> f4082a = bn.a("analytics.service_client_enabled", true, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static bn<String> f4083b = bn.a("analytics.log_tag", "GAv4", "GAv4-SVC");
    private static bn<Long> G = bn.a("analytics.max_tokens", 60L, 60L);
    private static bn<Float> H = bn.a("analytics.tokens_per_sec", 0.5f, 0.5f);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static bn<Integer> f4084c = bn.a("analytics.max_stored_hits", 2000, 20000);
    private static bn<Integer> I = bn.a("analytics.max_stored_hits_per_app", 2000, 2000);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static bn<Integer> f4085d = bn.a("analytics.max_stored_properties_per_app", 100, 100);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static bn<Long> f4086e = bn.a("analytics.local_dispatch_millis", 1800000L, 120000L);
    public static bn<Long> f = bn.a("analytics.initial_local_dispatch_millis", 5000L, 5000L);
    private static bn<Long> J = bn.a("analytics.min_local_dispatch_millis", 120000L, 120000L);
    private static bn<Long> K = bn.a("analytics.max_local_dispatch_millis", 7200000L, 7200000L);
    public static bn<Long> g = bn.a("analytics.dispatch_alarm_millis", 7200000L, 7200000L);
    public static bn<Long> h = bn.a("analytics.max_dispatch_alarm_millis", 32400000L, 32400000L);
    public static bn<Integer> i = bn.a("analytics.max_hits_per_dispatch", 20, 20);
    public static bn<Integer> j = bn.a("analytics.max_hits_per_batch", 20, 20);
    public static bn<String> k = bn.a("analytics.insecure_host", "http://www.google-analytics.com", "http://www.google-analytics.com");
    public static bn<String> l = bn.a("analytics.secure_host", "https://ssl.google-analytics.com", "https://ssl.google-analytics.com");
    public static bn<String> m = bn.a("analytics.simple_endpoint", "/collect", "/collect");
    public static bn<String> n = bn.a("analytics.batching_endpoint", "/batch", "/batch");
    public static bn<Integer> o = bn.a("analytics.max_get_length", 2036, 2036);
    public static bn<String> p = bn.a("analytics.batching_strategy.k", av.BATCH_BY_COUNT.name(), av.BATCH_BY_COUNT.name());

    static {
        String strName = ba.GZIP.name();
        q = bn.a("analytics.compression_strategy.k", strName, strName);
        L = bn.a("analytics.max_hits_per_request.k", 20, 20);
        r = bn.a("analytics.max_hit_length.k", 8192, 8192);
        s = bn.a("analytics.max_post_length.k", 8192, 8192);
        t = bn.a("analytics.max_batch_post_length", 8192, 8192);
        u = bn.a("analytics.fallback_responses.k", "404,502", "404,502");
        v = bn.a("analytics.batch_retry_interval.seconds.k", 3600, 3600);
        M = bn.a("analytics.service_monitor_interval", 86400000L, 86400000L);
        w = bn.a("analytics.http_connection.connect_timeout_millis", 60000, 60000);
        x = bn.a("analytics.http_connection.read_timeout_millis", 61000, 61000);
        y = bn.a("analytics.campaigns.time_limit", 86400000L, 86400000L);
        N = bn.a("analytics.first_party_experiment_id", "", "");
        O = bn.a("analytics.first_party_experiment_variant", 0, 0);
        z = bn.a("analytics.test.disable_receiver", false, false);
        A = bn.a("analytics.service_client.idle_disconnect_millis", 10000L, 10000L);
        B = bn.a("analytics.service_client.connect_timeout_millis", 5000L, 5000L);
        P = bn.a("analytics.service_client.second_connect_delay_millis", 5000L, 5000L);
        Q = bn.a("analytics.service_client.unexpected_reconnect_millis", 60000L, 60000L);
        C = bn.a("analytics.service_client.reconnect_throttle_millis", 1800000L, 1800000L);
        D = bn.a("analytics.monitoring.sample_period_millis", 86400000L, 86400000L);
        E = bn.a("analytics.initialization_warning_threshold", 5000L, 5000L);
    }
}
