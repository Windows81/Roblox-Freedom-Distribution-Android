.class public Lcom/roblox/client/RobloxService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/RobloxService$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Messenger;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "robloxservice"

    sput-object v0, Lcom/roblox/client/RobloxService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/roblox/client/RobloxService$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/RobloxService$a;-><init>(Lcom/roblox/client/RobloxService;Lcom/roblox/client/RobloxService$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/roblox/client/RobloxService;->b:Landroid/os/Messenger;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/RobloxService;->c:Ljava/util/ArrayList;

    .line 29
    iput-boolean v3, p0, Lcom/roblox/client/RobloxService;->d:Z

    .line 30
    iput-boolean v3, p0, Lcom/roblox/client/RobloxService;->e:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/roblox/client/RobloxService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/RobloxService;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/roblox/client/RobloxService;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/roblox/client/RobloxService;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/roblox/client/RobloxService;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/RobloxService;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/roblox/client/RobloxService;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/roblox/client/RobloxService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/roblox/client/RobloxService;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 45
    const-string v0, "roblox_launcher_debugger_attached"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/RobloxService;->d:Z

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/RobloxService;->b:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    sget-object v0, Lcom/roblox/client/RobloxService;->a:Ljava/lang/String;

    const-string v1, "RobloxService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/roblox/engine/f;

    invoke-static {}, Lcom/roblox/client/b/c;->a()Lcom/roblox/engine/f$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/engine/f;-><init>(Lcom/roblox/engine/f$b;)V

    invoke-virtual {v0, p0}, Lcom/roblox/engine/f;->a(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/roblox/client/RobloxService;->a:Ljava/lang/String;

    const-string v1, "RobloxService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 68
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    return v0
.end method
