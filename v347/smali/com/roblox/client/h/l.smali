.class public Lcom/roblox/client/h/l;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/h/l$a;
    }
.end annotation


# instance fields
.field private d:Lcom/roblox/client/h/l$a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/h/l$a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/roblox/client/h/l;->d:Lcom/roblox/client/h/l$a;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/h/l;)Lcom/roblox/client/h/l$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/h/l;->d:Lcom/roblox/client/h/l$a;

    return-object v0
.end method

.method private o()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->c()Lcom/roblox/platform/http/c/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/http/c/g;->a()Ld/b;

    move-result-object v0

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/roblox/client/util/l;->a(Ld/l;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 67
    new-instance v3, Lcom/roblox/client/k/e;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/roblox/client/k/e;-><init>(Lorg/json/JSONObject;)V

    .line 68
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_2
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/roblox/client/q/d;->a(Ljava/util/ArrayList;)V

    .line 74
    invoke-direct {p0}, Lcom/roblox/client/h/l;->p()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v0, "Unable to parse settings groups"

    invoke-virtual {p0, v0}, Lcom/roblox/client/h/l;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/roblox/client/h/l;->d:Lcom/roblox/client/h/l$a;

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/roblox/client/h/l;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/h/l$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/h/l$1;-><init>(Lcom/roblox/client/h/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 1

    .prologue
    .line 33
    const-string v0, "Could not complete request for settings groups"

    invoke-virtual {p0, v0}, Lcom/roblox/client/h/l;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/roblox/client/h/l;->o()V

    .line 39
    return-void
.end method
