.class public Lcom/roblox/client/locale/db/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/locale/db/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/locale/db/room/StringsDB;

.field private b:Lcom/roblox/client/locale/db/a$a;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/db/room/StringsDB;Lcom/roblox/client/locale/db/a$a;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/roblox/client/locale/db/a;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    .line 15
    iput-object p2, p0, Lcom/roblox/client/locale/db/a;->b:Lcom/roblox/client/locale/db/a$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/roblox/client/locale/db/a;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    invoke-virtual {p1}, Lcom/roblox/client/locale/db/room/StringsDB;->k()Lcom/roblox/client/locale/db/room/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/locale/db/room/c;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 33
    invoke-virtual {p0, v0}, Lcom/roblox/client/locale/db/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No. of rows deleted from DB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rbx.locale"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p1, p0, Lcom/roblox/client/locale/db/a;->b:Lcom/roblox/client/locale/db/a$a;

    if-eqz p1, :cond_0

    .line 28
    invoke-interface {p1}, Lcom/roblox/client/locale/db/a$a;->a()V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/db/a;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/db/a;->a(Ljava/lang/Integer;)V

    return-void
.end method
