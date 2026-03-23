.class public final Lcom/google/android/gms/internal/measurement/ca;
.super Lcom/google/android/gms/internal/measurement/ac;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:J

.field private c:J

.field private final d:Lcom/google/android/gms/internal/measurement/cc;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/ae;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ac;-><init>(Lcom/google/android/gms/internal/measurement/ae;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ca;->c:J

    new-instance p1, Lcom/google/android/gms/internal/measurement/cc;

    sget-object v0, Lcom/google/android/gms/internal/measurement/bm;->D:Lcom/google/android/gms/internal/measurement/bn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v4, "monitoring"

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/cc;-><init>(Lcom/google/android/gms/internal/measurement/ca;Ljava/lang/String;JLcom/google/android/gms/internal/measurement/cb;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ca;->d:Lcom/google/android/gms/internal/measurement/cc;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ca;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/ca;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ca;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ca;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "installation_campaign"

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Failed to commit campaign data"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b()J
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ca;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ca;->a:Landroid/content/SharedPreferences;

    const-string v1, "first_run"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    iput-wide v4, p0, Lcom/google/android/gms/internal/measurement/ca;->b:J

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ca;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to commit first run time"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ab;->e(Ljava/lang/String;)V

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/measurement/ca;->b:J

    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ca;->b:J

    return-wide v0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/cj;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/cj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ca;->b()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/cj;-><init>(Lcom/google/android/gms/common/util/d;J)V

    return-object v0
.end method

.method public final d()J
    .locals 5

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ca;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ca;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "last_dispatch"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ca;->c:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ca;->c:J

    return-wide v0
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ab;->i()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ca;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_dispatch"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ca;->c:J

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/analytics/s;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ac;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ca;->a:Landroid/content/SharedPreferences;

    const-string v1, "installation_campaign"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/measurement/cc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ca;->d:Lcom/google/android/gms/internal/measurement/cc;

    return-object v0
.end method
