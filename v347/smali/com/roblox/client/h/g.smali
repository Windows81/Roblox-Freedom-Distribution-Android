.class public Lcom/roblox/client/h/g;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/g$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lcom/roblox/client/h/g$a;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/roblox/client/h/g$a;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/roblox/client/h/g;->e:J

    .line 34
    iput-object p3, p0, Lcom/roblox/client/h/g;->d:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/roblox/client/h/g;->f:Lcom/roblox/client/h/g$a;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/h/g;)Lcom/roblox/client/h/g$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/roblox/client/h/g;->f:Lcom/roblox/client/h/g$a;

    return-object v0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/roblox/client/h/g;->f:Lcom/roblox/client/h/g$a;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/roblox/client/h/g;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/g$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/h/g$1;-><init>(Lcom/roblox/client/h/g;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/h/g;->a(Z)V

    .line 76
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
    const/4 v1, 0x1

    .line 41
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v0

    new-instance v2, Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;

    iget-wide v4, p0, Lcom/roblox/client/h/g;->e:J

    iget-object v3, p0, Lcom/roblox/client/h/g;->d:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3}, Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/roblox/platform/http/c/b;->a(Lcom/roblox/platform/http/postbody/chat/MarkAsReadPostBody;)Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ac;

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;

    move-result-object v0

    .line 44
    sget-object v2, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v0, "resultType"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    const/4 v0, 0x0

    .line 50
    const-string v3, "Success"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/roblox/client/h/g;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/roblox/client/chat/a/a;->a(J)Lcom/roblox/client/chat/a/c;

    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/roblox/client/h/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/roblox/client/chat/a/c;->b(Ljava/lang/String;)Lcom/roblox/client/chat/a/h;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/a/h;->a(Z)V

    .line 57
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v2

    iget-wide v4, p0, Lcom/roblox/client/h/g;->e:J

    invoke-virtual {v2, v4, v5}, Lcom/roblox/client/chat/a/a;->d(J)Lcom/roblox/client/chat/a/h;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/roblox/client/chat/a/h;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/roblox/client/chat/a/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v2, v1}, Lcom/roblox/client/chat/a/h;->a(Z)V

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/e/o;

    iget-wide v4, p0, Lcom/roblox/client/h/g;->e:J

    invoke-direct {v2, v4, v5}, Lcom/roblox/client/e/o;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/e/x;

    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/chat/a/a;->d()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/roblox/client/e/x;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_0
    move v0, v1

    .line 69
    :cond_1
    invoke-direct {p0, v0}, Lcom/roblox/client/h/g;->a(Z)V

    .line 70
    return-void
.end method
