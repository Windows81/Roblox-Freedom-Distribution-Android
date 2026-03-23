.class public Lcom/roblox/client/r/b;
.super Lcom/roblox/client/r/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/r/b$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/roblox/client/r/b$a;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/roblox/client/r/b$a;)V
    .locals 2

    .line 30
    invoke-static {}, Lcom/roblox/client/r/b;->n()Lcom/birbit/android/jobqueue/l;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/l;->a(Ljava/lang/String;)Lcom/birbit/android/jobqueue/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/r/f;-><init>(Lcom/birbit/android/jobqueue/l;)V

    .line 31
    iput-wide p1, p0, Lcom/roblox/client/r/b;->e:J

    .line 32
    iput-object p3, p0, Lcom/roblox/client/r/b;->d:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/roblox/client/r/b;->f:Lcom/roblox/client/r/b$a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/r/b;)Lcom/roblox/client/r/b$a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/client/r/b;->f:Lcom/roblox/client/r/b$a;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/roblox/client/r/b;->f:Lcom/roblox/client/r/b$a;

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/roblox/client/r/b;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/r/b$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/r/b$1;-><init>(Lcom/roblox/client/r/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, "Send Failed"

    :goto_0
    if-nez p2, :cond_1

    const-string p1, "Failure"

    .line 71
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/r/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/roblox/client/r/b;->f:Lcom/roblox/client/r/b$a;

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/roblox/client/r/b;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/r/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/r/b$2;-><init>(Lcom/roblox/client/r/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/r/f$a;)V
    .locals 0

    const/4 p1, 0x0

    .line 98
    invoke-direct {p0, p1, p1}, Lcom/roblox/client/r/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->b()Lcom/roblox/platform/http/c/e;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;

    iget-wide v2, p0, Lcom/roblox/client/r/b;->e:J

    iget-object v4, p0, Lcom/roblox/client/r/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/e;->a(Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;)Le/b;

    move-result-object v0

    invoke-interface {v0}, Le/b;->a()Le/l;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Le/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/ad;

    invoke-virtual {v0}, Lc/ad;->g()Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/roblox/client/e/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPMJ.onRun() payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "resultType"

    .line 49
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Success"

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "statusMessage"

    .line 52
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/r/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "messageId"

    .line 56
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Lcom/roblox/client/r/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
