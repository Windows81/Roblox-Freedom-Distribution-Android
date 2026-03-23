.class Lcom/roblox/client/o/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/datastructures/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/o/b;


# direct methods
.method private constructor <init>(Lcom/roblox/client/o/b;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/roblox/client/o/b$a;->a:Lcom/roblox/client/o/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/o/b;Lcom/roblox/client/o/b$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/roblox/client/o/b$a;-><init>(Lcom/roblox/client/o/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/datastructures/a;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/roblox/client/o/b$a;->a:Lcom/roblox/client/o/b;

    invoke-static {v0}, Lcom/roblox/client/o/b;->a(Lcom/roblox/client/o/b;)Lcom/roblox/client/o/b$c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InfluxV2Queue"

    const-string v1, "fireAction: Close the existing socket..."

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lcom/roblox/client/o/b$a$1;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/o/b$a$1;-><init>(Lcom/roblox/client/o/b$a;Lcom/roblox/client/datastructures/a;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 87
    invoke-virtual {v0, p1, v1}, Lcom/roblox/client/o/b$a$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
