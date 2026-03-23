.class public Lcom/roblox/client/http/q;
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
.field protected a:Lcom/roblox/client/http/m;

.field protected b:I

.field protected c:I

.field private d:Lcom/roblox/client/http/j;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Lcom/roblox/client/http/b$a;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/m;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/http/q;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/m;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/m;Ljava/lang/String;)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 23
    invoke-direct/range {v0 .. v7}, Lcom/roblox/client/http/q;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/m;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/m;Ljava/lang/String;II)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/roblox/client/http/q;->b:I

    .line 15
    iput v0, p0, Lcom/roblox/client/http/q;->c:I

    .line 28
    iput-object p4, p0, Lcom/roblox/client/http/q;->a:Lcom/roblox/client/http/m;

    .line 29
    iput-object p1, p0, Lcom/roblox/client/http/q;->e:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/roblox/client/http/q;->f:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/roblox/client/http/q;->g:[Lcom/roblox/client/http/b$a;

    .line 32
    iput-object p5, p0, Lcom/roblox/client/http/q;->h:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, ""

    .line 34
    iput-object p1, p0, Lcom/roblox/client/http/q;->f:Ljava/lang/String;

    .line 36
    :cond_0
    iput p6, p0, Lcom/roblox/client/http/q;->b:I

    .line 37
    iput p7, p0, Lcom/roblox/client/http/q;->c:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/http/j;
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/roblox/client/http/q;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/http/q;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/http/q;->g:[Lcom/roblox/client/http/b$a;

    iget-object v3, p0, Lcom/roblox/client/http/q;->h:Ljava/lang/String;

    iget v4, p0, Lcom/roblox/client/http/q;->b:I

    iget v5, p0, Lcom/roblox/client/http/q;->c:I

    invoke-static/range {v0 .. v5}, Lcom/roblox/client/http/b;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Ljava/lang/String;II)Lcom/roblox/client/http/j;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/http/q;->d:Lcom/roblox/client/http/j;

    return-object p1
.end method

.method protected a(Lcom/roblox/client/http/j;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/roblox/client/http/q;->a:Lcom/roblox/client/http/m;

    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/roblox/client/http/q;->d:Lcom/roblox/client/http/j;

    invoke-interface {p1, v0}, Lcom/roblox/client/http/m;->a(Lcom/roblox/client/http/j;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 56
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/http/q;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/q;->a([Ljava/lang/Void;)Lcom/roblox/client/http/j;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p1, Lcom/roblox/client/http/j;

    invoke-virtual {p0, p1}, Lcom/roblox/client/http/q;->a(Lcom/roblox/client/http/j;)V

    return-void
.end method
