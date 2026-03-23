.class public Lcom/roblox/client/locale/db/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
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
.field private a:Lcom/roblox/client/locale/db/room/StringsDB;

.field private b:Lcom/roblox/client/locale/db/room/b;

.field private c:Lcom/roblox/client/locale/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/db/room/StringsDB;Ljava/util/HashMap;Lcom/roblox/client/locale/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/roblox/client/locale/db/room/StringsDB;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/client/locale/f;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/roblox/client/locale/db/c;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    .line 20
    iput-object p3, p0, Lcom/roblox/client/locale/db/c;->c:Lcom/roblox/client/locale/f;

    .line 21
    invoke-direct {p0, p2}, Lcom/roblox/client/locale/db/c;->a(Ljava/util/HashMap;)Lcom/roblox/client/locale/db/room/b;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/locale/db/c;->b:Lcom/roblox/client/locale/db/room/b;

    return-void
.end method

.method private a(Ljava/util/HashMap;)Lcom/roblox/client/locale/db/room/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/roblox/client/locale/db/room/b;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/roblox/client/locale/db/c;->c:Lcom/roblox/client/locale/f;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/roblox/client/locale/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/roblox/client/locale/db/room/b;

    invoke-direct {v1, v0, p1}, Lcom/roblox/client/locale/db/room/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/roblox/client/locale/db/c;->b:Lcom/roblox/client/locale/db/room/b;

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/roblox/client/locale/db/c;->a:Lcom/roblox/client/locale/db/room/StringsDB;

    invoke-virtual {p1}, Lcom/roblox/client/locale/db/room/StringsDB;->k()Lcom/roblox/client/locale/db/room/c;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/locale/db/c;->b:Lcom/roblox/client/locale/db/room/b;

    invoke-interface {p1, v0}, Lcom/roblox/client/locale/db/room/c;->a(Lcom/roblox/client/locale/db/room/b;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 43
    invoke-virtual {p0, v0}, Lcom/roblox/client/locale/db/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/db/c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
