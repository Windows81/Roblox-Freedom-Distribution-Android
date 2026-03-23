.class public Lcom/roblox/client/locale/db/room/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/db/room/c;


# instance fields
.field private final a:Landroid/arch/b/b/e;

.field private final b:Landroid/arch/b/b/b;

.field private final c:Landroid/arch/b/b/i;


# direct methods
.method public constructor <init>(Landroid/arch/b/b/e;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroid/arch/b/b/e;

    .line 22
    new-instance v0, Lcom/roblox/client/locale/db/room/d$1;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/locale/db/room/d$1;-><init>(Lcom/roblox/client/locale/db/room/d;Landroid/arch/b/b/e;)V

    iput-object v0, p0, Lcom/roblox/client/locale/db/room/d;->b:Landroid/arch/b/b/b;

    .line 44
    new-instance v0, Lcom/roblox/client/locale/db/room/d$2;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/locale/db/room/d$2;-><init>(Lcom/roblox/client/locale/db/room/d;Landroid/arch/b/b/e;)V

    iput-object v0, p0, Lcom/roblox/client/locale/db/room/d;->c:Landroid/arch/b/b/i;

    .line 51
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->c:Landroid/arch/b/b/i;

    invoke-virtual {v0}, Landroid/arch/b/b/i;->c()Landroid/arch/b/a/f;

    move-result-object v1

    .line 67
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroid/arch/b/b/e;

    invoke-virtual {v0}, Landroid/arch/b/b/e;->f()V

    .line 69
    :try_start_0
    invoke-interface {v1}, Landroid/arch/b/a/f;->a()I

    move-result v0

    .line 70
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroid/arch/b/b/e;

    invoke-virtual {v2}, Landroid/arch/b/b/e;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroid/arch/b/b/e;

    invoke-virtual {v2}, Landroid/arch/b/b/e;->g()V

    .line 74
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/d;->c:Landroid/arch/b/b/i;

    invoke-virtual {v2, v1}, Landroid/arch/b/b/i;->a(Landroid/arch/b/a/f;)V

    .line 71
    return v0

    .line 73
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroid/arch/b/b/e;

    invoke-virtual {v2}, Landroid/arch/b/b/e;->g()V

    .line 74
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/d;->c:Landroid/arch/b/b/i;

    invoke-virtual {v2, v1}, Landroid/arch/b/b/i;->a(Landroid/arch/b/a/f;)V

    .line 75
    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/roblox/client/locale/db/room/b;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 80
    const-string v0, "SELECT * FROM Strings WHERE robloxLocaleValue = ?"

    .line 81
    const-string v0, "SELECT * FROM Strings WHERE robloxLocaleValue = ?"

    invoke-static {v0, v2}, Landroid/arch/b/b/h;->a(Ljava/lang/String;I)Landroid/arch/b/b/h;

    move-result-object v1

    .line 83
    if-nez p1, :cond_0

    .line 84
    invoke-virtual {v1, v2}, Landroid/arch/b/b/h;->a(I)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroid/arch/b/b/e;

    invoke-virtual {v0, v1}, Landroid/arch/b/b/e;->a(Landroid/arch/b/a/e;)Landroid/database/Cursor;

    move-result-object v2

    .line 90
    :try_start_0
    const-string v0, "robloxLocaleValue"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 91
    const-string v3, "stringsKeyValueMap"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/roblox/client/locale/db/room/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 100
    new-instance v0, Lcom/roblox/client/locale/db/room/b;

    invoke-direct {v0, v4, v3}, Lcom/roblox/client/locale/db/room/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 107
    invoke-virtual {v1}, Landroid/arch/b/b/h;->b()V

    .line 104
    return-object v0

    .line 86
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroid/arch/b/b/h;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 106
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 107
    invoke-virtual {v1}, Landroid/arch/b/b/h;->b()V

    .line 108
    throw v0
.end method

.method public a(Lcom/roblox/client/locale/db/room/b;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroid/arch/b/b/e;

    invoke-virtual {v0}, Landroid/arch/b/b/e;->f()V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->b:Landroid/arch/b/b/b;

    invoke-virtual {v0, p1}, Landroid/arch/b/b/b;->a(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroid/arch/b/b/e;

    invoke-virtual {v0}, Landroid/arch/b/b/e;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroid/arch/b/b/e;

    invoke-virtual {v0}, Landroid/arch/b/b/e;->g()V

    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroid/arch/b/b/e;

    invoke-virtual {v1}, Landroid/arch/b/b/e;->g()V

    .line 61
    throw v0
.end method
