.class public Lcom/b/a/a/a;
.super Lcom/b/a/a/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a$a;
    }
.end annotation


# static fields
.field public static final a:J


# instance fields
.field private b:J

.field private c:J

.field private final d:Lcom/b/a/a/j/a;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/b/a/a/k/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/b/a/a/a;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/b/a/a/j/a;Lcom/b/a/a/k/b;)V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/b/a/a/j/a;-><init>()V

    .line 23
    sget-wide v0, Lcom/b/a/a/a;->a:J

    iput-wide v0, p0, Lcom/b/a/a/a;->b:J

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/b/a/a/a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/a;->c:J

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a;->e:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/b/a/a/a;->d:Lcom/b/a/a/j/a;

    .line 30
    iput-object p2, p0, Lcom/b/a/a/a;->f:Lcom/b/a/a/k/b;

    .line 31
    return-void
.end method

.method private a(Lcom/b/a/a/a$a;Lcom/b/a/a/j/b;J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-object v1, p1, Lcom/b/a/a/a$a;->b:Lcom/b/a/a/j/b;

    invoke-virtual {v1}, Lcom/b/a/a/j/b;->c()I

    move-result v1

    invoke-virtual {p2}, Lcom/b/a/a/j/b;->c()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-wide v2, p1, Lcom/b/a/a/a$a;->a:J

    sub-long/2addr v2, p3

    .line 87
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v4, p0, Lcom/b/a/a/a;->c:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/b/a/a/j/b;)V
    .locals 4

    .prologue
    .line 51
    iget-object v2, p0, Lcom/b/a/a/a;->e:Ljava/util/List;

    monitor-enter v2

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/b/a/a/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a$a;

    .line 54
    iget-object v0, v0, Lcom/b/a/a/a$a;->b:Lcom/b/a/a/j/b;

    invoke-virtual {v0}, Lcom/b/a/a/j/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/a/j/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/b/a/a/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 58
    :cond_1
    monitor-exit v2

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/b/a/a/a;->e:Ljava/util/List;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/b/a/a/a;->d:Lcom/b/a/a/j/a;

    invoke-virtual {v0}, Lcom/b/a/a/j/a;->a()V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/b/a/a/j/a$a;)V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/b/a/a/j/a;->a(Landroid/content/Context;Lcom/b/a/a/j/a$a;)V

    .line 36
    iget-object v0, p0, Lcom/b/a/a/a;->d:Lcom/b/a/a/j/a;

    new-instance v1, Lcom/b/a/a/a$1;

    invoke-direct {v1, p0}, Lcom/b/a/a/a$1;-><init>(Lcom/b/a/a/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/j/a;->a(Landroid/content/Context;Lcom/b/a/a/j/a$a;)V

    .line 48
    return-void
.end method

.method public a(Lcom/b/a/a/j/b;Z)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/b/a/a/a;->c(Lcom/b/a/a/j/b;)V

    .line 100
    iget-object v0, p0, Lcom/b/a/a/a;->d:Lcom/b/a/a/j/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/j/a;->a(Lcom/b/a/a/j/b;Z)V

    .line 101
    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/b/a/a/a;->b(Lcom/b/a/a/j/b;)V

    .line 104
    :cond_0
    return-void
.end method

.method protected a(Lcom/b/a/a/j/b;)Z
    .locals 8

    .prologue
    .line 62
    iget-object v0, p0, Lcom/b/a/a/a;->f:Lcom/b/a/a/k/b;

    invoke-interface {v0}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v2

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/b/a/a/j/b;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    add-long v4, v0, v2

    .line 64
    iget-object v1, p0, Lcom/b/a/a/a;->e:Ljava/util/List;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a$a;

    .line 66
    invoke-direct {p0, v0, p1, v4, v5}, Lcom/b/a/a/a;->a(Lcom/b/a/a/a$a;Lcom/b/a/a/j/b;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    monitor-exit v1

    .line 76
    :goto_0
    return v0

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/a/j/b;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/b/a/a/a;->b:J

    div-long/2addr v4, v6

    .line 72
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/b/a/a/a;->b:J

    mul-long/2addr v4, v6

    .line 73
    invoke-virtual {p1, v4, v5}, Lcom/b/a/a/j/b;->a(J)V

    .line 74
    iget-object v0, p0, Lcom/b/a/a/a;->e:Ljava/util/List;

    new-instance v6, Lcom/b/a/a/a$a;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v6, v2, v3, p1}, Lcom/b/a/a/a$a;-><init>(JLcom/b/a/a/j/b;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/b/a/a/j/b;)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/b/a/a/a;->a(Lcom/b/a/a/j/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/b/a/a/a;->d:Lcom/b/a/a/j/a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/j/a;->b(Lcom/b/a/a/j/b;)V

    .line 95
    :cond_0
    return-void
.end method
