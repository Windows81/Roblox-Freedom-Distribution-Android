.class public Lcom/roblox/client/h/k;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/k$a;
    }
.end annotation


# instance fields
.field private d:Lcom/roblox/client/h/k$a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/h/k$a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/roblox/client/h/k;->d:Lcom/roblox/client/h/k$a;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/h/k;)Lcom/roblox/client/h/k$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/h/k;->d:Lcom/roblox/client/h/k$a;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/roblox/client/h/k;->d:Lcom/roblox/client/h/k$a;

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/roblox/client/h/k;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/k$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/h/k$1;-><init>(Lcom/roblox/client/h/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 1

    .prologue
    .line 33
    const-string v0, "Could not complete request for account notifications"

    invoke-virtual {p0, v0}, Lcom/roblox/client/h/k;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->a()Lcom/roblox/platform/http/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/http/c/a;->a()Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/roblox/client/util/l;->a(Ld/l;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {v1}, Lcom/roblox/client/q/a;->b(Lorg/json/JSONObject;)Lcom/roblox/client/q/a;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/q/d;->a(Lcom/roblox/client/q/a;)Z

    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/roblox/client/e/a;

    invoke-direct {v0}, Lcom/roblox/client/e/a;-><init>()V

    .line 51
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0}, Lcom/roblox/client/h/k;->o()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v0, "Unable to parse account notifications"

    invoke-virtual {p0, v0}, Lcom/roblox/client/h/k;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
