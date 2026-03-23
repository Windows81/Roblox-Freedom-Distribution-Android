.class public Lcom/roblox/client/s/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/s/e$b;,
        Lcom/roblox/client/s/e$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/s/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/roblox/client/s/e;->b:Landroid/os/Handler;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/s/e;->c:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/s/e$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/roblox/client/s/e;-><init>()V

    return-void
.end method

.method public static a()Lcom/roblox/client/s/e;
    .locals 1

    .line 37
    sget-object v0, Lcom/roblox/client/s/e$a;->a:Lcom/roblox/client/s/e;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/s/e;)Ljava/util/ArrayList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/client/s/e;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b(ILandroid/os/Bundle;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/roblox/client/s/e;->b:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/s/e$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/roblox/client/s/e$3;-><init>(Lcom/roblox/client/s/e;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/roblox/client/s/e;->a:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/s/e;->b(ILandroid/os/Bundle;)V

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "NotificationManager was not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string p1, "NotificationManager"

    const-string v0, "init:"

    .line 63
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/roblox/client/s/e;->a:Z

    return-void
.end method

.method public a(Lcom/roblox/client/s/e$b;)V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/roblox/client/s/e;->a:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/roblox/client/s/e;->b:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/s/e$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/s/e$1;-><init>(Lcom/roblox/client/s/e;Lcom/roblox/client/s/e$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "NotificationManager was not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/roblox/client/s/e$b;)V
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/roblox/client/s/e;->a:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/roblox/client/s/e;->b:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/s/e$2;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/s/e$2;-><init>(Lcom/roblox/client/s/e;Lcom/roblox/client/s/e$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "NotificationManager was not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
