.class public abstract Lcom/roblox/client/http/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
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
            "Lcom/roblox/client/http/a/d<",
            "Lcom/roblox/client/http/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/roblox/client/http/l;[Lcom/roblox/client/http/b$a;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/roblox/client/http/a;->d:Lcom/roblox/client/http/l;

    .line 31
    iput-object p1, p0, Lcom/roblox/client/http/a;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/roblox/client/http/a;->c:[Lcom/roblox/client/http/b$a;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/roblox/client/http/a;->e:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/roblox/client/http/a;->f:Ljava/lang/String;

    .line 35
    new-instance p1, Lcom/roblox/client/http/a/c;

    invoke-direct {p1}, Lcom/roblox/client/http/a/c;-><init>()V

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/a;->a(Lcom/roblox/client/http/a/d;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/http/j;
    .locals 3

    .line 42
    iget-object p1, p0, Lcom/roblox/client/http/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/roblox/client/http/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/http/a;->c:[Lcom/roblox/client/http/b$a;

    iget-object v2, p0, Lcom/roblox/client/http/a;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    invoke-interface {p1, v0}, Lcom/roblox/client/http/a/d;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    invoke-interface {p1}, Lcom/roblox/client/http/a/d;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    iget-object p1, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    invoke-interface {p1}, Lcom/roblox/client/http/a/d;->a()I

    move-result p1

    if-lez p1, :cond_1

    .line 50
    :try_start_0
    iget-object p1, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    invoke-interface {p1}, Lcom/roblox/client/http/a/d;->a()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread sleep error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.httprequest"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/http/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/roblox/client/http/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/http/a;->c:[Lcom/roblox/client/http/b$a;

    iget-object v2, p0, Lcom/roblox/client/http/a;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/roblox/client/http/b;->b(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;)Lcom/roblox/client/http/j;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    .line 60
    iget-object p1, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    invoke-interface {p1}, Lcom/roblox/client/http/a/d;->b()V

    .line 63
    invoke-virtual {p0}, Lcom/roblox/client/http/a;->a()V

    .line 66
    invoke-virtual {p0}, Lcom/roblox/client/http/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 76
    invoke-virtual {p0, v0}, Lcom/roblox/client/http/a;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/roblox/client/http/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/http/a/d<",
            "Lcom/roblox/client/http/j;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/roblox/client/http/a;->g:Lcom/roblox/client/http/a/d;

    return-void
.end method

.method protected a(Lcom/roblox/client/http/j;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lcom/roblox/client/http/a;->d:Lcom/roblox/client/http/l;

    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    invoke-interface {p1, v0}, Lcom/roblox/client/http/l;->a(Lcom/roblox/client/http/j;)V

    :cond_0
    return-void
.end method

.method protected varargs b([Ljava/lang/Void;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lcom/roblox/client/http/a;->d:Lcom/roblox/client/http/l;

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/roblox/client/http/a;->a:Lcom/roblox/client/http/j;

    invoke-interface {p1, v0}, Lcom/roblox/client/http/l;->b(Lcom/roblox/client/http/j;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/roblox/client/http/a;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .line 102
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/http/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/a;->a([Ljava/lang/Void;)Lcom/roblox/client/http/j;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/roblox/client/http/j;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/a;->a(Lcom/roblox/client/http/j;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/a;->b([Ljava/lang/Void;)V

    return-void
.end method
