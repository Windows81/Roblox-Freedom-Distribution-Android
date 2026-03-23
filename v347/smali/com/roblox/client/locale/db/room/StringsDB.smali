.class public abstract Lcom/roblox/client/locale/db/room/StringsDB;
.super Landroid/arch/b/b/e;
.source "SourceFile"


# static fields
.field private static c:Lcom/roblox/client/locale/db/room/StringsDB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/arch/b/b/e;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/roblox/client/locale/db/room/StringsDB;
    .locals 4

    .prologue
    .line 21
    const-class v1, Lcom/roblox/client/locale/db/room/StringsDB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/roblox/client/locale/db/room/StringsDB;->c:Lcom/roblox/client/locale/db/room/StringsDB;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/roblox/client/locale/db/room/StringsDB;

    const-string v3, "strings-db"

    invoke-static {v0, v2, v3}, Landroid/arch/b/b/d;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/b/b/e$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/b/b/e$a;->a()Landroid/arch/b/b/e;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/locale/db/room/StringsDB;

    sput-object v0, Lcom/roblox/client/locale/db/room/StringsDB;->c:Lcom/roblox/client/locale/db/room/StringsDB;

    .line 24
    :cond_0
    sget-object v0, Lcom/roblox/client/locale/db/room/StringsDB;->c:Lcom/roblox/client/locale/db/room/StringsDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract j()Lcom/roblox/client/locale/db/room/c;
.end method
