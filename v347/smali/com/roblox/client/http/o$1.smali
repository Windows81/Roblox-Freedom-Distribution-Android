.class final Lcom/roblox/client/http/o$1;
.super Lcom/roblox/platform/http/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/http/o;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/platform/http/a/a",
        "<",
        "Lb/ac;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/roblox/platform/http/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b;Ld/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<",
            "Lb/ac;",
            ">;",
            "Ld/l",
            "<",
            "Lb/ac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p2}, Ld/l;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 36
    invoke-static {p2}, Lcom/roblox/client/util/l;->a(Ld/l;)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v0, "unreadNotifications"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 39
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/q/d;->c(I)V

    .line 40
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/e/w;

    invoke-direct {v2, v0}, Lcom/roblox/client/e/w;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 41
    invoke-static {v0}, Lcom/roblox/client/realtime/f;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v0, "rbx.stream"

    const-string v1, "Unable to retrieve stream unread count"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
