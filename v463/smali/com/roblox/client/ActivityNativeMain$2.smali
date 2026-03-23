.class Lcom/roblox/client/ActivityNativeMain$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ActivityNativeMain;

.field final synthetic b:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .line 1433
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$2;->b:Lcom/roblox/client/ActivityNativeMain;

    iput-object p2, p0, Lcom/roblox/client/ActivityNativeMain$2;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1436
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$2;->b:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v0}, Lcom/roblox/client/ActivityNativeMain;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1442
    :cond_0
    invoke-static {}, Lcom/roblox/client/s/c;->b()V

    .line 1447
    new-instance v0, Lcom/roblox/client/ActivityNativeMain$a;

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain$2;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {v0, v1}, Lcom/roblox/client/ActivityNativeMain$a;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 1448
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/ActivityNativeMain$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
