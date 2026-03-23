.class public Lcom/roblox/client/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/b/a$b;,
        Lcom/roblox/client/b/a$c;,
        Lcom/roblox/client/b/a$a;
    }
.end annotation


# static fields
.field private static b:Lcom/roblox/client/b/a;


# instance fields
.field private a:Lcom/roblox/client/b/a$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/roblox/client/b/a$a;->a:Lcom/roblox/client/b/a$a;

    iput-object v0, p0, Lcom/roblox/client/b/a;->a:Lcom/roblox/client/b/a$a;

    .line 49
    const-string v0, "CrashReporter"

    const-string v1, "[Constructor]:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/b/a;Lcom/roblox/client/b/a$a;)Lcom/roblox/client/b/a$a;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/roblox/client/b/a;->a:Lcom/roblox/client/b/a$a;

    return-object p1
.end method

.method public static a()Lcom/roblox/client/b/a;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/roblox/client/b/a;->b:Lcom/roblox/client/b/a;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/roblox/client/b/a;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/roblox/client/b/a;->b:Lcom/roblox/client/b/a;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/roblox/client/b/a;

    invoke-direct {v0}, Lcom/roblox/client/b/a;-><init>()V

    sput-object v0, Lcom/roblox/client/b/a;->b:Lcom/roblox/client/b/a;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/roblox/client/b/a;->b:Lcom/roblox/client/b/a;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    const-string v0, "CrashReporter"

    const-string v1, "reportCrashIfAny:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/roblox/client/b/a;->a:Lcom/roblox/client/b/a$a;

    sget-object v1, Lcom/roblox/client/b/a$a;->b:Lcom/roblox/client/b/a$a;

    if-ne v0, v1, :cond_0

    .line 61
    const-string v0, "CrashReporter"

    const-string v1, "reportCrashIfAny: A task is in progress. Do nothing."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/roblox/client/b/a$a;->b:Lcom/roblox/client/b/a$a;

    iput-object v0, p0, Lcom/roblox/client/b/a;->a:Lcom/roblox/client/b/a$a;

    .line 66
    new-instance v0, Lcom/roblox/client/b/a$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/b/a$1;-><init>(Lcom/roblox/client/b/a;)V

    .line 73
    new-instance v1, Lcom/roblox/client/b/a$b;

    invoke-direct {v1, p1, v0}, Lcom/roblox/client/b/a$b;-><init>(Landroid/content/Context;Lcom/roblox/client/b/a$c;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/roblox/client/b/a$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
