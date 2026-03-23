.class Lcom/google/ads/interactivemedia/v3/impl/g$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/g;

.field private b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/g;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    .line 249
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->c:Ljava/lang/String;

    .line 250
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    const-string v0, ""

    .line 258
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->f(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->g(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/a/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    new-instance v2, Lcom/google/a/a/g;

    const-string v3, "a.3.3.2"

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    .line 262
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/g;->c(Lcom/google/ads/interactivemedia/v3/impl/g;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/a/a/f;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/a/a/f;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/a/a/g;-><init>(Lcom/google/a/a/c;)V

    .line 261
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/impl/g;->a(Lcom/google/ads/interactivemedia/v3/impl/g;Lcom/google/a/a/g;)Lcom/google/a/a/g;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->g(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/g;->a()Lcom/google/a/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/g;->c(Lcom/google/ads/interactivemedia/v3/impl/g;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/a/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 266
    monitor-exit v1

    .line 268
    return-object v0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    .line 277
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/g;->h(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/g;->i(Lcom/google/ads/interactivemedia/v3/impl/g;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/impl/g;->j(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    .line 278
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/g;->k(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/g$b;

    move-result-object v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/impl/g;->l(Lcom/google/ads/interactivemedia/v3/impl/g;)Z

    move-result v5

    move-object v6, p1

    .line 276
    invoke-static/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/impl/data/i;->createFromStreamRequest(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/g$b;ZLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/i;

    move-result-object v0

    .line 279
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/w;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/w$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/w$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/w$c;->requestStream:Lcom/google/ads/interactivemedia/v3/impl/w$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/impl/w;-><init>(Lcom/google/ads/interactivemedia/v3/impl/w$b;Lcom/google/ads/interactivemedia/v3/impl/w$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->b(Lcom/google/ads/interactivemedia/v3/impl/g;)Lcom/google/ads/interactivemedia/v3/impl/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/x;->b(Lcom/google/ads/interactivemedia/v3/impl/w;)V

    .line 282
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 243
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/g$c;->a(Ljava/lang/String;)V

    return-void
.end method
