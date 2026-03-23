.class public Lcom/roblox/client/locale/db/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/locale/db/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/roblox/client/locale/db/d;
    .locals 2

    .line 16
    sget-object v0, Lcom/roblox/client/locale/db/d;->a:Lcom/roblox/client/locale/db/d;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/roblox/client/locale/db/d;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/roblox/client/locale/db/d;->a:Lcom/roblox/client/locale/db/d;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/roblox/client/locale/db/d;

    invoke-direct {v1}, Lcom/roblox/client/locale/db/d;-><init>()V

    sput-object v1, Lcom/roblox/client/locale/db/d;->a:Lcom/roblox/client/locale/db/d;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/client/locale/db/d;->a:Lcom/roblox/client/locale/db/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/roblox/client/locale/db/a$a;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/roblox/client/locale/db/a;

    invoke-static {p1}, Lcom/roblox/client/locale/db/room/StringsDB;->a(Landroid/content/Context;)Lcom/roblox/client/locale/db/room/StringsDB;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/roblox/client/locale/db/a;-><init>(Lcom/roblox/client/locale/db/room/StringsDB;Lcom/roblox/client/locale/db/a$a;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/locale/db/d;->a(Lcom/roblox/client/locale/db/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/locale/f;Lcom/roblox/client/locale/db/b$a;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/roblox/client/locale/db/b;

    invoke-static {p1}, Lcom/roblox/client/locale/db/room/StringsDB;->a(Landroid/content/Context;)Lcom/roblox/client/locale/db/room/StringsDB;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/roblox/client/locale/db/b;-><init>(Lcom/roblox/client/locale/db/room/StringsDB;Lcom/roblox/client/locale/f;Lcom/roblox/client/locale/db/b$a;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/locale/db/d;->a(Lcom/roblox/client/locale/db/b;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/HashMap;Lcom/roblox/client/locale/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/client/locale/f;",
            ")V"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/roblox/client/locale/db/c;

    invoke-static {p1}, Lcom/roblox/client/locale/db/room/StringsDB;->a(Landroid/content/Context;)Lcom/roblox/client/locale/db/room/StringsDB;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/roblox/client/locale/db/c;-><init>(Lcom/roblox/client/locale/db/room/StringsDB;Ljava/util/HashMap;Lcom/roblox/client/locale/f;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/locale/db/d;->a(Lcom/roblox/client/locale/db/c;)V

    return-void
.end method

.method a(Lcom/roblox/client/locale/db/a;)V
    .locals 0

    .line 54
    invoke-virtual {p1}, Lcom/roblox/client/locale/db/a;->a()V

    return-void
.end method

.method a(Lcom/roblox/client/locale/db/b;)V
    .locals 0

    .line 45
    invoke-virtual {p1}, Lcom/roblox/client/locale/db/b;->a()V

    return-void
.end method

.method a(Lcom/roblox/client/locale/db/c;)V
    .locals 0

    .line 35
    invoke-virtual {p1}, Lcom/roblox/client/locale/db/c;->a()V

    return-void
.end method
