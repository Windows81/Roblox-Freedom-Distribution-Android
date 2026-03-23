.class public Lcom/roblox/client/h/c;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/c$a;
    }
.end annotation


# instance fields
.field private d:Lcom/roblox/client/h/c$a;

.field private e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {}, Lcom/roblox/client/h/t;->n()Lcom/b/a/a/o;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/roblox/client/h/c;-><init>(Lcom/b/a/a/o;Ljava/lang/Integer;Lcom/roblox/client/h/c$a;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/b/a/a/o;Ljava/lang/Integer;Lcom/roblox/client/h/c$a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/roblox/client/h/t;-><init>(Lcom/b/a/a/o;)V

    .line 36
    iput-object p3, p0, Lcom/roblox/client/h/c;->d:Lcom/roblox/client/h/c$a;

    .line 37
    iput-object p2, p0, Lcom/roblox/client/h/c;->e:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/h/c;)Lcom/roblox/client/h/c$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/h/c;->d:Lcom/roblox/client/h/c$a;

    return-object v0
.end method

.method private a(Lcom/roblox/client/e/h;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 68
    .line 71
    iget v1, p1, Lcom/roblox/client/e/h;->d:I

    sget v2, Lcom/roblox/client/e/h;->b:I

    if-ne v1, v2, :cond_3

    .line 72
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/chat/a/a;->a(Z)Z

    move-result v0

    .line 79
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/h/c;->d:Lcom/roblox/client/h/c$a;

    if-eqz v1, :cond_1

    .line 80
    invoke-static {}, Lcom/roblox/client/h/c;->m()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/h/c$1;

    invoke-direct {v2, p0, p1}, Lcom/roblox/client/h/c$1;-><init>(Lcom/roblox/client/h/c;Lcom/roblox/client/e/h;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_1
    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 92
    :cond_2
    return-void

    .line 74
    :cond_3
    iget v1, p1, Lcom/roblox/client/e/h;->d:I

    sget v2, Lcom/roblox/client/e/h;->c:I

    if-ne v1, v2, :cond_0

    .line 75
    invoke-static {}, Lcom/roblox/client/chat/a/a;->a()Lcom/roblox/client/chat/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/a/a;->a(Z)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/roblox/client/e/h;

    invoke-direct {v0}, Lcom/roblox/client/e/h;-><init>()V

    invoke-direct {p0, v0}, Lcom/roblox/client/h/c;->a(Lcom/roblox/client/e/h;)V

    .line 97
    return-void
.end method

.method public g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->b()Lcom/roblox/platform/http/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/http/c/b;->b()Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ac;

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v2, Lcom/roblox/client/chat/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRun() payload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v2, Lcom/roblox/client/e/h;

    invoke-direct {v2}, Lcom/roblox/client/e/h;-><init>()V

    .line 52
    invoke-virtual {v1}, Ld/l;->a()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    .line 53
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v0, "chatEnabled"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "chatEnabled"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/roblox/client/e/h;->b:I

    :goto_0
    iput v0, v2, Lcom/roblox/client/e/h;->d:I

    .line 63
    :goto_1
    invoke-direct {p0, v2}, Lcom/roblox/client/h/c;->a(Lcom/roblox/client/e/h;)V

    .line 64
    return-void

    .line 55
    :cond_0
    sget v0, Lcom/roblox/client/e/h;->c:I

    goto :goto_0

    .line 57
    :cond_1
    sget v0, Lcom/roblox/client/e/h;->a:I

    iput v0, v2, Lcom/roblox/client/e/h;->d:I

    goto :goto_1

    .line 60
    :cond_2
    sget v0, Lcom/roblox/client/e/h;->a:I

    iput v0, v2, Lcom/roblox/client/e/h;->d:I

    goto :goto_1
.end method
