.class Lcom/roblox/client/startup/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/startup/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/b;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/roblox/client/startup/b$8;->a:Lcom/roblox/client/startup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 4

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/roblox/client/startup/b$8;->a:Lcom/roblox/client/startup/b;

    const-string v1, "BTID with response code not 200"

    invoke-static {v0, v1}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/roblox/client/startup/b$8;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->k(Lcom/roblox/client/startup/b;)Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "Android-AppLogin-BrowserTracker-Failed"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 506
    :goto_0
    return-void

    .line 486
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 487
    const-string v1, "browserTrackerId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 496
    iget-object v2, p0, Lcom/roblox/client/startup/b$8;->a:Lcom/roblox/client/startup/b;

    invoke-static {v2}, Lcom/roblox/client/startup/b;->k(Lcom/roblox/client/startup/b;)Lcom/roblox/client/i/f;

    move-result-object v2

    const-string v3, "Android-AppLogin-BrowserTracker-Success"

    invoke-virtual {v2, v3}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/client/c;->a(J)V

    .line 500
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/roblox/abtesting/a;->a(J)V

    .line 502
    iget-object v0, p0, Lcom/roblox/client/startup/b$8;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->l(Lcom/roblox/client/startup/b;)V

    .line 504
    iget-object v0, p0, Lcom/roblox/client/startup/b$8;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->m(Lcom/roblox/client/startup/b;)V

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    iget-object v0, p0, Lcom/roblox/client/startup/b$8;->a:Lcom/roblox/client/startup/b;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->k(Lcom/roblox/client/startup/b;)Lcom/roblox/client/i/f;

    move-result-object v0

    const-string v1, "Android-AppLogin-BrowserTracker-JsonFailed"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/roblox/client/startup/b$8;->a:Lcom/roblox/client/startup/b;

    const-string v1, "BTID parse exc."

    invoke-static {v0, v1}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/roblox/client/http/j;)V
    .locals 0

    .prologue
    .line 511
    return-void
.end method
