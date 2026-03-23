.class public La/a/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static transient a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Exception;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/a/g/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, La/a/g/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/g/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/g/e;->c:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, La/a/g/e;->b:Ljava/lang/Exception;

    .line 31
    invoke-direct {p0}, La/a/g/e;->b()V

    return-void
.end method

.method private a([Ljava/lang/StackTraceElement;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 53
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 58
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 60
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Backtrace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    sget-object v2, La/a/g/e;->a:Ljava/lang/String;

    const-string v3, "Skipping frame because it comes from inside the Backtrace library"

    invoke-static {v2, v3}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    :cond_1
    new-instance v3, La/a/g/d;

    invoke-direct {v3, v2}, La/a/g/d;-><init>(Ljava/lang/StackTraceElement;)V

    .line 65
    iget-object v2, p0, La/a/g/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 54
    :cond_3
    :goto_2
    sget-object p1, La/a/g/e;->a:Ljava/lang/String;

    const-string v0, "StackTraceFrames are null or empty"

    invoke-static {p1, v0}, La/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b()V
    .locals 2

    .line 43
    iget-object v0, p0, La/a/g/e;->b:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 45
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    invoke-direct {p0, v0}, La/a/g/e;->a([Ljava/lang/StackTraceElement;)V

    return-void

    .line 46
    :cond_2
    :goto_1
    sget-object v0, La/a/g/e;->a:Ljava/lang/String;

    const-string v1, "StackTraceElements are null or empty"

    invoke-static {v0, v1}, La/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "La/a/g/d;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, La/a/g/e;->c:Ljava/util/ArrayList;

    return-object v0
.end method
