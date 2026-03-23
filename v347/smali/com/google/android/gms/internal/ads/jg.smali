.class final Lcom/google/android/gms/internal/ads/jg;
.super Lcom/google/android/gms/internal/ads/ji;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/jf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jf;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jg;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ji;-><init>(Lcom/google/android/gms/internal/ads/jg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->a:Landroid/content/Context;

    const-string v1, "admob"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/jf;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/jf;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/jf;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->b(Lcom/google/android/gms/internal/ads/jf;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/jf;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "use_https"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->c(Lcom/google/android/gms/internal/ads/jf;)Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->b(Lcom/google/android/gms/internal/ads/jf;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "content_url_opted_out"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->e(Lcom/google/android/gms/internal/ads/jf;)Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->c(Lcom/google/android/gms/internal/ads/jf;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "content_url_hashes"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->f(Lcom/google/android/gms/internal/ads/jf;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "auto_collect_location"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->g(Lcom/google/android/gms/internal/ads/jf;)Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "content_vertical_opted_out"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->h(Lcom/google/android/gms/internal/ads/jf;)Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->e(Lcom/google/android/gms/internal/ads/jf;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "content_vertical_hashes"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->i(Lcom/google/android/gms/internal/ads/jf;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->b(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "version_code"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->j(Lcom/google/android/gms/internal/ads/jf;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/jf;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "app_settings_json"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->k(Lcom/google/android/gms/internal/ads/jf;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->c(Lcom/google/android/gms/internal/ads/jf;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "app_settings_last_update_ms"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->l(Lcom/google/android/gms/internal/ads/jf;)J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/jf;J)J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "app_last_background_time_ms"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->m(Lcom/google/android/gms/internal/ads/jf;)J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/jf;->b(Lcom/google/android/gms/internal/ads/jf;J)J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "request_in_session_count"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->n(Lcom/google/android/gms/internal/ads/jf;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->b(Lcom/google/android/gms/internal/ads/jf;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "first_ad_req_time_ms"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->o(Lcom/google/android/gms/internal/ads/jf;)J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/jf;->c(Lcom/google/android/gms/internal/ads/jf;J)J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "never_pool_slots"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jf;->p(Lcom/google/android/gms/internal/ads/jf;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/jf;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/jf;->d(Lcom/google/android/gms/internal/ads/jf;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "native_advanced_settings"

    const-string v5, "{}"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/jf;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->b:Lcom/google/android/gms/internal/ads/jf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jf;->q(Lcom/google/android/gms/internal/ads/jf;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/jf;Landroid/os/Bundle;)V

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not convert native advanced settings to json object"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
