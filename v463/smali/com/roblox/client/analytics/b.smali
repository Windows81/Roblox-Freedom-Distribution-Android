.class public Lcom/roblox/client/analytics/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/analytics/b$b;,
        Lcom/roblox/client/analytics/b$c;,
        Lcom/roblox/client/analytics/b$a;
    }
.end annotation


# static fields
.field private static b:Lcom/roblox/client/analytics/b;


# instance fields
.field private a:Lcom/roblox/client/analytics/b$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/roblox/client/analytics/b$a;->a:Lcom/roblox/client/analytics/b$a;

    iput-object v0, p0, Lcom/roblox/client/analytics/b;->a:Lcom/roblox/client/analytics/b$a;

    const-string v0, "CrashReporter"

    const-string v1, "[Constructor]:"

    .line 53
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/analytics/b;Lcom/roblox/client/analytics/b$a;)Lcom/roblox/client/analytics/b$a;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/roblox/client/analytics/b;->a:Lcom/roblox/client/analytics/b$a;

    return-object p1
.end method

.method public static a()Lcom/roblox/client/analytics/b;
    .locals 2

    .line 42
    sget-object v0, Lcom/roblox/client/analytics/b;->b:Lcom/roblox/client/analytics/b;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/roblox/client/analytics/b;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/roblox/client/analytics/b;->b:Lcom/roblox/client/analytics/b;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/roblox/client/analytics/b;

    invoke-direct {v1}, Lcom/roblox/client/analytics/b;-><init>()V

    sput-object v1, Lcom/roblox/client/analytics/b;->b:Lcom/roblox/client/analytics/b;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/roblox/client/analytics/b;->b:Lcom/roblox/client/analytics/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "CrashReporter"

    const-string v1, "reportCrashIfAny:"

    .line 62
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/roblox/client/analytics/b;->a:Lcom/roblox/client/analytics/b$a;

    sget-object v2, Lcom/roblox/client/analytics/b$a;->b:Lcom/roblox/client/analytics/b$a;

    if-ne v1, v2, :cond_0

    const-string p1, "reportCrashIfAny: A task is in progress. Do nothing."

    .line 65
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/roblox/client/analytics/b$a;->b:Lcom/roblox/client/analytics/b$a;

    iput-object v0, p0, Lcom/roblox/client/analytics/b;->a:Lcom/roblox/client/analytics/b$a;

    .line 70
    new-instance v0, Lcom/roblox/client/analytics/b$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/analytics/b$1;-><init>(Lcom/roblox/client/analytics/b;)V

    .line 77
    new-instance v1, Lcom/roblox/client/analytics/b$b;

    invoke-direct {v1, p1, v0}, Lcom/roblox/client/analytics/b$b;-><init>(Landroid/content/Context;Lcom/roblox/client/analytics/b$c;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Lcom/roblox/client/analytics/b$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
