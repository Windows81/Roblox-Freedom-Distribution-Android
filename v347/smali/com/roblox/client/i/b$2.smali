.class Lcom/roblox/client/i/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/i/b;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/roblox/client/i/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/b;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/roblox/client/i/b$2;->b:Lcom/roblox/client/i/b;

    iput-object p2, p0, Lcom/roblox/client/i/b$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 404
    const-string v0, "AdSessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdDetails::onFinished: response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/roblox/client/i/b$2;->b:Lcom/roblox/client/i/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/i/b;->a(Lcom/roblox/client/i/b;Lcom/roblox/client/http/n;)Lcom/roblox/client/http/n;

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/i/b$2;->b:Lcom/roblox/client/i/b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/roblox/client/i/b;->a(Lcom/roblox/client/i/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    iget-object v0, p0, Lcom/roblox/client/i/b$2;->b:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->e(Lcom/roblox/client/i/b;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "TargetingParameters"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/roblox/client/i/b$2;->b:Lcom/roblox/client/i/b;

    iget-object v1, p0, Lcom/roblox/client/i/b$2;->b:Lcom/roblox/client/i/b;

    invoke-static {v1}, Lcom/roblox/client/i/b;->e(Lcom/roblox/client/i/b;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "TargetingParameters"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/i/b;->a(Lcom/roblox/client/i/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/i/b$2;->b:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->e(Lcom/roblox/client/i/b;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/roblox/client/i/b$2;->b:Lcom/roblox/client/i/b;

    invoke-static {v0}, Lcom/roblox/client/i/b;->e(Lcom/roblox/client/i/b;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "IsVideoAd"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/roblox/client/i/b$2;->a:Landroid/app/Activity;

    const-string v1, "A video ad is ready"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 433
    :cond_1
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    const-string v1, "AdSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdDetails:onFinished: Exception in parsing body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/i/b$2;->b:Lcom/roblox/client/i/b;

    iget-object v1, p0, Lcom/roblox/client/i/b$2;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/roblox/client/i/b;->a(Lcom/roblox/client/i/b;Landroid/content/Context;)V

    goto :goto_0
.end method
