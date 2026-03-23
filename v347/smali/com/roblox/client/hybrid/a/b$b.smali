.class Lcom/roblox/client/hybrid/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/hybrid/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/hybrid/a/b;


# direct methods
.method private constructor <init>(Lcom/roblox/client/hybrid/a/b;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/roblox/client/hybrid/a/b$b;->a:Lcom/roblox/client/hybrid/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/hybrid/a/b;Lcom/roblox/client/hybrid/a/b$1;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a/b$b;-><init>(Lcom/roblox/client/hybrid/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/a/a;)V
    .locals 4

    .prologue
    .line 83
    const-string v0, "SAM"

    const-string v1, "Inside GetTopBarHeight Java"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    const-string v1, "com.roblox.android.notificationmanager.POST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "notificationId"

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/roblox/client/hybrid/a/b$b;->a:Lcom/roblox/client/hybrid/a/b;

    invoke-static {v1}, Lcom/roblox/client/hybrid/a/b;->a(Lcom/roblox/client/hybrid/a/b;)Landroid/support/v4/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/f;->a(Landroid/content/Intent;)Z

    .line 89
    iget-object v0, p0, Lcom/roblox/client/hybrid/a/b$b;->a:Lcom/roblox/client/hybrid/a/b;

    invoke-static {v0}, Lcom/roblox/client/hybrid/a/b;->a(Lcom/roblox/client/hybrid/a/b;)Landroid/support/v4/a/f;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/hybrid/a/b$b$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/hybrid/a/b$b$1;-><init>(Lcom/roblox/client/hybrid/a/b$b;Lcom/roblox/a/a;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.roblox.hybrid.broadcastreceiver.RESPONSE.getTopBarHeight"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/f;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 106
    return-void
.end method
