.class public Lcom/roblox/client/app/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/app/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private c:Lcom/roblox/client/app/a$a;

.field private d:Lcom/roblox/engine/jni/memstorage/Connection;

.field private e:Lcom/roblox/engine/jni/memstorage/Connection;

.field private f:Lcom/roblox/engine/jni/memstorage/Connection;


# direct methods
.method public constructor <init>(Lcom/roblox/client/app/a$a;Landroid/os/Handler;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rbx.browserservice"

    .line 21
    iput-object v0, p0, Lcom/roblox/client/app/a;->a:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/roblox/client/app/a;->c:Lcom/roblox/client/app/a$a;

    .line 32
    iput-object p2, p0, Lcom/roblox/client/app/a;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/app/a;)Lcom/roblox/client/app/a$a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/roblox/client/app/a;->c:Lcom/roblox/client/app/a$a;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/app/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/roblox/client/app/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/roblox/client/app/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 41
    new-instance v0, Lcom/roblox/client/app/a$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/app/a$1;-><init>(Lcom/roblox/client/app/a;)V

    const-string v1, "BrowserService.OpenBrowserWindow"

    invoke-static {v1, v0}, Lcom/roblox/engine/jni/memstorage/MemStorage;->bind(Ljava/lang/String;Lcom/roblox/engine/jni/memstorage/Callback;)Lcom/roblox/engine/jni/memstorage/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/app/a;->d:Lcom/roblox/engine/jni/memstorage/Connection;

    .line 56
    new-instance v0, Lcom/roblox/client/app/a$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/app/a$2;-><init>(Lcom/roblox/client/app/a;)V

    const-string v1, "BrowserService.CloseBrowserWindow"

    invoke-static {v1, v0}, Lcom/roblox/engine/jni/memstorage/MemStorage;->bind(Ljava/lang/String;Lcom/roblox/engine/jni/memstorage/Callback;)Lcom/roblox/engine/jni/memstorage/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/app/a;->e:Lcom/roblox/engine/jni/memstorage/Connection;

    .line 69
    new-instance v0, Lcom/roblox/client/app/a$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/app/a$3;-><init>(Lcom/roblox/client/app/a;)V

    const-string v1, "BrowserService.SendCommand"

    invoke-static {v1, v0}, Lcom/roblox/engine/jni/memstorage/MemStorage;->bind(Ljava/lang/String;Lcom/roblox/engine/jni/memstorage/Callback;)Lcom/roblox/engine/jni/memstorage/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/app/a;->f:Lcom/roblox/engine/jni/memstorage/Connection;

    return-void
.end method

.method public b()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/roblox/client/app/a;->d:Lcom/roblox/engine/jni/memstorage/Connection;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/roblox/engine/jni/memstorage/Connection;->disconnect()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/app/a;->e:Lcom/roblox/engine/jni/memstorage/Connection;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/roblox/engine/jni/memstorage/Connection;->disconnect()V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/app/a;->f:Lcom/roblox/engine/jni/memstorage/Connection;

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Lcom/roblox/engine/jni/memstorage/Connection;->disconnect()V

    :cond_2
    return-void
.end method
