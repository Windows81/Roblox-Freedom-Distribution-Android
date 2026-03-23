.class public abstract Lcom/roblox/client/locale/db/room/StringsDB;
.super Landroidx/h/e;
.source "SourceFile"


# static fields
.field private static d:Lcom/roblox/client/locale/db/room/StringsDB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/h/e;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/roblox/client/locale/db/room/StringsDB;
    .locals 2

    const-class v0, Lcom/roblox/client/locale/db/room/StringsDB;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/roblox/client/locale/db/room/StringsDB;->d:Lcom/roblox/client/locale/db/room/StringsDB;

    if-nez v1, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "strings-db"

    invoke-static {p0, v0, v1}, Landroidx/h/d;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/h/e$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/h/e$a;->a()Landroidx/h/e;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/locale/db/room/StringsDB;

    sput-object p0, Lcom/roblox/client/locale/db/room/StringsDB;->d:Lcom/roblox/client/locale/db/room/StringsDB;

    .line 24
    :cond_0
    sget-object p0, Lcom/roblox/client/locale/db/room/StringsDB;->d:Lcom/roblox/client/locale/db/room/StringsDB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract k()Lcom/roblox/client/locale/db/room/c;
.end method
