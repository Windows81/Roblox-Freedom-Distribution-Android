.class public Lcom/roblox/client/fcm/RegistrationIntentService;
.super Landroidx/core/app/f;
.source "SourceFile"


# static fields
.field private static final j:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "friends"

    const-string v1, "chat"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/fcm/RegistrationIntentService;->j:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/core/app/f;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-static {p0, v0, v1, p1}, Lcom/roblox/client/fcm/RegistrationIntentService;->a(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 2

    .line 44
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/s/c$b;->b:Lcom/roblox/client/s/c$b;

    invoke-virtual {v0, p0, v1}, Lcom/roblox/client/s/c;->a(Landroid/content/Context;Lcom/roblox/client/s/c$b;)V

    .line 47
    invoke-static {p0}, Lcom/roblox/client/http/b;->a(Landroid/content/Context;)V

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->d()Lcom/google/android/gms/f/g;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/roblox/client/fcm/RegistrationIntentService$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/fcm/RegistrationIntentService$1;-><init>(Lcom/roblox/client/fcm/RegistrationIntentService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/f/g;->a(Lcom/google/android/gms/f/e;)Lcom/google/android/gms/f/g;

    .line 76
    new-instance p1, Lcom/roblox/client/fcm/RegistrationIntentService$2;

    invoke-direct {p1, p0}, Lcom/roblox/client/fcm/RegistrationIntentService$2;-><init>(Lcom/roblox/client/fcm/RegistrationIntentService;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/f/g;->a(Lcom/google/android/gms/f/d;)Lcom/google/android/gms/f/g;

    return-void
.end method
