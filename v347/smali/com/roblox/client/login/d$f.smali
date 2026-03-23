.class Lcom/roblox/client/login/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/login/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/d;


# direct methods
.method private constructor <init>(Lcom/roblox/client/login/d;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/roblox/client/login/d$f;->a:Lcom/roblox/client/login/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/login/d;Lcom/roblox/client/login/d$1;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/roblox/client/login/d$f;-><init>(Lcom/roblox/client/login/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/roblox/client/login/d$f;->a:Lcom/roblox/client/login/d;

    invoke-static {v0}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/login/d;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/login/d$f;->a:Lcom/roblox/client/login/d;

    invoke-static {v1}, Lcom/roblox/client/login/d;->a(Lcom/roblox/client/login/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/pushnotification/l;->a(Landroid/content/Context;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/login/d$f;->a:Lcom/roblox/client/login/d;

    const-string v1, "PushNotificationRegistration"

    invoke-virtual {v0, v1}, Lcom/roblox/client/login/d;->a(Ljava/lang/String;)V

    .line 79
    return-void
.end method
