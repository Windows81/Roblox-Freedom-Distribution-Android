.class public final Lcom/roblox/client/locale/db/room/StringsDB_Impl;
.super Lcom/roblox/client/locale/db/room/StringsDB;
.source "SourceFile"


# instance fields
.field private volatile d:Lcom/roblox/client/locale/db/room/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/roblox/client/locale/db/room/StringsDB;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/locale/db/room/StringsDB_Impl;Landroidx/i/a/b;)Landroidx/i/a/b;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->a:Landroidx/i/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/client/locale/db/room/StringsDB_Impl;Landroidx/i/a/b;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->a(Landroidx/i/a/b;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected b(Landroidx/h/a;)Landroidx/i/a/c;
    .locals 4

    .line 28
    new-instance v0, Landroidx/h/g;

    new-instance v1, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;-><init>(Lcom/roblox/client/locale/db/room/StringsDB_Impl;I)V

    const-string v2, "a2b3e2b8e2997b1b02bd3a27a21f086e"

    const-string v3, "0e949bd525c8fb7a34e79f90f594cde6"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/h/g;-><init>(Landroidx/h/a;Landroidx/h/g$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p1, Landroidx/h/a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroidx/i/a/c$b;->a(Landroid/content/Context;)Landroidx/i/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/h/a;->c:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v2}, Landroidx/i/a/c$b$a;->a(Ljava/lang/String;)Landroidx/i/a/c$b$a;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Landroidx/i/a/c$b$a;->a(Landroidx/i/a/c$a;)Landroidx/i/a/c$b$a;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroidx/i/a/c$b$a;->a()Landroidx/i/a/c$b;

    move-result-object v0

    .line 81
    iget-object p1, p1, Landroidx/h/a;->a:Landroidx/i/a/c$c;

    invoke-interface {p1, v0}, Landroidx/i/a/c$c;->a(Landroidx/i/a/c$b;)Landroidx/i/a/c;

    move-result-object p1

    return-object p1
.end method

.method protected c()Landroidx/h/c;
    .locals 2

    .line 87
    new-instance v0, Landroidx/h/c;

    const-string v1, "Strings"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/h/c;-><init>(Landroidx/h/e;[Ljava/lang/String;)V

    return-object v0
.end method

.method public k()Lcom/roblox/client/locale/db/room/c;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->d:Lcom/roblox/client/locale/db/room/c;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->d:Lcom/roblox/client/locale/db/room/c;

    return-object v0

    .line 112
    :cond_0
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->d:Lcom/roblox/client/locale/db/room/c;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lcom/roblox/client/locale/db/room/d;

    invoke-direct {v0, p0}, Lcom/roblox/client/locale/db/room/d;-><init>(Landroidx/h/e;)V

    iput-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->d:Lcom/roblox/client/locale/db/room/c;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->d:Lcom/roblox/client/locale/db/room/c;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
