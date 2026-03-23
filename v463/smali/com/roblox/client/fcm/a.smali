.class public Lcom/roblox/client/fcm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/client/pushnotification/b/k;
    .locals 1

    .line 20
    sget-object v0, Lcom/roblox/client/pushnotification/b/k;->b:Lcom/roblox/client/pushnotification/b/k;

    return-object v0
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    .line 30
    invoke-virtual {p0, p1}, Lcom/roblox/client/fcm/a;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/roblox/client/fcm/a;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method a(Landroid/content/Context;ZZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 47
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/roblox/client/fcm/RegistrationIntentService;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "AuthorizePushNotificationsForUser"

    .line 48
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-static {p1, p3}, Lcom/roblox/client/fcm/RegistrationIntentService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/roblox/client/ae/l;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "GcmToken"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "GcmPlatform"

    return-object v0
.end method
