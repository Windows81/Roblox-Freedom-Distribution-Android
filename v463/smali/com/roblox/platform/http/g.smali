.class public Lcom/roblox/platform/http/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/platform/http/g$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Object;

.field private static f:Lcom/roblox/platform/http/g;


# instance fields
.field private a:Lcom/roblox/platform/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/roblox/platform/http/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/roblox/platform/http/g;->e:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/roblox/platform/d;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/roblox/platform/http/g;->c:Ljava/util/Set;

    .line 27
    new-instance v0, Lcom/roblox/platform/http/g$1;

    invoke-direct {v0, p0}, Lcom/roblox/platform/http/g$1;-><init>(Lcom/roblox/platform/http/g;)V

    iput-object v0, p0, Lcom/roblox/platform/http/g;->d:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/roblox/platform/http/g;->a:Lcom/roblox/platform/d;

    return-void
.end method

.method public static a()Lcom/roblox/platform/http/g;
    .locals 6

    .line 39
    sget-object v0, Lcom/roblox/platform/http/g;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/roblox/platform/http/g;->f:Lcom/roblox/platform/http/g;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/roblox/platform/http/g;

    new-instance v2, Lcom/roblox/platform/g;

    new-instance v3, Lcom/roblox/platform/http/d;

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-direct {v3, v4, v5}, Lcom/roblox/platform/http/d;-><init>(Ljava/util/concurrent/Executor;I)V

    new-instance v4, Lcom/roblox/platform/g$a;

    invoke-direct {v4}, Lcom/roblox/platform/g$a;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/roblox/platform/g;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, v2}, Lcom/roblox/platform/http/g;-><init>(Lcom/roblox/platform/d;)V

    sput-object v1, Lcom/roblox/platform/http/g;->f:Lcom/roblox/platform/http/g;

    .line 52
    :cond_0
    sget-object v1, Lcom/roblox/platform/http/g;->f:Lcom/roblox/platform/http/g;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/roblox/platform/http/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/roblox/platform/http/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/platform/http/g;)Ljava/util/Set;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/platform/http/g;->c:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/platform/http/g;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/platform/http/g;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/platform/http/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/roblox/platform/http/g;->b:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ".ROBLOSECURITY"

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 108
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3b

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_2

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/roblox/platform/http/g;)Ljava/lang/Runnable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/platform/http/g;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/platform/http/g;)Lcom/roblox/platform/d;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/roblox/platform/http/g;->a:Lcom/roblox/platform/d;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/roblox/platform/http/g$a;)V
    .locals 2

    const-string v0, "rbx.platform"

    .line 88
    invoke-static {v0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v0

    const-string v1, "WebViewCookieHandler.registerCookieObserver()."

    invoke-virtual {v0, v1}, Lcom/roblox/platform/e$b;->b(Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/roblox/platform/http/g;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/roblox/platform/http/g;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/roblox/platform/http/g;->a:Lcom/roblox/platform/d;

    invoke-interface {v0}, Lcom/roblox/platform/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/g$2;

    invoke-direct {v1, p0, p1}, Lcom/roblox/platform/http/g$2;-><init>(Lcom/roblox/platform/http/g;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/roblox/platform/http/g$a;)V
    .locals 2

    const-string v0, "rbx.platform"

    .line 94
    invoke-static {v0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;)Lcom/roblox/platform/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/e$b;->a()Lcom/roblox/platform/e$b;

    move-result-object v0

    const-string v1, "WebViewCookieHandler.unregisterCookieObserver()."

    invoke-virtual {v0, v1}, Lcom/roblox/platform/e$b;->b(Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/roblox/platform/http/g;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
