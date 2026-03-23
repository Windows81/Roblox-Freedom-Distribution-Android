.class public Lcom/roblox/client/o/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/roblox/client/o/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:Ljava/lang/String;

.field d:Lcom/roblox/client/o/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/roblox/client/o/a;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/o/c;->d:Lcom/roblox/client/o/a;

    .line 25
    iput-object p4, p0, Lcom/roblox/client/o/c;->d:Lcom/roblox/client/o/a;

    .line 26
    iput-object p1, p0, Lcom/roblox/client/o/c;->a:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/roblox/client/o/c;->c:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/roblox/client/o/c;->b:I

    .line 29
    iget-object v0, p0, Lcom/roblox/client/o/c;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/o/c;->c:Ljava/lang/String;

    .line 32
    :cond_0
    return-void
.end method

.method private static a(Lcom/roblox/client/g/b$c;Ljava/lang/String;)Lcom/roblox/client/o/d;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    new-instance v1, Lcom/roblox/client/o/d;

    iget-object v0, p0, Lcom/roblox/client/g/b$c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/roblox/client/g/b$c;->b:I

    invoke-direct {v1, v0, v2}, Lcom/roblox/client/o/d;-><init>(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {v1, p1}, Lcom/roblox/client/o/d;->a(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/roblox/client/g/b$c;->c:Ljava/net/Socket;

    .line 87
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 89
    invoke-virtual {v2}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 92
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/roblox/client/o/d;->a(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object v1

    .line 94
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/roblox/client/o/d;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v2, "RbxTcpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending influx data over TCP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v1, v5}, Lcom/roblox/client/o/d;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/o/d;
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Lcom/roblox/client/g/b;->b()Lcom/roblox/client/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/g/b;->c()Lcom/roblox/client/g/b$c;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/roblox/client/g/b$c;->c:Ljava/net/Socket;

    if-nez v0, :cond_2

    .line 39
    :cond_0
    new-instance v0, Lcom/roblox/client/o/d;

    iget-object v1, p0, Lcom/roblox/client/o/c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/roblox/client/o/c;->b:I

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/o/d;-><init>(Ljava/lang/String;I)V

    .line 40
    iget-object v1, p0, Lcom/roblox/client/o/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/o/d;->a(Ljava/lang/String;)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/o/d;->a(Z)V

    .line 57
    :cond_1
    :goto_0
    return-object v0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/o/c;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/roblox/client/o/c;->a(Lcom/roblox/client/g/b$c;Ljava/lang/String;)Lcom/roblox/client/o/d;

    move-result-object v0

    .line 47
    iget v2, v1, Lcom/roblox/client/g/b$c;->d:I

    if-nez v2, :cond_1

    .line 49
    :try_start_0
    const-string v2, "RbxTcpRequest"

    const-string v3, "doInBackground: timeToLive is 0. Close socket immediately..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, v1, Lcom/roblox/client/g/b$c;->c:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    const-string v2, "RbxTcpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing the socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/o/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method

.method protected a(Lcom/roblox/client/o/d;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance p1, Lcom/roblox/client/o/d;

    iget-object v0, p0, Lcom/roblox/client/o/c;->a:Ljava/lang/String;

    iget v1, p0, Lcom/roblox/client/o/c;->b:I

    invoke-direct {p1, v0, v1}, Lcom/roblox/client/o/d;-><init>(Ljava/lang/String;I)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/roblox/client/o/d;->a(Z)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/o/c;->d:Lcom/roblox/client/o/a;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/roblox/client/o/c;->d:Lcom/roblox/client/o/a;

    invoke-interface {v0, p1}, Lcom/roblox/client/o/a;->a(Lcom/roblox/client/o/d;)V

    .line 70
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/o/c;->a([Ljava/lang/Void;)Lcom/roblox/client/o/d;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/roblox/client/o/d;

    invoke-virtual {p0, p1}, Lcom/roblox/client/o/c;->a(Lcom/roblox/client/o/d;)V

    return-void
.end method
