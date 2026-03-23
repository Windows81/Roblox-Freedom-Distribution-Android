.class public Lcom/roblox/client/analytics/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/roblox/client/b;->bN()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/roblox/client/analytics/i;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Lcom/roblox/client/analytics/i;->a:Z

    .line 38
    invoke-static {}, Lcom/roblox/engine/jni/NativeReportingInterface;->initStopwatch()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-static {}, Lcom/roblox/client/analytics/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/roblox/engine/jni/NativeReportingInterface;->addStopwatchCheckpoint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 1

    .line 49
    invoke-static {}, Lcom/roblox/client/analytics/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 50
    sput-boolean v0, Lcom/roblox/client/analytics/i;->b:Z

    .line 51
    new-instance v0, Lcom/roblox/client/analytics/i$1;

    invoke-direct {v0}, Lcom/roblox/client/analytics/i$1;-><init>()V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static c()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/roblox/client/analytics/i;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/roblox/client/analytics/i;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
