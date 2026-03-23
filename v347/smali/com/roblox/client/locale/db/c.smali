.class public Lcom/roblox/client/locale/db/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
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
.field private a:Lcom/roblox/client/locale/db/room/StringsDB;

.field private b:Lcom/roblox/client/locale/db/room/b;

.field private c:Lcom/roblox/client/locale/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/db/room/StringsDB;Ljava/util/HashMap;Lcom/roblox/client/locale/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/locale/db/room/StringsDB;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/client/locale/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/roblox/client/locale/db/c;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    .line 20
    iput-object p3, p0, Lcom/roblox/client/locale/db/c;->c:Lcom/roblox/client/locale/c;

    .line 21
    invoke-direct {p0, p2}, Lcom/roblox/client/locale/db/c;->a(Ljava/util/HashMap;)Lcom/roblox/client/locale/db/room/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/locale/db/c;->b:Lcom/roblox/client/locale/db/room/b;

    .line 22
    return-void
.end method

.method private a(Ljava/util/HashMap;)Lcom/roblox/client/locale/db/room/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/roblox/client/locale/db/room/b;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/roblox/client/locale/db/c;->c:Lcom/roblox/client/locale/c;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/roblox/client/locale/db/c;->c:Lcom/roblox/client/locale/c;

    invoke-virtual {v0}, Lcom/roblox/client/locale/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/roblox/client/locale/db/room/b;

    invoke-direct {v0, v1, p1}, Lcom/roblox/client/locale/db/room/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/roblox/client/locale/db/c;->b:Lcom/roblox/client/locale/db/room/b;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/roblox/client/locale/db/c;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    invoke-virtual {v0}, Lcom/roblox/client/locale/db/room/StringsDB;->j()Lcom/roblox/client/locale/db/room/c;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/locale/db/c;->b:Lcom/roblox/client/locale/db/room/b;

    invoke-interface {v0, v1}, Lcom/roblox/client/locale/db/room/c;->a(Lcom/roblox/client/locale/db/room/b;)V

    .line 39
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/roblox/client/locale/db/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/db/c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
