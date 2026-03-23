.class public abstract Lcom/roblox/client/http/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/roblox/client/http/j;",
        ">;",
        "Lcom/roblox/client/http/e;"
    }
.end annotation


# instance fields
.field protected a:Lcom/roblox/client/http/j;

.field protected b:Ljava/lang/String;

.field protected c:[Lcom/roblox/client/http/b$a;

.field protected d:Lcom/roblox/client/http/l;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/roblox/client/http/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/roblox/client/http/a/d",
            "<",
            "Lcom/roblox/client/http/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/roblox/client/http/l;[Lcom/roblox/client/http/b$a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/roblox/client/http/a;->d:Lcom/roblox/client/http/l;

    .line 31
    iput-object p1, p0, Lcom/roblox/client/http/a;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/roblox/client/http/a;->c:[Lcom/roblox/client/http/b$a;

    .line 33
    iput-object v0, p0, Lcom/roblox/client/http/a;->e:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/roblox/client/http/a;->f:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/roblox/client/http/a/c;

    invoke-direct {v0}, Lcom/roblox/client/http/a/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/roblox/client/http/a;->a(Lcom/roblox/client/http/a/d;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/http/j;
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/roblox/client/http/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/http/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/http/a;->c:[Lcom/roblox/client/http/b$a;

    iget-object v3, p0, Lcom/roblox/client/http/a;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    iget-object v1, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    invoke-interface {v0, v1}, Lcom/roblox/client/http/a/d;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    invoke-interface {v0}, Lcom/roblox/client/http/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    invoke-interface {v0}, Lcom/roblox/client/http/a/d;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    invoke-interface {v0}, Lcom/roblox/client/http/a/d;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/http/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/http/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/http/a;->c:[Lcom/roblox/client/http/b$a;

    iget-object v3, p0, Lcom/roblox/client/http/a;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    .line 60
    iget-object v0, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    invoke-interface {v0}, Lcom/roblox/client/http/a/d;->b()V

    .line 63
    invoke-virtual {p0}, Lcom/roblox/client/http/a;->a()V

    .line 66
    invoke-virtual {p0}, Lcom/roblox/client/http/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 71
    :goto_1
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "rbx.httprequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread sleep error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/roblox/client/http/a;->publishProgress([Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public a(Lcom/roblox/client/http/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/http/a/d",
            "<",
            "Lcom/roblox/client/http/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    .line 107
    return-void
.end method

.method protected a(Lcom/roblox/client/http/j;)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/roblox/client/http/a;->d:Lcom/roblox/client/http/l;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/roblox/client/http/a;->d:Lcom/roblox/client/http/l;

    iget-object v1, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    invoke-interface {v0, v1}, Lcom/roblox/client/http/l;->a(Lcom/roblox/client/http/j;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected varargs b([Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/roblox/client/http/a;->d:Lcom/roblox/client/http/l;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/roblox/client/http/a;->d:Lcom/roblox/client/http/l;

    iget-object v1, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    invoke-interface {v0, v1}, Lcom/roblox/client/http/l;->b(Lcom/roblox/client/http/j;)V

    .line 90
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/roblox/client/http/a;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/http/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/a;->a([Ljava/lang/Void;)Lcom/roblox/client/http/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/roblox/client/http/j;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/a;->a(Lcom/roblox/client/http/j;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/a;->b([Ljava/lang/Void;)V

    return-void
.end method
