.class Lcom/roblox/client/hybrid/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/hybrid/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a/d;


# direct methods
.method private constructor <init>(Lcom/roblox/client/hybrid/a/d;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/d$a;->a:Lcom/roblox/client/hybrid/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/hybrid/a/d;Lcom/roblox/client/hybrid/a/d$1;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a/d$a;-><init>(Lcom/roblox/client/hybrid/a/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/roblox/a/a;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    const-string v1, "placeId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v4, v4, v4, v1}, Lcom/roblox/client/game/a;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/roblox/client/game/a;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    const-string v2, "game_init_params"

    invoke-static {v0}, Lcom/roblox/client/game/a;->a(Lcom/roblox/client/game/a;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    const-string v2, "com.roblox.android.notificationmanager.POST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v2, "notificationId"

    const/16 v3, 0x6a

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const-string v2, "userParams"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/roblox/client/hybrid/a/d$a;->a:Lcom/roblox/client/hybrid/a/d;

    invoke-static {v1}, Lcom/roblox/client/hybrid/a/d;->a(Lcom/roblox/client/hybrid/a/d;)Landroid/support/v4/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/f;->a(Landroid/content/Intent;)Z

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v4}, Lcom/roblox/a/a;->a(ZLorg/json/JSONObject;)V

    .line 76
    return-void
.end method
