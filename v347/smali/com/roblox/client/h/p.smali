.class public Lcom/roblox/client/h/p;
.super Lcom/roblox/client/h/t;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/roblox/client/h/t;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/roblox/client/h/t$a;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 27
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->incomingItemsApiUrl()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0, v1, v1}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;)Lcom/roblox/client/http/j;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "rbx.friends"

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v0, "unreadMessageCount"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 40
    const-string v2, "friendRequestsCount"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 43
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/roblox/client/q/d;->a(I)V

    .line 44
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/roblox/client/q/d;->b(I)V

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/e/n;

    invoke-direct {v3, v0, v1}, Lcom/roblox/client/e/n;-><init>(II)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
