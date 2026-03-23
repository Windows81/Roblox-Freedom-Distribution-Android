.class public Lcom/roblox/client/h/s;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# instance fields
.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/roblox/client/h/s;->d:J

    .line 25
    iput-boolean p3, p0, Lcom/roblox/client/h/s;->e:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlAPI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "users/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/h/s;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0, v1, v1}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/http/j;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 42
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/roblox/client/chat/a/m;

    const-string v3, "Id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v3, "Username"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v5, v2}, Lcom/roblox/client/chat/a/m;-><init>(JLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/a/n;->a(Lcom/roblox/client/chat/a/m;)V

    .line 52
    iget-boolean v1, p0, Lcom/roblox/client/h/s;->e:Z

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/roblox/client/chat/a/n;->a()Lcom/roblox/client/chat/a/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/a/n;->b(Lcom/roblox/client/chat/a/m;)V

    .line 57
    :cond_0
    new-instance v1, Lcom/roblox/client/h/m;

    iget-wide v2, p0, Lcom/roblox/client/h/s;->d:J

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/h/m;-><init>(J)V

    .line 58
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 60
    iget-boolean v1, p0, Lcom/roblox/client/h/s;->e:Z

    if-eqz v1, :cond_1

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/e/m;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/roblox/client/e/m;-><init>(Lcom/roblox/client/chat/a/m;I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 64
    :cond_1
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
