.class public abstract Landroid/arch/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/b/b/e$b;,
        Landroid/arch/b/b/e$c;,
        Landroid/arch/b/b/e$a;
    }
.end annotation


# instance fields
.field protected volatile a:Landroid/arch/b/a/b;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/arch/b/b/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/arch/b/a/c;

.field private final d:Landroid/arch/b/b/c;

.field private e:Z

.field private final f:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/arch/b/b/e;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    invoke-virtual {p0}, Landroid/arch/b/b/e;->c()Landroid/arch/b/b/c;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/b/b/e;->d:Landroid/arch/b/b/c;

    .line 85
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/arch/b/a/f;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/arch/b/b/e;->e()V

    .line 204
    iget-object v0, p0, Landroid/arch/b/b/e;->c:Landroid/arch/b/a/c;

    invoke-interface {v0}, Landroid/arch/b/a/c;->a()Landroid/arch/b/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/arch/b/a/b;->a(Ljava/lang/String;)Landroid/arch/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/arch/b/a/e;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/arch/b/b/e;->e()V

    .line 193
    iget-object v0, p0, Landroid/arch/b/b/e;->c:Landroid/arch/b/a/c;

    invoke-interface {v0}, Landroid/arch/b/a/c;->a()Landroid/arch/b/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/arch/b/a/b;->a(Landroid/arch/b/a/e;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Landroid/arch/b/b/e;->c:Landroid/arch/b/a/c;

    invoke-interface {v0}, Landroid/arch/b/a/c;->a()Landroid/arch/b/a/b;

    move-result-object v0

    new-instance v1, Landroid/arch/b/a/a;

    invoke-direct {v1, p1, p2}, Landroid/arch/b/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/arch/b/a/b;->a(Landroid/arch/b/a/e;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/arch/b/b/e;->f:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method protected a(Landroid/arch/b/a/b;)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/arch/b/b/e;->d:Landroid/arch/b/b/c;

    invoke-virtual {v0, p1}, Landroid/arch/b/b/c;->a(Landroid/arch/b/a/b;)V

    .line 283
    return-void
.end method

.method public a(Landroid/arch/b/b/a;)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/arch/b/b/e;->b(Landroid/arch/b/b/a;)Landroid/arch/b/a/c;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/b/b/e;->c:Landroid/arch/b/a/c;

    .line 95
    iget-object v0, p1, Landroid/arch/b/b/a;->e:Ljava/util/List;

    iput-object v0, p0, Landroid/arch/b/b/e;->b:Ljava/util/List;

    .line 96
    iget-boolean v0, p1, Landroid/arch/b/b/a;->f:Z

    iput-boolean v0, p0, Landroid/arch/b/b/e;->e:Z

    .line 97
    return-void
.end method

.method public b()Landroid/arch/b/a/c;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/arch/b/b/e;->c:Landroid/arch/b/a/c;

    return-object v0
.end method

.method protected abstract b(Landroid/arch/b/b/a;)Landroid/arch/b/a/c;
.end method

.method protected abstract c()Landroid/arch/b/b/c;
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/arch/b/b/e;->a:Landroid/arch/b/a/b;

    .line 134
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/arch/b/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/arch/b/b/e;->e:Z

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    return-void

    .line 163
    :cond_1
    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/arch/b/b/e;->e()V

    .line 212
    iget-object v0, p0, Landroid/arch/b/b/e;->d:Landroid/arch/b/b/c;

    invoke-virtual {v0}, Landroid/arch/b/b/c;->b()V

    .line 213
    iget-object v0, p0, Landroid/arch/b/b/e;->c:Landroid/arch/b/a/c;

    invoke-interface {v0}, Landroid/arch/b/a/c;->a()Landroid/arch/b/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/b/a/b;->a()V

    .line 214
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/arch/b/b/e;->c:Landroid/arch/b/a/c;

    invoke-interface {v0}, Landroid/arch/b/a/c;->a()Landroid/arch/b/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/b/a/b;->b()V

    .line 221
    invoke-virtual {p0}, Landroid/arch/b/b/e;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/arch/b/b/e;->d:Landroid/arch/b/b/c;

    invoke-virtual {v0}, Landroid/arch/b/b/c;->a()V

    .line 226
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/arch/b/b/e;->c:Landroid/arch/b/a/c;

    invoke-interface {v0}, Landroid/arch/b/a/c;->a()Landroid/arch/b/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/b/a/b;->c()V

    .line 233
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/arch/b/b/e;->c:Landroid/arch/b/a/c;

    invoke-interface {v0}, Landroid/arch/b/a/c;->a()Landroid/arch/b/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/b/a/b;->d()Z

    move-result v0

    return v0
.end method
