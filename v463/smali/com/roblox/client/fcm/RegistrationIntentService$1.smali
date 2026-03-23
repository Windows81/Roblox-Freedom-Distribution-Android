.class Lcom/roblox/client/fcm/RegistrationIntentService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/fcm/RegistrationIntentService;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/f/e<",
        "Lcom/google/firebase/iid/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/roblox/client/fcm/RegistrationIntentService;


# direct methods
.method constructor <init>(Lcom/roblox/client/fcm/RegistrationIntentService;Landroid/content/Intent;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/roblox/client/fcm/RegistrationIntentService$1;->b:Lcom/roblox/client/fcm/RegistrationIntentService;

    iput-object p2, p0, Lcom/roblox/client/fcm/RegistrationIntentService$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/iid/a;)V
    .locals 4

    .line 68
    invoke-interface {p1}, Lcom/google/firebase/iid/a;->a()Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegistrationIntentService.onHandleIntent() Token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.push"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/roblox/client/fcm/RegistrationIntentService$1;->a:Landroid/content/Intent;

    const-string v1, "AuthorizePushNotificationsForUser"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/pushnotification/b/l;

    iget-object v3, p0, Lcom/roblox/client/fcm/RegistrationIntentService$1;->b:Lcom/roblox/client/fcm/RegistrationIntentService;

    invoke-direct {v2, p1, v3, v0}, Lcom/roblox/client/pushnotification/b/l;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Lcom/roblox/client/pushnotification/l;->a(Lcom/roblox/client/pushnotification/b/l;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/google/firebase/iid/a;

    invoke-virtual {p0, p1}, Lcom/roblox/client/fcm/RegistrationIntentService$1;->a(Lcom/google/firebase/iid/a;)V

    return-void
.end method
