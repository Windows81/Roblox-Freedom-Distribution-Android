.class public final Lcom/google/android/gms/internal/ads/ayj;
.super Lcom/google/android/gms/internal/ads/ayw;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ays;
.implements Lcom/google/android/gms/internal/ads/ayy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ayw",
        "<",
        "Lcom/google/android/gms/internal/ads/bah;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ays;",
        "Lcom/google/android/gms/internal/ads/ayy;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/se;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/qo;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ayw;-><init>()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/se;

    new-instance v1, Lcom/google/android/gms/internal/ads/rq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/rq;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/se;-><init>(Lcom/google/android/gms/internal/ads/rq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/se;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    new-instance v1, Lcom/google/android/gms/internal/ads/ayk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ayk;-><init>(Lcom/google/android/gms/internal/ads/ayj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sb;->a(Lcom/google/android/gms/internal/ads/sg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    new-instance v1, Lcom/google/android/gms/internal/ads/ayl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ayl;-><init>(Lcom/google/android/gms/internal/ads/ayj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sb;->a(Lcom/google/android/gms/internal/ads/si;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    new-instance v1, Lcom/google/android/gms/internal/ads/ayr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/ayr;-><init>(Lcom/google/android/gms/internal/ads/ayv;Lcom/google/android/gms/internal/ads/ayq;)V

    const-string v2, "GoogleJsInterface"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/sb;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/aw;->e()Lcom/google/android/gms/internal/ads/jm;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzang;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/se;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/jm;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/qo;

    const-string v2, "Init failed."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/qo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/se;->destroy()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ayz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    new-instance v1, Lcom/google/android/gms/internal/ads/ayo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ayo;-><init>(Lcom/google/android/gms/internal/ads/ayz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/sb;->a(Lcom/google/android/gms/internal/ads/sk;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ayj;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ayt;->a(Lcom/google/android/gms/internal/ads/ays;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ayt;->a(Lcom/google/android/gms/internal/ads/ays;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ayt;->b(Lcom/google/android/gms/internal/ads/ays;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/bai;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/baj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/baj;-><init>(Lcom/google/android/gms/internal/ads/bah;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/nj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/ayp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ayp;-><init>(Lcom/google/android/gms/internal/ads/ayj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ayt;->a(Lcom/google/android/gms/internal/ads/ays;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/nj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/aym;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/aym;-><init>(Lcom/google/android/gms/internal/ads/ayj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/nj;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/ayn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ayn;-><init>(Lcom/google/android/gms/internal/ads/ayj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sb;->b(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sb;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic g(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayj;->a:Lcom/google/android/gms/internal/ads/se;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/se;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic o()Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    return-object p0
.end method
