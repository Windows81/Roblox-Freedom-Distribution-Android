.class public Lcom/roblox/client/aa/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/roblox/client/aa/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:Ljava/lang/String;

.field d:Lcom/roblox/client/aa/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/roblox/client/aa/a;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/roblox/client/aa/c;->d:Lcom/roblox/client/aa/a;

    .line 25
    iput-object p4, p0, Lcom/roblox/client/aa/c;->d:Lcom/roblox/client/aa/a;

    .line 26
    iput-object p1, p0, Lcom/roblox/client/aa/c;->a:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/roblox/client/aa/c;->c:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/roblox/client/aa/c;->b:I

    if-nez p3, :cond_0

    const-string p1, ""

    .line 30
    iput-object p1, p0, Lcom/roblox/client/aa/c;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a(Lcom/roblox/client/o/b$c;Ljava/lang/String;)Lcom/roblox/client/aa/d;
    .locals 4

    .line 81
    new-instance v0, Lcom/roblox/client/aa/d;

    iget-object v1, p0, Lcom/roblox/client/o/b$c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/roblox/client/o/b$c;->b:I

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/aa/d;-><init>(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {v0, p1}, Lcom/roblox/client/aa/d;->a(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/roblox/client/o/b$c;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    .line 87
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 89
    invoke-virtual {v2}, Ljava/io/PrintWriter;->checkError()Z

    move-result p0

    if-nez p0, :cond_0

    .line 90
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    const-string p0, ""

    .line 92
    invoke-virtual {v0, p0}, Lcom/roblox/client/aa/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0, v1}, Lcom/roblox/client/aa/d;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending influx data over TCP = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RbxTcpRequest"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v0, v1}, Lcom/roblox/client/aa/d;->a(Z)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/aa/d;
    .locals 4

    const-string p1, "RbxTcpRequest"

    .line 36
    invoke-static {}, Lcom/roblox/client/o/b;->b()Lcom/roblox/client/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/o/b;->c()Lcom/roblox/client/o/b$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v1, v0, Lcom/roblox/client/o/b$c;->c:Ljava/net/Socket;

    if-nez v1, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/aa/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/aa/c;->a(Lcom/roblox/client/o/b$c;Ljava/lang/String;)Lcom/roblox/client/aa/d;

    move-result-object v1

    .line 47
    iget v2, v0, Lcom/roblox/client/o/b$c;->d:I

    if-nez v2, :cond_1

    :try_start_0
    const-string v2, "doInBackground: timeToLive is 0. Close socket immediately..."

    .line 49
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, v0, Lcom/roblox/client/o/b$c;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing the socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v1

    .line 39
    :cond_2
    :goto_1
    new-instance p1, Lcom/roblox/client/aa/d;

    iget-object v0, p0, Lcom/roblox/client/aa/c;->a:Ljava/lang/String;

    iget v1, p0, Lcom/roblox/client/aa/c;->b:I

    invoke-direct {p1, v0, v1}, Lcom/roblox/client/aa/d;-><init>(Ljava/lang/String;I)V

    .line 40
    iget-object v0, p0, Lcom/roblox/client/aa/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/roblox/client/aa/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Lcom/roblox/client/aa/d;->a(Z)V

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 74
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/aa/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected a(Lcom/roblox/client/aa/d;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 64
    new-instance p1, Lcom/roblox/client/aa/d;

    iget-object v0, p0, Lcom/roblox/client/aa/c;->a:Ljava/lang/String;

    iget v1, p0, Lcom/roblox/client/aa/c;->b:I

    invoke-direct {p1, v0, v1}, Lcom/roblox/client/aa/d;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Lcom/roblox/client/aa/d;->a(Z)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/aa/c;->d:Lcom/roblox/client/aa/a;

    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v0, p1}, Lcom/roblox/client/aa/a;->a(Lcom/roblox/client/aa/d;)V

    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/aa/c;->a([Ljava/lang/Void;)Lcom/roblox/client/aa/d;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/roblox/client/aa/d;

    invoke-virtual {p0, p1}, Lcom/roblox/client/aa/c;->a(Lcom/roblox/client/aa/d;)V

    return-void
.end method
