.class public final Lcom/roblox/client/locale/db/room/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/db/room/c;


# instance fields
.field private final a:Landroidx/h/e;

.field private final b:Landroidx/h/b;

.field private final c:Landroidx/h/i;


# direct methods
.method public constructor <init>(Landroidx/h/e;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroidx/h/e;

    .line 24
    new-instance v0, Lcom/roblox/client/locale/db/room/d$1;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/locale/db/room/d$1;-><init>(Lcom/roblox/client/locale/db/room/d;Landroidx/h/e;)V

    iput-object v0, p0, Lcom/roblox/client/locale/db/room/d;->b:Landroidx/h/b;

    .line 46
    new-instance v0, Lcom/roblox/client/locale/db/room/d$2;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/locale/db/room/d$2;-><init>(Lcom/roblox/client/locale/db/room/d;Landroidx/h/e;)V

    iput-object v0, p0, Lcom/roblox/client/locale/db/room/d;->c:Landroidx/h/i;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->c:Landroidx/h/i;

    invoke-virtual {v0}, Landroidx/h/i;->c()Landroidx/i/a/f;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroidx/h/e;

    invoke-virtual {v1}, Landroidx/h/e;->f()V

    .line 71
    :try_start_0
    invoke-interface {v0}, Landroidx/i/a/f;->a()I

    move-result v1

    .line 72
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroidx/h/e;

    invoke-virtual {v2}, Landroidx/h/e;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroidx/h/e;

    invoke-virtual {v2}, Landroidx/h/e;->g()V

    .line 76
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/d;->c:Landroidx/h/i;

    invoke-virtual {v2, v0}, Landroidx/h/i;->a(Landroidx/i/a/f;)V

    return v1

    :catchall_0
    move-exception v1

    .line 75
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroidx/h/e;

    invoke-virtual {v2}, Landroidx/h/e;->g()V

    .line 76
    iget-object v2, p0, Lcom/roblox/client/locale/db/room/d;->c:Landroidx/h/i;

    invoke-virtual {v2, v0}, Landroidx/h/i;->a(Landroidx/i/a/f;)V

    .line 77
    throw v1
.end method

.method public a(Ljava/lang/String;)Lcom/roblox/client/locale/db/room/b;
    .locals 4

    const-string v0, "SELECT * FROM Strings WHERE robloxLocaleValue = ?"

    const/4 v1, 0x1

    .line 83
    invoke-static {v0, v1}, Landroidx/h/h;->a(Ljava/lang/String;I)Landroidx/h/h;

    move-result-object v0

    if-nez p1, :cond_0

    .line 86
    invoke-virtual {v0, v1}, Landroidx/h/h;->a(I)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/h/h;->a(ILjava/lang/String;)V

    .line 90
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroidx/h/e;

    invoke-virtual {p1, v0}, Landroidx/h/e;->a(Landroidx/i/a/e;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "robloxLocaleValue"

    .line 92
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "stringsKeyValueMap"

    .line 93
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 95
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v2}, Lcom/roblox/client/locale/db/room/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 102
    new-instance v3, Lcom/roblox/client/locale/db/room/b;

    invoke-direct {v3, v1, v2}, Lcom/roblox/client/locale/db/room/b;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 108
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 109
    invoke-virtual {v0}, Landroidx/h/h;->a()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 108
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 109
    invoke-virtual {v0}, Landroidx/h/h;->a()V

    .line 110
    throw v1
.end method

.method public a(Lcom/roblox/client/locale/db/room/b;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroidx/h/e;

    invoke-virtual {v0}, Landroidx/h/e;->f()V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->b:Landroidx/h/b;

    invoke-virtual {v0, p1}, Landroidx/h/b;->a(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroidx/h/e;

    invoke-virtual {p1}, Landroidx/h/e;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object p1, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroidx/h/e;

    invoke-virtual {p1}, Landroidx/h/e;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/roblox/client/locale/db/room/d;->a:Landroidx/h/e;

    invoke-virtual {v0}, Landroidx/h/e;->g()V

    .line 63
    throw p1
.end method
