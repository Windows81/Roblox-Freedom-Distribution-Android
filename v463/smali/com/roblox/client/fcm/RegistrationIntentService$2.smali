.class Lcom/roblox/client/fcm/RegistrationIntentService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/f/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/fcm/RegistrationIntentService;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/fcm/RegistrationIntentService;


# direct methods
.method constructor <init>(Lcom/roblox/client/fcm/RegistrationIntentService;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/roblox/client/fcm/RegistrationIntentService$2;->a:Lcom/roblox/client/fcm/RegistrationIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/roblox/client/l/l;

    const-string v1, "PushNotificationRegistrationFailed"

    invoke-direct {v0, v1}, Lcom/roblox/client/l/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method
