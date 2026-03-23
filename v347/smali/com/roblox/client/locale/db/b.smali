.class public Lcom/roblox/client/locale/db/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/locale/db/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/roblox/client/locale/db/room/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/locale/db/room/StringsDB;

.field private b:Lcom/roblox/client/locale/c;

.field private c:Lcom/roblox/client/locale/db/b$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/db/room/StringsDB;Lcom/roblox/client/locale/c;Lcom/roblox/client/locale/db/b$a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/roblox/client/locale/db/b;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    .line 21
    iput-object p2, p0, Lcom/roblox/client/locale/db/b;->b:Lcom/roblox/client/locale/c;

    .line 22
    iput-object p3, p0, Lcom/roblox/client/locale/db/b;->c:Lcom/roblox/client/locale/db/b$a;

    .line 23
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/locale/db/room/b;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/roblox/client/locale/db/b;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/locale/db/b;->b:Lcom/roblox/client/locale/c;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/roblox/client/locale/db/b;->b:Lcom/roblox/client/locale/c;

    invoke-virtual {v0}, Lcom/roblox/client/locale/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/roblox/client/locale/db/b;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    invoke-virtual {v1}, Lcom/roblox/client/locale/db/room/StringsDB;->j()Lcom/roblox/client/locale/db/room/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/client/locale/db/room/c;->a(Ljava/lang/String;)Lcom/roblox/client/locale/db/room/b;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/roblox/client/locale/db/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method protected a(Lcom/roblox/client/locale/db/room/b;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 39
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/roblox/client/locale/db/b;->c:Lcom/roblox/client/locale/db/b$a;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/roblox/client/locale/db/b;->c:Lcom/roblox/client/locale/db/b$a;

    invoke-virtual {p1}, Lcom/roblox/client/locale/db/room/b;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/locale/db/b$a;->a(Ljava/util/HashMap;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/locale/db/b;->c:Lcom/roblox/client/locale/db/b$a;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/roblox/client/locale/db/b;->c:Lcom/roblox/client/locale/db/b$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/roblox/client/locale/db/b$a;->a(Ljava/util/HashMap;)V

    .line 44
    const-string v0, "rbx.locale"

    const-string v1, "Strings retrieved from DB is null"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/db/b;->a([Ljava/lang/Void;)Lcom/roblox/client/locale/db/room/b;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/roblox/client/locale/db/room/b;

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/db/b;->a(Lcom/roblox/client/locale/db/room/b;)V

    return-void
.end method
