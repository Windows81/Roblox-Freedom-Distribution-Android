.class final Lcom/roblox/client/http/n$1;
.super Lcom/roblox/platform/http/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/http/n;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/roblox/platform/http/a/a<",
        "Lc/ad;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/roblox/platform/http/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/b;Le/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b<",
            "Lc/ad;",
            ">;",
            "Le/l<",
            "Lc/ad;",
            ">;)V"
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-virtual {p2}, Le/l;->a()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 36
    invoke-static {p2}, Lcom/roblox/client/ae/p;->a(Le/l;)Ljava/lang/String;

    move-result-object p1

    .line 37
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "unreadNotifications"

    .line 38
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 39
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/roblox/client/ad/c;->a(I)V

    .line 40
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    new-instance v0, Lcom/roblox/client/l/n;

    invoke-direct {v0, p1}, Lcom/roblox/client/l/n;-><init>(I)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 41
    invoke-static {p1}, Lcom/roblox/client/realtime/d;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "rbx.stream"

    const-string p2, "Unable to retrieve stream unread count"

    .line 44
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
