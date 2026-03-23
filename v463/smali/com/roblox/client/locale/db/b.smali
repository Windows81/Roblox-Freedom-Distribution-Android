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
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/roblox/client/locale/db/room/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/locale/db/room/StringsDB;

.field private b:Lcom/roblox/client/locale/f;

.field private c:Lcom/roblox/client/locale/db/b$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/db/room/StringsDB;Lcom/roblox/client/locale/f;Lcom/roblox/client/locale/db/b$a;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/roblox/client/locale/db/b;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    .line 21
    iput-object p2, p0, Lcom/roblox/client/locale/db/b;->b:Lcom/roblox/client/locale/f;

    .line 22
    iput-object p3, p0, Lcom/roblox/client/locale/db/b;->c:Lcom/roblox/client/locale/db/b$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/roblox/client/locale/db/room/b;
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/roblox/client/locale/db/b;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/roblox/client/locale/db/b;->b:Lcom/roblox/client/locale/f;

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/roblox/client/locale/f;->a()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/roblox/client/locale/db/b;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    invoke-virtual {v0}, Lcom/roblox/client/locale/db/room/StringsDB;->k()Lcom/roblox/client/locale/db/room/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/locale/db/room/c;->a(Ljava/lang/String;)Lcom/roblox/client/locale/db/room/b;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 53
    invoke-virtual {p0, v0}, Lcom/roblox/client/locale/db/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected a(Lcom/roblox/client/locale/db/room/b;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/roblox/client/locale/db/b;->c:Lcom/roblox/client/locale/db/b$a;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/roblox/client/locale/db/room/b;->b()Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/roblox/client/locale/db/b$a;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/locale/db/b;->c:Lcom/roblox/client/locale/db/b$a;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 43
    invoke-interface {p1, v0}, Lcom/roblox/client/locale/db/b$a;->a(Ljava/util/HashMap;)V

    const-string p1, "rbx.locale"

    const-string v0, "Strings retrieved from DB is null"

    .line 44
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/db/b;->a([Ljava/lang/Void;)Lcom/roblox/client/locale/db/room/b;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/roblox/client/locale/db/room/b;

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/db/b;->a(Lcom/roblox/client/locale/db/room/b;)V

    return-void
.end method
