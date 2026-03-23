.class final Lb/a/d/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lb/a/d/c;

.field private final b:Lc/i;

.field private c:Z


# direct methods
.method private constructor <init>(Lb/a/d/c;)V
    .locals 2

    .prologue
    .line 304
    iput-object p1, p0, Lb/a/d/c$b;->a:Lb/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Lc/i;

    iget-object v1, p0, Lb/a/d/c$b;->a:Lb/a/d/c;

    invoke-static {v1}, Lb/a/d/c;->a(Lb/a/d/c;)Lc/d;

    move-result-object v1

    invoke-interface {v1}, Lc/d;->a()Lc/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/i;-><init>(Lc/t;)V

    iput-object v0, p0, Lb/a/d/c$b;->b:Lc/i;

    return-void
.end method

.method synthetic constructor <init>(Lb/a/d/c;Lb/a/d/c$1;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lb/a/d/c$b;-><init>(Lb/a/d/c;)V

    return-void
.end method


# virtual methods
.method public a()Lc/t;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lb/a/d/c$b;->b:Lc/i;

    return-object v0
.end method

.method public a_(Lc/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    iget-boolean v0, p0, Lb/a/d/c$b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 320
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lb/a/d/c$b;->a:Lb/a/d/c;

    invoke-static {v0}, Lb/a/d/c;->a(Lb/a/d/c;)Lc/d;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lc/d;->k(J)Lc/d;

    .line 317
    iget-object v0, p0, Lb/a/d/c$b;->a:Lb/a/d/c;

    invoke-static {v0}, Lb/a/d/c;->a(Lb/a/d/c;)Lc/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    .line 318
    iget-object v0, p0, Lb/a/d/c$b;->a:Lb/a/d/c;

    invoke-static {v0}, Lb/a/d/c;->a(Lb/a/d/c;)Lc/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lc/d;->a_(Lc/c;J)V

    .line 319
    iget-object v0, p0, Lb/a/d/c$b;->a:Lb/a/d/c;

    invoke-static {v0}, Lb/a/d/c;->a(Lb/a/d/c;)Lc/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb/a/d/c$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lb/a/d/c$b;->c:Z

    .line 330
    iget-object v0, p0, Lb/a/d/c$b;->a:Lb/a/d/c;

    invoke-static {v0}, Lb/a/d/c;->a(Lb/a/d/c;)Lc/d;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    .line 331
    iget-object v0, p0, Lb/a/d/c$b;->a:Lb/a/d/c;

    iget-object v1, p0, Lb/a/d/c$b;->b:Lc/i;

    invoke-static {v0, v1}, Lb/a/d/c;->a(Lb/a/d/c;Lc/i;)V

    .line 332
    iget-object v0, p0, Lb/a/d/c$b;->a:Lb/a/d/c;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lb/a/d/c;->a(Lb/a/d/c;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb/a/d/c$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    monitor-exit p0

    return-void

    .line 324
    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/a/d/c$b;->a:Lb/a/d/c;

    invoke-static {v0}, Lb/a/d/c;->a(Lb/a/d/c;)Lc/d;

    move-result-object v0

    invoke-interface {v0}, Lc/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
