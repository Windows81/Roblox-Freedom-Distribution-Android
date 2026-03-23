.class public Lcom/roblox/client/r/e;
.super Lcom/roblox/client/r/f;
.source "SourceFile"


# instance fields
.field private d:J

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(JJZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/roblox/client/r/f;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/roblox/client/r/e;->d:J

    .line 26
    iput-boolean p5, p0, Lcom/roblox/client/r/e;->e:Z

    .line 27
    iput-wide p3, p0, Lcom/roblox/client/r/e;->f:J

    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/r/f$a;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/u;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/roblox/client/r/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    invoke-static {v0, v1, v1}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/http/j;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 44
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/roblox/client/e/a/a;

    const-string v3, "Id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "Username"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Lcom/roblox/client/e/a/a;-><init>(JLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_0

    .line 52
    invoke-static {}, Lcom/roblox/client/e/a/b;->a()Lcom/roblox/client/e/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/roblox/client/e/a/b;->a(Lcom/roblox/client/e/a/a;)V

    .line 55
    new-instance v0, Lcom/roblox/client/r/c;

    iget-wide v2, p0, Lcom/roblox/client/r/e;->d:J

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/r/c;-><init>(J)V

    .line 56
    invoke-static {}, Lcom/roblox/client/s/g;->a()Lcom/birbit/android/jobqueue/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/birbit/android/jobqueue/i;->a(Lcom/birbit/android/jobqueue/g;)V

    .line 58
    iget-boolean v0, p0, Lcom/roblox/client/r/e;->e:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/l/f;

    iget-wide v3, p0, Lcom/roblox/client/r/e;->f:J

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/roblox/client/l/f;-><init>(Lcom/roblox/client/e/a/a;JI)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
