.class public Lcom/roblox/client/gcm/RegistrationIntentService;
.super Landroid/support/v4/app/u;
.source "SourceFile"


# static fields
.field private static final j:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "friends"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "chat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/roblox/client/gcm/RegistrationIntentService;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/u;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-static {p0, v0, v1, p1}, Lcom/roblox/client/gcm/RegistrationIntentService;->a(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/i/c$b;->b:Lcom/roblox/client/i/c$b;

    invoke-virtual {v0, p0, v1}, Lcom/roblox/client/i/c;->a(Landroid/content/Context;Lcom/roblox/client/i/c$b;)V

    .line 46
    invoke-static {p0}, Lcom/roblox/client/http/b;->a(Landroid/content/Context;)V

    .line 51
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/iid/a;->c(Landroid/content/Context;)Lcom/google/android/gms/iid/a;

    move-result-object v0

    .line 62
    const v1, 0x7f0e01f5

    invoke-virtual {p0, v1}, Lcom/roblox/client/gcm/RegistrationIntentService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCM"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/iid/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "rbx.push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegistrationIntentService.onHandleIntent() Token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v1, "AuthorizePushNotificationsForUser"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 67
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/pushnotification/b/l;

    invoke-direct {v3, v0, p0, v1}, Lcom/roblox/client/pushnotification/b/l;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Lcom/roblox/client/pushnotification/l;->a(Lcom/roblox/client/pushnotification/b/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e/t;

    const-string v2, "PushNotificationRegistrationFailed"

    invoke-direct {v1, v2}, Lcom/roblox/client/e/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method
