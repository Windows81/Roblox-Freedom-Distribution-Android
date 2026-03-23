.class public Lcom/roblox/client/http/n;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/roblox/client/http/j;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/roblox/client/http/m;

.field protected b:I

.field protected c:I

.field private d:Lcom/roblox/client/http/j;

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/http/n;-><init>(Ljava/lang/String;Lcom/roblox/client/http/m;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/roblox/client/http/m;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/roblox/client/http/n;-><init>(Ljava/lang/String;Lcom/roblox/client/http/m;II)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/roblox/client/http/m;II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/roblox/client/http/n;->d:Lcom/roblox/client/http/j;

    .line 8
    iput-object v0, p0, Lcom/roblox/client/http/n;->e:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/roblox/client/http/n;->a:Lcom/roblox/client/http/m;

    .line 11
    iput v1, p0, Lcom/roblox/client/http/n;->b:I

    .line 12
    iput v1, p0, Lcom/roblox/client/http/n;->c:I

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/roblox/client/http/n;->f:J

    .line 26
    iput-object p2, p0, Lcom/roblox/client/http/n;->a:Lcom/roblox/client/http/m;

    .line 27
    iput-object p1, p0, Lcom/roblox/client/http/n;->e:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/roblox/client/http/n;->b:I

    .line 29
    iput p4, p0, Lcom/roblox/client/http/n;->c:I

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/http/j;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/roblox/client/http/n;->e:Ljava/lang/String;

    iget v4, p0, Lcom/roblox/client/http/n;->b:I

    iget v5, p0, Lcom/roblox/client/http/n;->c:I

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;II)Lcom/roblox/client/http/j;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/http/n;->d:Lcom/roblox/client/http/j;

    .line 46
    invoke-virtual {p0}, Lcom/roblox/client/http/n;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-object v1

    .line 50
    :cond_0
    iget-wide v0, p0, Lcom/roblox/client/http/n;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 52
    :try_start_0
    iget-wide v0, p0, Lcom/roblox/client/http/n;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/http/n;->d:Lcom/roblox/client/http/j;

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/http/n;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    return-void
.end method

.method protected a(Lcom/roblox/client/http/j;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/roblox/client/http/n;->a:Lcom/roblox/client/http/m;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/roblox/client/http/n;->a:Lcom/roblox/client/http/m;

    iget-object v1, p0, Lcom/roblox/client/http/n;->d:Lcom/roblox/client/http/j;

    invoke-interface {v0, v1}, Lcom/roblox/client/http/m;->a(Lcom/roblox/client/http/j;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/n;->a([Ljava/lang/Void;)Lcom/roblox/client/http/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5
    check-cast p1, Lcom/roblox/client/http/j;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/n;->a(Lcom/roblox/client/http/j;)V

    return-void
.end method
