.class public La/a/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static transient a:Ljava/lang/String;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private d:La/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, La/a/g/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/g/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(La/a/a;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, La/a/g/b;->c:Ljava/util/concurrent/CountDownLatch;

    .line 26
    sget-object v0, La/a/g/b;->a:Ljava/lang/String;

    const-string v1, "BacktraceExceptionHandler initialization"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p1, p0, La/a/g/b;->d:La/a/a;

    .line 28
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, La/a/g/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 29
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)La/a/d/c;
    .locals 1

    .line 70
    new-instance v0, La/a/g/b$1;

    invoke-direct {v0, p0, p1, p2}, La/a/g/b$1;-><init>(La/a/g/b;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, La/a/g/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(La/a/g/b;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 16
    iget-object p0, p0, La/a/g/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public static a(La/a/a;)V
    .locals 1

    .line 43
    new-instance v0, La/a/g/b;

    invoke-direct {v0, p0}, La/a/g/b;-><init>(La/a/a;)V

    return-void
.end method

.method static synthetic b(La/a/g/b;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 16
    iget-object p0, p0, La/a/g/b;->c:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 54
    invoke-direct {p0, p1, p2}, La/a/g/b;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)La/a/d/c;

    move-result-object p1

    .line 56
    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, La/a/g/b;->a:Ljava/lang/String;

    const-string v1, "Sending uncaught exception to Backtrace API"

    invoke-static {v0, v1, p2}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    iget-object v0, p0, La/a/g/b;->d:La/a/a;

    new-instance v1, La/a/g/b/d;

    check-cast p2, Ljava/lang/Exception;

    sget-object v2, La/a/g/b;->e:Ljava/util/Map;

    invoke-direct {v1, p2, v2}, La/a/g/b/d;-><init>(Ljava/lang/Exception;Ljava/util/Map;)V

    invoke-virtual {v0, v1, p1}, La/a/a;->a(La/a/g/b/d;La/a/d/c;)V

    .line 59
    sget-object p1, La/a/g/b;->a:Ljava/lang/String;

    const-string p2, "Uncaught exception sent to Backtrace API"

    invoke-static {p1, p2}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object p1, La/a/g/b;->a:Ljava/lang/String;

    const-string p2, "Default uncaught exception handler"

    invoke-static {p1, p2}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    iget-object p1, p0, La/a/g/b;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    sget-object p2, La/a/g/b;->a:Ljava/lang/String;

    const-string v0, "Exception during waiting for response"

    invoke-static {p2, v0, p1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
