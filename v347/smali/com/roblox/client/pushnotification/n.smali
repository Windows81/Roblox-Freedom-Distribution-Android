.class public Lcom/roblox/client/pushnotification/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/roblox/client/pushnotification/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/roblox/client/pushnotification/n;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/roblox/client/pushnotification/n;->a:Lcom/roblox/client/pushnotification/n;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/roblox/client/pushnotification/m;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/roblox/client/pushnotification/n;->a:Lcom/roblox/client/pushnotification/n;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/roblox/client/pushnotification/n;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/n;-><init>()V

    sput-object v0, Lcom/roblox/client/pushnotification/n;->a:Lcom/roblox/client/pushnotification/n;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/roblox/client/pushnotification/n;->a:Lcom/roblox/client/pushnotification/n;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/roblox/client/pushnotification/m;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/n;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Lcom/roblox/client/util/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lcom/roblox/client/a/a;

    invoke-direct {v0}, Lcom/roblox/client/a/a;-><init>()V

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/roblox/client/gcm/a;

    invoke-direct {v0}, Lcom/roblox/client/gcm/a;-><init>()V

    goto :goto_0
.end method

.method b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 50
    invoke-static {p1}, Lcom/roblox/client/RobloxSettings;->checkIfUserIsUnder13FromPreferences(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
