.class public Lcom/roblox/client/h/h;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/h$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/roblox/client/h/h$a;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/roblox/client/h/h$a;)V
    .locals 7

    .prologue
    .line 33
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/h/h;-><init>(JLjava/lang/String;Lcom/roblox/client/h/h$a;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/roblox/client/h/h$a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/roblox/client/h/h;->n()Lcom/b/a/a/o;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/o;->a(Ljava/lang/String;)Lcom/b/a/a/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/h/t;-><init>(Lcom/b/a/a/o;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/h/h;->g:Ljava/lang/String;

    .line 38
    iput-wide p1, p0, Lcom/roblox/client/h/h;->e:J

    .line 39
    iput-object p3, p0, Lcom/roblox/client/h/h;->d:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/roblox/client/h/h;->f:Lcom/roblox/client/h/h$a;

    .line 41
    iput-object p5, p0, Lcom/roblox/client/h/h;->g:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/h/h;)Lcom/roblox/client/h/h$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/roblox/client/h/h;->f:Lcom/roblox/client/h/h$a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/roblox/client/h/h;->f:Lcom/roblox/client/h/h$a;

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/roblox/client/h/h;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/h$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/h/h$1;-><init>(Lcom/roblox/client/h/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 80
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 82
    :goto_0
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/roblox/client/h/h;->e:J

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/chat/a/a;->a(J)Lcom/roblox/client/chat/a/c;

    move-result-object v2

    .line 83
    if-nez p2, :cond_0

    .line 84
    const-string p1, "Failure"

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/h/h;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/roblox/client/h/h;->g:Ljava/lang/String;

    .line 89
    :goto_1
    invoke-virtual {v2, v1, v0, p1}, Lcom/roblox/client/chat/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/h/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 80
    :cond_1
    const-string v0, "Send Failed"

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/h/h;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/roblox/client/h/h;->f:Lcom/roblox/client/h/h$a;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/roblox/client/h/h;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/h$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/h/h$2;-><init>(Lcom/roblox/client/h/h;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0, v0}, Lcom/roblox/client/h/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
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
    .line 51
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;

    iget-wide v2, p0, Lcom/roblox/client/h/h;->e:J

    iget-object v4, p0, Lcom/roblox/client/h/h;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/roblox/platform/http/c/b;->a(Lcom/roblox/platform/http/postbody/chat/SendMessagePostBody;)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ac;

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPMJ.onRun() payload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v0, "resultType"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v2, "Success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const-string v2, "statusMessage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/h/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "messageId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string v0, "content"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    const-string v0, "filteredForReceivers"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 69
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v4, p0, Lcom/roblox/client/h/h;->e:J

    invoke-virtual {v0, v4, v5}, Lcom/roblox/client/chat/a/a;->a(J)Lcom/roblox/client/chat/a/c;

    move-result-object v4

    .line 71
    iget-object v0, p0, Lcom/roblox/client/h/h;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/h/h;->g:Ljava/lang/String;

    .line 72
    :goto_1
    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/roblox/client/chat/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    invoke-direct {p0, v2}, Lcom/roblox/client/h/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/h/h;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
