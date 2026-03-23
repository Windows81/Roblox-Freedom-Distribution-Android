.class public Lcom/roblox/client/r/a;
.super Lcom/roblox/client/r/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/r/a$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/roblox/client/r/a$a;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/roblox/client/r/a$a;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/roblox/client/r/f;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/roblox/client/r/a;->e:J

    .line 28
    iput-object p3, p0, Lcom/roblox/client/r/a;->d:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/roblox/client/r/a;->f:Lcom/roblox/client/r/a$a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/r/a;)Lcom/roblox/client/r/a$a;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/roblox/client/r/a;->f:Lcom/roblox/client/r/a$a;

    return-object p0
.end method

.method private a(Z)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/roblox/client/r/a;->f:Lcom/roblox/client/r/a$a;

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/roblox/client/r/a;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/r/a$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/r/a$1;-><init>(Lcom/roblox/client/r/a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/r/f$a;)V
    .locals 0

    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/roblox/client/r/a;->a(Z)V

    return-void
.end method

.method public g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->b()Lcom/roblox/platform/http/c/e;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;

    iget-wide v2, p0, Lcom/roblox/client/r/a;->e:J

    iget-object v4, p0, Lcom/roblox/client/r/a;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/e;->a(Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;)Le/b;

    move-result-object v0

    invoke-interface {v0}, Le/b;->a()Le/l;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Le/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/ad;

    invoke-virtual {v0}, Lc/ad;->g()Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/roblox/client/e/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "resultType"

    .line 41
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Success"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/r/a;->a(Z)V

    return-void
.end method
