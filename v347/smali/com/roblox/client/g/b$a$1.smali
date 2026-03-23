.class Lcom/roblox/client/g/b$a$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/g/b$a;->a(Lcom/roblox/client/datastructures/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/datastructures/a;

.field final synthetic b:Lcom/roblox/client/g/b$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/g/b$a;Lcom/roblox/client/datastructures/a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/roblox/client/g/b$a$1;->b:Lcom/roblox/client/g/b$a;

    iput-object p2, p0, Lcom/roblox/client/g/b$a$1;->a:Lcom/roblox/client/datastructures/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v0, p0, Lcom/roblox/client/g/b$a$1;->b:Lcom/roblox/client/g/b$a;

    iget-object v0, v0, Lcom/roblox/client/g/b$a;->a:Lcom/roblox/client/g/b;

    invoke-static {v0}, Lcom/roblox/client/g/b;->a(Lcom/roblox/client/g/b;)Lcom/roblox/client/g/b$c;

    move-result-object v0

    iget-object v0, v0, Lcom/roblox/client/g/b$c;->c:Ljava/net/Socket;

    .line 67
    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/g/b$a$1;->b:Lcom/roblox/client/g/b$a;

    iget-object v0, v0, Lcom/roblox/client/g/b$a;->a:Lcom/roblox/client/g/b;

    invoke-static {v0}, Lcom/roblox/client/g/b;->a(Lcom/roblox/client/g/b;)Lcom/roblox/client/g/b$c;

    move-result-object v0

    iput-object v4, v0, Lcom/roblox/client/g/b$c;->c:Ljava/net/Socket;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/g/b$a$1;->b:Lcom/roblox/client/g/b$a;

    iget-object v0, v0, Lcom/roblox/client/g/b$a;->a:Lcom/roblox/client/g/b;

    invoke-static {v0, v4}, Lcom/roblox/client/g/b;->a(Lcom/roblox/client/g/b;Lcom/roblox/client/g/b$c;)Lcom/roblox/client/g/b$c;

    .line 78
    return-object v4

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "InfluxV2Queue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Close-connection-item] Error closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/roblox/client/g/b$a$1;->a:Lcom/roblox/client/datastructures/a;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/roblox/client/g/b$a$1;->a:Lcom/roblox/client/datastructures/a;

    invoke-interface {v0}, Lcom/roblox/client/datastructures/a;->a()V

    .line 86
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/g/b$a$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/g/b$a$1;->a(Ljava/lang/Void;)V

    return-void
.end method
