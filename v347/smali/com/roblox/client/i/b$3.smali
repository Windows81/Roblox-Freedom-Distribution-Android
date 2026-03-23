.class Lcom/roblox/client/i/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/i/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/b;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/roblox/client/i/b$3;->a:Lcom/roblox/client/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 459
    const-string v1, "AdSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdStatusListener: response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/roblox/client/i/b$3;->a:Lcom/roblox/client/i/b;

    const-string v3, "ShouldShowAd"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    invoke-static {}, Lcom/roblox/client/b;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 462
    :cond_1
    invoke-static {v2, v0}, Lcom/roblox/client/i/b;->b(Lcom/roblox/client/i/b;Z)Z

    .line 464
    iget-object v0, p0, Lcom/roblox/client/i/b$3;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->f(Lcom/roblox/client/i/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/roblox/client/i/b$3;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->e(Lcom/roblox/client/i/b;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/roblox/client/i/b$3;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->e(Lcom/roblox/client/i/b;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "IsVideoAd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/roblox/client/i/b$3;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->g(Lcom/roblox/client/i/b;)V

    .line 477
    :goto_0
    return-void

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/i/b$3;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->h(Lcom/roblox/client/i/b;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/i/b$3;->a:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->a(Lcom/roblox/client/i/b;)V

    goto :goto_0
.end method
