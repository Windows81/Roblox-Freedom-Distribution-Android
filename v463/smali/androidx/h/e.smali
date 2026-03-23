.class public abstract Landroidx/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/h/e$b;,
        Landroidx/h/e$d;,
        Landroidx/h/e$a;,
        Landroidx/h/e$c;
    }
.end annotation


# instance fields
.field protected volatile a:Landroidx/i/a/b;

.field b:Z

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/h/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/Executor;

.field private e:Landroidx/i/a/c;

.field private final f:Landroidx/h/c;

.field private g:Z

.field private final h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/h/e;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    invoke-virtual {p0}, Landroidx/h/e;->c()Landroidx/h/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/h/e;->f:Landroidx/h/c;

    return-void
.end method

.method private static k()Z
    .locals 2

    .line 774
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroidx/i/a/e;)Landroid/database/Cursor;
    .locals 1

    .line 237
    invoke-virtual {p0}, Landroidx/h/e;->e()V

    .line 238
    iget-object v0, p0, Landroidx/h/e;->e:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->a()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/i/a/b;->a(Landroidx/i/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2

    .line 227
    iget-object v0, p0, Landroidx/h/e;->e:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->a()Landroidx/i/a/b;

    move-result-object v0

    new-instance v1, Landroidx/i/a/a;

    invoke-direct {v1, p1, p2}, Landroidx/i/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroidx/i/a/b;->a(Landroidx/i/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroidx/i/a/f;
    .locals 1

    .line 248
    invoke-virtual {p0}, Landroidx/h/e;->e()V

    .line 249
    iget-object v0, p0, Landroidx/h/e;->e:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->a()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/i/a/b;->a(Ljava/lang/String;)Landroidx/i/a/f;

    move-result-object p1

    return-object p1
.end method

.method a()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/h/e;->h:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public a(Landroidx/h/a;)V
    .locals 3

    .line 114
    invoke-virtual {p0, p1}, Landroidx/h/e;->b(Landroidx/h/a;)Landroidx/i/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/h/e;->e:Landroidx/i/a/c;

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 117
    iget-object v0, p1, Landroidx/h/a;->g:Landroidx/h/e$c;

    sget-object v2, Landroidx/h/e$c;->c:Landroidx/h/e$c;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 118
    :cond_0
    iget-object v0, p0, Landroidx/h/e;->e:Landroidx/i/a/c;

    invoke-interface {v0, v1}, Landroidx/i/a/c;->a(Z)V

    .line 120
    :cond_1
    iget-object v0, p1, Landroidx/h/a;->e:Ljava/util/List;

    iput-object v0, p0, Landroidx/h/e;->c:Ljava/util/List;

    .line 121
    iget-object v0, p1, Landroidx/h/a;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/h/e;->d:Ljava/util/concurrent/Executor;

    .line 122
    iget-boolean p1, p1, Landroidx/h/a;->f:Z

    iput-boolean p1, p0, Landroidx/h/e;->g:Z

    .line 123
    iput-boolean v1, p0, Landroidx/h/e;->b:Z

    return-void
.end method

.method protected a(Landroidx/i/a/b;)V
    .locals 1

    .line 336
    iget-object v0, p0, Landroidx/h/e;->f:Landroidx/h/c;

    invoke-virtual {v0, p1}, Landroidx/h/c;->a(Landroidx/i/a/b;)V

    return-void
.end method

.method public b()Landroidx/i/a/c;
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/h/e;->e:Landroidx/i/a/c;

    return-object v0
.end method

.method protected abstract b(Landroidx/h/a;)Landroidx/i/a/c;
.end method

.method protected abstract c()Landroidx/h/c;
.end method

.method public d()Z
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/h/e;->a:Landroidx/i/a/b;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Landroidx/i/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    .line 205
    iget-boolean v0, p0, Landroidx/h/e;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-static {}, Landroidx/h/e;->k()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .locals 2

    .line 256
    invoke-virtual {p0}, Landroidx/h/e;->e()V

    .line 257
    iget-object v0, p0, Landroidx/h/e;->e:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->a()Landroidx/i/a/b;

    move-result-object v0

    .line 258
    iget-object v1, p0, Landroidx/h/e;->f:Landroidx/h/c;

    invoke-virtual {v1, v0}, Landroidx/h/c;->b(Landroidx/i/a/b;)V

    .line 259
    invoke-interface {v0}, Landroidx/i/a/b;->a()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/h/e;->e:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->a()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/i/a/b;->b()V

    .line 267
    invoke-virtual {p0}, Landroidx/h/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Landroidx/h/e;->f:Landroidx/h/c;

    invoke-virtual {v0}, Landroidx/h/c;->b()V

    :cond_0
    return-void
.end method

.method public h()Ljava/util/concurrent/Executor;
    .locals 1

    .line 279
    iget-object v0, p0, Landroidx/h/e;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public i()V
    .locals 1

    .line 286
    iget-object v0, p0, Landroidx/h/e;->e:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->a()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/i/a/b;->c()V

    return-void
.end method

.method public j()Z
    .locals 1

    .line 360
    iget-object v0, p0, Landroidx/h/e;->e:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->a()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/i/a/b;->d()Z

    move-result v0

    return v0
.end method
