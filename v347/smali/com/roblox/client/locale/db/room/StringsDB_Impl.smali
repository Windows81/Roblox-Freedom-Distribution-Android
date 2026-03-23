.class public Lcom/roblox/client/locale/db/room/StringsDB_Impl;
.super Lcom/roblox/client/locale/db/room/StringsDB;
.source "SourceFile"


# instance fields
.field private volatile c:Lcom/roblox/client/locale/db/room/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/roblox/client/locale/db/room/StringsDB;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/locale/db/room/StringsDB_Impl;Landroid/arch/b/a/b;)Landroid/arch/b/a/b;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->a:Landroid/arch/b/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/locale/db/room/StringsDB_Impl;Landroid/arch/b/a/b;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->a(Landroid/arch/b/a/b;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/roblox/client/locale/db/room/StringsDB_Impl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected b(Landroid/arch/b/b/a;)Landroid/arch/b/a/c;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/arch/b/b/g;

    new-instance v1, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/locale/db/room/StringsDB_Impl$1;-><init>(Lcom/roblox/client/locale/db/room/StringsDB_Impl;I)V

    const-string v2, "0e949bd525c8fb7a34e79f90f594cde6"

    invoke-direct {v0, p1, v1, v2}, Landroid/arch/b/b/g;-><init>(Landroid/arch/b/b/a;Landroid/arch/b/b/g$a;Ljava/lang/String;)V

    .line 69
    iget-object v1, p1, Landroid/arch/b/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/arch/b/a/c$b;->a(Landroid/content/Context;)Landroid/arch/b/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Landroid/arch/b/b/a;->c:Ljava/lang/String;

    .line 70
    invoke-virtual {v1, v2}, Landroid/arch/b/a/c$b$a;->a(Ljava/lang/String;)Landroid/arch/b/a/c$b$a;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Landroid/arch/b/a/c$b$a;->a(Landroid/arch/b/a/c$a;)Landroid/arch/b/a/c$b$a;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/arch/b/a/c$b$a;->a()Landroid/arch/b/a/c$b;

    move-result-object v0

    .line 73
    iget-object v1, p1, Landroid/arch/b/b/a;->a:Landroid/arch/b/a/c$c;

    invoke-interface {v1, v0}, Landroid/arch/b/a/c$c;->a(Landroid/arch/b/a/c$b;)Landroid/arch/b/a/c;

    move-result-object v0

    .line 74
    return-object v0
.end method

.method protected c()Landroid/arch/b/b/c;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Landroid/arch/b/b/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Strings"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/arch/b/b/c;-><init>(Landroid/arch/b/b/e;[Ljava/lang/String;)V

    return-object v0
.end method

.method public j()Lcom/roblox/client/locale/db/room/c;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Lcom/roblox/client/locale/db/room/c;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Lcom/roblox/client/locale/db/room/c;

    .line 91
    :goto_0
    return-object v0

    .line 87
    :cond_0
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Lcom/roblox/client/locale/db/room/c;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/roblox/client/locale/db/room/d;

    invoke-direct {v0, p0}, Lcom/roblox/client/locale/db/room/d;-><init>(Landroid/arch/b/b/e;)V

    iput-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Lcom/roblox/client/locale/db/room/c;

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/StringsDB_Impl;->c:Lcom/roblox/client/locale/db/room/c;

    monitor-exit p0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
