.class public Lcom/roblox/client/gcm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/client/pushnotification/b/k;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/roblox/client/pushnotification/b/k;->b:Lcom/roblox/client/pushnotification/b/k;

    return-object v0
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/roblox/client/gcm/a;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/roblox/client/gcm/a;->a(Landroid/content/Context;ZZ)V

    .line 31
    return-void
.end method

.method a(Landroid/content/Context;ZZ)V
    .locals 2

    .prologue
    .line 45
    if-eqz p3, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/gcm/RegistrationIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v1, "AuthorizePushNotificationsForUser"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-static {p1, v0}, Lcom/roblox/client/gcm/RegistrationIntentService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 25
    invoke-static {p1}, Lcom/roblox/client/util/h;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "GcmToken"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "GcmPlatform"

    return-object v0
.end method
