.class Lcom/roblox/client/o/b$a$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/o/b$a;->a(Lcom/roblox/client/datastructures/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/datastructures/a;

.field final synthetic b:Lcom/roblox/client/o/b$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/o/b$a;Lcom/roblox/client/datastructures/a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/roblox/client/o/b$a$1;->b:Lcom/roblox/client/o/b$a;

    iput-object p2, p0, Lcom/roblox/client/o/b$a$1;->a:Lcom/roblox/client/datastructures/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 66
    iget-object p1, p0, Lcom/roblox/client/o/b$a$1;->b:Lcom/roblox/client/o/b$a;

    iget-object p1, p1, Lcom/roblox/client/o/b$a;->a:Lcom/roblox/client/o/b;

    invoke-static {p1}, Lcom/roblox/client/o/b;->a(Lcom/roblox/client/o/b;)Lcom/roblox/client/o/b$c;

    move-result-object p1

    iget-object p1, p1, Lcom/roblox/client/o/b$c;->c:Ljava/net/Socket;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Close-connection-item] Error closing socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InfluxV2Queue"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/o/b$a$1;->b:Lcom/roblox/client/o/b$a;

    iget-object p1, p1, Lcom/roblox/client/o/b$a;->a:Lcom/roblox/client/o/b;

    invoke-static {p1}, Lcom/roblox/client/o/b;->a(Lcom/roblox/client/o/b;)Lcom/roblox/client/o/b$c;

    move-result-object p1

    iput-object v0, p1, Lcom/roblox/client/o/b$c;->c:Ljava/net/Socket;

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/o/b$a$1;->b:Lcom/roblox/client/o/b$a;

    iget-object p1, p1, Lcom/roblox/client/o/b$a;->a:Lcom/roblox/client/o/b;

    invoke-static {p1, v0}, Lcom/roblox/client/o/b;->a(Lcom/roblox/client/o/b;Lcom/roblox/client/o/b$c;)Lcom/roblox/client/o/b$c;

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/roblox/client/o/b$a$1;->a:Lcom/roblox/client/datastructures/a;

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Lcom/roblox/client/datastructures/a;->a()V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/o/b$a$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/o/b$a$1;->a(Ljava/lang/Void;)V

    return-void
.end method
