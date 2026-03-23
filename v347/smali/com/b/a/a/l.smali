.class Lcom/b/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/h/a$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/l$2;
    }
.end annotation


# instance fields
.field final a:Lcom/b/a/a/k/b;

.field final b:Lcom/b/a/a/m;

.field final c:Lcom/b/a/a/m;

.field final d:Lcom/b/a/a/f;

.field final e:Lcom/b/a/a/e;

.field final f:Lcom/b/a/a/b;

.field final g:Lcom/b/a/a/g/g;

.field h:Lcom/b/a/a/j/a;

.field private final i:Landroid/content/Context;

.field private final j:J

.field private final k:Lcom/b/a/a/h/b;

.field private final l:Lcom/b/a/a/d/a;

.field private final m:Lcom/b/a/a/g/c;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/j/b;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z


# direct methods
.method constructor <init>(Lcom/b/a/a/c/a;Lcom/b/a/a/g/g;Lcom/b/a/a/g/c;)V
    .locals 4

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/b/a/a/e;

    invoke-direct {v0}, Lcom/b/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/l;->p:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/a/l;->q:Z

    .line 73
    iput-object p2, p0, Lcom/b/a/a/l;->g:Lcom/b/a/a/g/g;

    .line 74
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->j()Lcom/b/a/a/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->j()Lcom/b/a/a/f/a;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/f/b;->a(Lcom/b/a/a/f/a;)V

    .line 77
    :cond_0
    iput-object p3, p0, Lcom/b/a/a/l;->m:Lcom/b/a/a/g/c;

    .line 78
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->m()Lcom/b/a/a/k/b;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    .line 79
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/l;->i:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v0}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/l;->j:J

    .line 81
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->o()Lcom/b/a/a/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    .line 82
    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/b/a/a/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    instance-of v0, v0, Lcom/b/a/a/a;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/b/a/a/a;

    iget-object v1, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    iget-object v2, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/a;-><init>(Lcom/b/a/a/j/a;Lcom/b/a/a/k/b;)V

    iput-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->d()Lcom/b/a/a/p;

    move-result-object v0

    iget-wide v2, p0, Lcom/b/a/a/l;->j:J

    invoke-interface {v0, p1, v2, v3}, Lcom/b/a/a/p;->a(Lcom/b/a/a/c/a;J)Lcom/b/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    .line 88
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->d()Lcom/b/a/a/p;

    move-result-object v0

    iget-wide v2, p0, Lcom/b/a/a/l;->j:J

    invoke-interface {v0, p1, v2, v3}, Lcom/b/a/a/p;->b(Lcom/b/a/a/c/a;J)Lcom/b/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    .line 90
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->g()Lcom/b/a/a/h/b;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/l;->k:Lcom/b/a/a/h/b;

    .line 91
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->e()Lcom/b/a/a/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/l;->l:Lcom/b/a/a/d/a;

    .line 92
    iget-object v0, p0, Lcom/b/a/a/l;->k:Lcom/b/a/a/h/b;

    instance-of v0, v0, Lcom/b/a/a/h/a;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/b/a/a/l;->k:Lcom/b/a/a/h/b;

    check-cast v0, Lcom/b/a/a/h/a;

    invoke-interface {v0, p0}, Lcom/b/a/a/h/a;->a(Lcom/b/a/a/h/a$a;)V

    .line 95
    :cond_2
    new-instance v0, Lcom/b/a/a/f;

    iget-object v1, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-direct {v0, p0, v1, p3, p1}, Lcom/b/a/a/f;-><init>(Lcom/b/a/a/l;Lcom/b/a/a/k/b;Lcom/b/a/a/g/c;Lcom/b/a/a/c/a;)V

    iput-object v0, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    .line 96
    new-instance v0, Lcom/b/a/a/b;

    iget-object v1, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-direct {v0, p3, v1}, Lcom/b/a/a/b;-><init>(Lcom/b/a/a/g/c;Lcom/b/a/a/k/b;)V

    iput-object v0, p0, Lcom/b/a/a/l;->f:Lcom/b/a/a/b;

    .line 97
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/b/a/a/j;
    .locals 5

    .prologue
    .line 192
    if-eqz p1, :cond_2

    .line 193
    iget-object v0, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v0}, Lcom/b/a/a/e;->j()V

    .line 194
    iget-object v0, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->a([Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    sget-object v1, Lcom/b/a/a/s;->b:Lcom/b/a/a/s;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->a(Lcom/b/a/a/s;)V

    .line 196
    iget-object v0, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    iget-object v1, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-interface {v0, v1}, Lcom/b/a/a/m;->d(Lcom/b/a/a/e;)Ljava/util/Set;

    move-result-object v1

    .line 197
    iget-object v0, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    iget-object v2, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-interface {v0, v2}, Lcom/b/a/a/m;->d(Lcom/b/a/a/e;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 200
    iget-object v3, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v0}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/b/a/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    :goto_0
    return-object v0

    .line 204
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    goto :goto_0

    .line 207
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/b/a/a/g/a/a;)V
    .locals 12

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p1}, Lcom/b/a/a/g/a/a;->c()Lcom/b/a/a/i;

    move-result-object v6

    .line 114
    invoke-virtual {v6}, Lcom/b/a/a/i;->c()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v0}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v0

    invoke-virtual {v6}, Lcom/b/a/a/i;->c()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 117
    :goto_0
    iget-object v7, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-virtual {v6, v7}, Lcom/b/a/a/i;->c(Lcom/b/a/a/k/b;)V

    .line 118
    new-instance v7, Lcom/b/a/a/j$a;

    invoke-direct {v7}, Lcom/b/a/a/j$a;-><init>()V

    invoke-virtual {v6}, Lcom/b/a/a/i;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/b/a/a/j$a;->a(I)Lcom/b/a/a/j$a;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/b/a/a/j$a;->a(Lcom/b/a/a/i;)Lcom/b/a/a/j$a;

    move-result-object v7

    invoke-virtual {v6}, Lcom/b/a/a/i;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/b/a/a/j$a;->a(Ljava/lang/String;)Lcom/b/a/a/j$a;

    move-result-object v7

    iget-object v8, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v8}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/b/a/a/j$a;->a(J)Lcom/b/a/a/j$a;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Lcom/b/a/a/j$a;->b(J)Lcom/b/a/a/j$a;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/j$a;->d(J)Lcom/b/a/a/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/j$a;->a()Lcom/b/a/a/j;

    move-result-object v2

    .line 126
    invoke-virtual {v6}, Lcom/b/a/a/i;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/a/l;->a(Ljava/lang/String;)Lcom/b/a/a/j;

    move-result-object v3

    .line 127
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v3}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v1, v5

    .line 128
    :goto_1
    if-eqz v1, :cond_8

    .line 129
    invoke-virtual {v6}, Lcom/b/a/a/i;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    .line 130
    :goto_2
    if-eqz v3, :cond_7

    .line 131
    iget-object v7, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    sget-object v8, Lcom/b/a/a/s;->b:Lcom/b/a/a/s;

    new-array v9, v5, [Ljava/lang/String;

    invoke-virtual {v6}, Lcom/b/a/a/i;->k()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Lcom/b/a/a/f;->b(Lcom/b/a/a/s;[Ljava/lang/String;)Ljava/util/Set;

    .line 132
    invoke-interface {v0, v2, v3}, Lcom/b/a/a/m;->a(Lcom/b/a/a/j;Lcom/b/a/a/j;)V

    .line 136
    :goto_3
    invoke-static {}, Lcom/b/a/a/f/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "added job class: %s priority: %d delay: %d group : %s persistent: %s requires network: %s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v6}, Lcom/b/a/a/i;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v7, 0x2

    invoke-virtual {v6}, Lcom/b/a/a/i;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    invoke-virtual {v6}, Lcom/b/a/a/i;->j()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x4

    invoke-virtual {v6}, Lcom/b/a/a/i;->e()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-virtual {v6, v8}, Lcom/b/a/a/i;->a(Lcom/b/a/a/k/b;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v0, v3}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/b/a/a/l;->l:Lcom/b/a/a/d/a;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/b/a/a/l;->l:Lcom/b/a/a/d/a;

    invoke-interface {v0, v6}, Lcom/b/a/a/d/a;->a(Lcom/b/a/a/i;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/l;->i:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/b/a/a/j;->a(Landroid/content/Context;)V

    .line 150
    :try_start_0
    invoke-virtual {v2}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/i;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_5
    iget-object v0, p0, Lcom/b/a/a/l;->f:Lcom/b/a/a/b;

    invoke-virtual {v2}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/b/a/a/b;->a(Lcom/b/a/a/i;)V

    .line 155
    if-eqz v1, :cond_9

    .line 156
    iget-object v0, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v0}, Lcom/b/a/a/f;->a()V

    .line 157
    invoke-virtual {v6}, Lcom/b/a/a/i;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    invoke-direct {p0, v6}, Lcom/b/a/a/l;->a(Lcom/b/a/a/i;)V

    .line 164
    :cond_3
    :goto_6
    return-void

    :cond_4
    move-wide v0, v2

    .line 114
    goto/16 :goto_0

    :cond_5
    move v1, v4

    .line 127
    goto/16 :goto_1

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    goto/16 :goto_2

    .line 134
    :cond_7
    invoke-interface {v0, v2}, Lcom/b/a/a/m;->a(Lcom/b/a/a/j;)Z

    goto/16 :goto_3

    .line 142
    :cond_8
    const-string v0, "another job with same singleId: %s was already queued"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/b/a/a/i;->k()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v0, v3}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v3, "job\'s onAdded did throw an exception, ignoring..."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 161
    :cond_9
    invoke-direct {p0, v2, v5}, Lcom/b/a/a/l;->a(Lcom/b/a/a/j;I)V

    .line 162
    iget-object v0, p0, Lcom/b/a/a/l;->f:Lcom/b/a/a/b;

    invoke-virtual {v2}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/b;->b(Lcom/b/a/a/i;)V

    goto :goto_6
.end method

.method private a(Lcom/b/a/a/g/a/c;)V
    .locals 4

    .prologue
    .line 434
    new-instance v0, Lcom/b/a/a/c;

    invoke-virtual {p1}, Lcom/b/a/a/g/a/c;->c()Lcom/b/a/a/s;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/a/g/a/c;->d()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/b/a/a/g/a/c;->e()Lcom/b/a/a/d$a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/a/c;-><init>(Lcom/b/a/a/s;[Ljava/lang/String;Lcom/b/a/a/d$a;)V

    .line 436
    iget-object v1, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v0, p0, v1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/l;Lcom/b/a/a/f;)V

    .line 437
    invoke-virtual {v0}, Lcom/b/a/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {v0, p0}, Lcom/b/a/a/c;->a(Lcom/b/a/a/l;)V

    .line 445
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/b/a/a/l;->n:Ljava/util/List;

    if-nez v1, :cond_1

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/b/a/a/l;->n:Ljava/util/List;

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/b/a/a/l;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/b/a/a/g/a/e;)V
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p1}, Lcom/b/a/a/g/a/e;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/b/a/a/l;->g:Lcom/b/a/a/g/g;

    invoke-virtual {v0}, Lcom/b/a/a/g/g;->b()V

    .line 351
    iget-object v0, p0, Lcom/b/a/a/l;->g:Lcom/b/a/a/g/g;

    invoke-virtual {v0}, Lcom/b/a/a/g/g;->a()V

    .line 353
    :cond_0
    return-void
.end method

.method private a(Lcom/b/a/a/g/a/h;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->d()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot handle public query with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :sswitch_0
    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->c()Lcom/b/a/a/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/l;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/b/a/a/h;->a(I)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 365
    :sswitch_1
    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->c()Lcom/b/a/a/h;

    move-result-object v0

    invoke-direct {p0}, Lcom/b/a/a/l;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/b/a/a/l;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/b/a/a/h;->a(I)V

    goto :goto_0

    .line 368
    :sswitch_2
    const-string v0, "handling start request..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    iget-boolean v0, p0, Lcom/b/a/a/l;->p:Z

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/l;->p:Z

    .line 373
    iget-object v0, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v0}, Lcom/b/a/a/f;->b()V

    goto :goto_0

    .line 376
    :sswitch_3
    const-string v0, "handling stop request..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iput-boolean v2, p0, Lcom/b/a/a/l;->p:Z

    .line 378
    iget-object v0, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v0}, Lcom/b/a/a/f;->c()V

    goto :goto_0

    .line 381
    :sswitch_4
    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/a/l;->b(Ljava/lang/String;)Lcom/b/a/a/n;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->c()Lcom/b/a/a/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/a/a/n;->ordinal()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/b/a/a/h;->a(I)V

    goto :goto_0

    .line 385
    :sswitch_5
    invoke-direct {p0}, Lcom/b/a/a/l;->f()V

    .line 386
    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->c()Lcom/b/a/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->c()Lcom/b/a/a/h;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/b/a/a/h;->a(I)V

    goto :goto_0

    .line 391
    :sswitch_6
    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->c()Lcom/b/a/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v1}, Lcom/b/a/a/f;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/b/a/a/h;->a(I)V

    goto :goto_0

    .line 394
    :sswitch_7
    invoke-virtual {p1}, Lcom/b/a/a/g/a/h;->c()Lcom/b/a/a/h;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/b/a/a/h;->a(I)V

    goto :goto_0

    .line 360
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x65 -> :sswitch_7
    .end sparse-switch
.end method

.method private a(Lcom/b/a/a/g/a/j;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 448
    invoke-virtual {p1}, Lcom/b/a/a/g/a/j;->d()I

    move-result v3

    .line 449
    invoke-virtual {p1}, Lcom/b/a/a/g/a/j;->c()Lcom/b/a/a/j;

    move-result-object v4

    .line 450
    iget-object v0, p0, Lcom/b/a/a/l;->f:Lcom/b/a/a/b;

    invoke-virtual {v4}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/b;->a(Lcom/b/a/a/i;I)V

    .line 451
    const/4 v0, 0x0

    .line 452
    packed-switch v3, :pswitch_data_0

    .line 479
    const-string v2, "unknown job holder result"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/b/a/a/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    :goto_0
    iget-object v2, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v2, p1, v4, v0}, Lcom/b/a/a/f;->a(Lcom/b/a/a/g/a/j;Lcom/b/a/a/j;Lcom/b/a/a/q;)V

    .line 482
    iget-object v0, p0, Lcom/b/a/a/l;->f:Lcom/b/a/a/b;

    invoke-virtual {v4}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/b;->b(Lcom/b/a/a/i;I)V

    .line 483
    iget-object v0, p0, Lcom/b/a/a/l;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/b/a/a/l;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 485
    :goto_1
    if-ge v1, v2, :cond_0

    .line 486
    iget-object v0, p0, Lcom/b/a/a/l;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/c;

    .line 487
    invoke-virtual {v0, v4, v3}, Lcom/b/a/a/c;->a(Lcom/b/a/a/j;I)V

    .line 488
    invoke-virtual {v0}, Lcom/b/a/a/c;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 489
    invoke-virtual {v0, p0}, Lcom/b/a/a/c;->a(Lcom/b/a/a/l;)V

    .line 490
    iget-object v0, p0, Lcom/b/a/a/l;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 491
    add-int/lit8 v0, v1, -0x1

    .line 492
    add-int/lit8 v1, v2, -0x1

    .line 485
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 454
    :pswitch_0
    invoke-virtual {v4}, Lcom/b/a/a/j;->r()V

    .line 455
    invoke-direct {p0, v4}, Lcom/b/a/a/l;->c(Lcom/b/a/a/j;)V

    goto :goto_0

    .line 458
    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v4, v2}, Lcom/b/a/a/l;->a(Lcom/b/a/a/j;I)V

    .line 459
    invoke-direct {p0, v4}, Lcom/b/a/a/l;->c(Lcom/b/a/a/j;)V

    goto :goto_0

    .line 462
    :pswitch_2
    const/4 v2, 0x5

    invoke-direct {p0, v4, v2}, Lcom/b/a/a/l;->a(Lcom/b/a/a/j;I)V

    .line 463
    invoke-direct {p0, v4}, Lcom/b/a/a/l;->c(Lcom/b/a/a/j;)V

    goto :goto_0

    .line 466
    :pswitch_3
    const/4 v2, 0x6

    invoke-direct {p0, v4, v2}, Lcom/b/a/a/l;->a(Lcom/b/a/a/j;I)V

    .line 467
    invoke-direct {p0, v4}, Lcom/b/a/a/l;->c(Lcom/b/a/a/j;)V

    goto :goto_0

    .line 470
    :pswitch_4
    invoke-virtual {v4}, Lcom/b/a/a/j;->s()Lcom/b/a/a/q;

    move-result-object v0

    .line 471
    invoke-direct {p0, v4}, Lcom/b/a/a/l;->a(Lcom/b/a/a/j;)V

    goto :goto_0

    .line 474
    :pswitch_5
    const-string v2, "running job failed and cancelled, doing nothing. Will be removed after it\'s onCancel is called by the CancelHandler"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 496
    :cond_0
    return-void

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_2

    .line 452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/b/a/a/g/a/k;)V
    .locals 4

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/b/a/a/g/a/k;->c()I

    move-result v0

    .line 285
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/b/a/a/g/a/k;->d()Lcom/b/a/a/j/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/a/l;->c(Lcom/b/a/a/j/b;)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 288
    invoke-virtual {p1}, Lcom/b/a/a/g/a/k;->d()Lcom/b/a/a/j/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/a/l;->b(Lcom/b/a/a/j/b;)V

    goto :goto_0

    .line 290
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown scheduler message with what "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lcom/b/a/a/i;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 167
    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-virtual {p1, v0}, Lcom/b/a/a/i;->a(Lcom/b/a/a/k/b;)Z

    move-result v0

    .line 171
    iget-object v2, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-virtual {p1, v2}, Lcom/b/a/a/i;->b(Lcom/b/a/a/k/b;)Z

    move-result v6

    .line 172
    invoke-virtual {p1}, Lcom/b/a/a/i;->c()J

    move-result-wide v2

    .line 173
    cmp-long v7, v2, v4

    if-lez v7, :cond_3

    .line 174
    :goto_1
    if-nez v0, :cond_2

    if-nez v6, :cond_2

    const-wide/16 v4, 0x7530

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 179
    :cond_2
    new-instance v4, Lcom/b/a/a/j/b;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/b/a/a/j/b;-><init>(Ljava/lang/String;)V

    .line 180
    if-eqz v6, :cond_4

    const/4 v0, 0x3

    :goto_2
    invoke-virtual {v4, v0}, Lcom/b/a/a/j/b;->a(I)V

    .line 182
    invoke-virtual {v4, v2, v3}, Lcom/b/a/a/j/b;->a(J)V

    .line 183
    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    invoke-virtual {v0, v4}, Lcom/b/a/a/j/a;->b(Lcom/b/a/a/j/b;)V

    .line 184
    iput-boolean v1, p0, Lcom/b/a/a/l;->q:Z

    goto :goto_0

    :cond_3
    move-wide v2, v4

    .line 173
    goto :goto_1

    .line 180
    :cond_4
    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private a(Lcom/b/a/a/j;)V
    .locals 6

    .prologue
    .line 508
    invoke-virtual {p1}, Lcom/b/a/a/j;->s()Lcom/b/a/a/q;

    move-result-object v2

    .line 509
    if-nez v2, :cond_0

    .line 510
    invoke-direct {p0, p1}, Lcom/b/a/a/l;->b(Lcom/b/a/a/j;)V

    .line 524
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {v2}, Lcom/b/a/a/q;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {v2}, Lcom/b/a/a/q;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/b/a/a/j;->b(I)V

    .line 516
    :cond_1
    const-wide/16 v0, -0x1

    .line 517
    invoke-virtual {v2}, Lcom/b/a/a/q;->b()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 518
    invoke-virtual {v2}, Lcom/b/a/a/q;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 520
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v2}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/b/a/a/j;->d(J)V

    .line 523
    invoke-direct {p0, p1}, Lcom/b/a/a/l;->b(Lcom/b/a/a/j;)V

    goto :goto_0

    .line 520
    :cond_3
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_1
.end method

.method private a(Lcom/b/a/a/j;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 500
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/b/a/a/j;->d(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/b/a/a/l;->f:Lcom/b/a/a/b;

    invoke-virtual {p1}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/b/a/a/b;->a(Lcom/b/a/a/i;Z)V

    .line 505
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    const-string v1, "job\'s onCancel did throw an exception, ignoring..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/a/l;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/b/a/a/l;->e()V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/g/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/c;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/g/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/e;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/g/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/h;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/g/a/h;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/j;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/g/a/j;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/l;Lcom/b/a/a/g/a/k;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/g/a/k;)V

    return-void
.end method

.method private a(Lcom/b/a/a/j/b;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 295
    iget-object v1, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    iget-object v2, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v2}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/b/a/a/f;->a(Lcom/b/a/a/j/b;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v1}, Lcom/b/a/a/e;->j()V

    .line 300
    iget-object v1, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    iget-object v2, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v2}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/e;->a(J)V

    .line 301
    iget-object v1, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {p1}, Lcom/b/a/a/j/b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/b/a/a/e;->a(I)V

    .line 302
    iget-object v1, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    iget-object v2, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-interface {v1, v2}, Lcom/b/a/a/m;->a(Lcom/b/a/a/e;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/a/l;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/b/a/a/l;->q:Z

    return p1
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 562
    iget-object v0, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    iget-object v0, v0, Lcom/b/a/a/f;->a:Lcom/b/a/a/r;

    invoke-virtual {v0}, Lcom/b/a/a/r;->a()Ljava/util/Collection;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v1}, Lcom/b/a/a/e;->j()V

    .line 564
    iget-object v1, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    iget-object v2, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v2}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/e;->a(J)V

    .line 565
    iget-object v1, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v1, p1}, Lcom/b/a/a/e;->a(I)V

    .line 566
    iget-object v1, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v1, v0}, Lcom/b/a/a/e;->a(Ljava/util/Collection;)V

    .line 567
    iget-object v0, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->c(Z)V

    .line 568
    iget-object v0, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    iget-object v1, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v1}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->a(Ljava/lang/Long;)V

    .line 570
    const/4 v0, 0x0

    .line 571
    iget-object v1, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    iget-object v2, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-interface {v1, v2}, Lcom/b/a/a/m;->a(Lcom/b/a/a/e;)I

    move-result v1

    add-int/2addr v0, v1

    .line 572
    iget-object v1, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    iget-object v2, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-interface {v1, v2}, Lcom/b/a/a/m;->a(Lcom/b/a/a/e;)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    return v0
.end method

.method private b(Ljava/lang/String;)Lcom/b/a/a/n;
    .locals 5

    .prologue
    .line 408
    iget-object v0, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v0, p1}, Lcom/b/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/b/a/a/n;->c:Lcom/b/a/a/n;

    .line 430
    :goto_0
    return-object v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->a(Ljava/lang/String;)Lcom/b/a/a/j;

    move-result-object v0

    .line 413
    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->a(Ljava/lang/String;)Lcom/b/a/a/j;

    move-result-object v0

    .line 416
    :cond_1
    if-nez v0, :cond_2

    .line 417
    sget-object v0, Lcom/b/a/a/n;->d:Lcom/b/a/a/n;

    goto :goto_0

    .line 419
    :cond_2
    invoke-direct {p0}, Lcom/b/a/a/l;->g()I

    move-result v1

    .line 420
    iget-object v2, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v2}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v2

    .line 421
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/j;->a(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 422
    sget-object v0, Lcom/b/a/a/n;->a:Lcom/b/a/a/n;

    goto :goto_0

    .line 424
    :cond_3
    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/j;->b(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    sget-object v0, Lcom/b/a/a/n;->a:Lcom/b/a/a/n;

    goto :goto_0

    .line 427
    :cond_4
    invoke-virtual {v0}, Lcom/b/a/a/j;->i()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 428
    sget-object v0, Lcom/b/a/a/n;->a:Lcom/b/a/a/n;

    goto :goto_0

    .line 430
    :cond_5
    sget-object v0, Lcom/b/a/a/n;->b:Lcom/b/a/a/n;

    goto :goto_0
.end method

.method private b(Lcom/b/a/a/j/b;)V
    .locals 4

    .prologue
    .line 306
    iget-object v2, p0, Lcom/b/a/a/l;->o:Ljava/util/List;

    .line 307
    if-eqz v2, :cond_1

    .line 308
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 309
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j/b;

    .line 310
    invoke-virtual {v0}, Lcom/b/a/a/j/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/a/j/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 308
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    if-nez v0, :cond_3

    .line 323
    :cond_2
    :goto_1
    return-void

    .line 318
    :cond_3
    invoke-direct {p0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/j/b;)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    invoke-virtual {v0, p1}, Lcom/b/a/a/j/a;->b(Lcom/b/a/a/j/b;)V

    goto :goto_1
.end method

.method private b(Lcom/b/a/a/j;)V
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p1}, Lcom/b/a/a/j;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    invoke-virtual {p1}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->b(Lcom/b/a/a/j;)Z

    .line 536
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->b(Lcom/b/a/a/j;)Z

    goto :goto_0

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not re-adding cancelled job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/a/l;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/b/a/a/l;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/b/a/a/l;)Lcom/b/a/a/g/c;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/b/a/a/l;->m:Lcom/b/a/a/g/c;

    return-object v0
.end method

.method private c(Lcom/b/a/a/j/b;)V
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/b/a/a/l;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/j/a;->a(Lcom/b/a/a/j/b;Z)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-direct {p0, p1}, Lcom/b/a/a/l;->a(Lcom/b/a/a/j/b;)Z

    move-result v0

    .line 334
    if-nez v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/j/a;->a(Lcom/b/a/a/j/b;Z)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/l;->o:Ljava/util/List;

    if-nez v0, :cond_3

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/l;->o:Ljava/util/List;

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/b/a/a/l;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v0}, Lcom/b/a/a/f;->b()V

    goto :goto_0
.end method

.method private c(Lcom/b/a/a/j;)V
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p1}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->c(Lcom/b/a/a/j;)V

    .line 544
    :goto_0
    iget-object v0, p0, Lcom/b/a/a/l;->f:Lcom/b/a/a/b;

    invoke-virtual {p1}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/b;->b(Lcom/b/a/a/i;)V

    .line 545
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->c(Lcom/b/a/a/j;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/b/a/a/l;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/b/a/a/l;->q:Z

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/l;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/l;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    invoke-virtual {v0}, Lcom/b/a/a/f;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/l;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/b/a/a/l;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j/b;

    .line 278
    invoke-direct {p0, v0}, Lcom/b/a/a/l;->a(Lcom/b/a/a/j/b;)Z

    move-result v2

    .line 279
    iget-object v3, p0, Lcom/b/a/a/l;->h:Lcom/b/a/a/j/a;

    invoke-virtual {v3, v0, v2}, Lcom/b/a/a/j/a;->a(Lcom/b/a/a/j/b;Z)V

    .line 276
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    invoke-interface {v0}, Lcom/b/a/a/m;->b()V

    .line 404
    iget-object v0, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    invoke-interface {v0}, Lcom/b/a/a/m;->b()V

    .line 405
    return-void
.end method

.method private g()I
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/b/a/a/l;->k:Lcom/b/a/a/h/b;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/l;->k:Lcom/b/a/a/h/b;

    iget-object v1, p0, Lcom/b/a/a/l;->i:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/b/a/a/h/b;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/Collection;)Lcom/b/a/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/b/a/a/j;"
        }
    .end annotation

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/a/l;->a(Ljava/util/Collection;Z)Lcom/b/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Collection;Z)Lcom/b/a/a/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/b/a/a/j;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 625
    iget-boolean v3, p0, Lcom/b/a/a/l;->p:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-object v0

    .line 628
    :cond_1
    invoke-direct {p0}, Lcom/b/a/a/l;->g()I

    move-result v3

    .line 631
    const-string v4, "looking for next job"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    iget-object v4, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v4}, Lcom/b/a/a/e;->j()V

    .line 633
    iget-object v4, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    iget-object v5, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v5}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/b/a/a/e;->a(J)V

    .line 634
    iget-object v4, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v4, v3}, Lcom/b/a/a/e;->a(I)V

    .line 635
    iget-object v3, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v3, p1}, Lcom/b/a/a/e;->a(Ljava/util/Collection;)V

    .line 636
    iget-object v3, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v3, v1}, Lcom/b/a/a/e;->c(Z)V

    .line 637
    iget-object v3, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    iget-object v4, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v4}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/b/a/a/e;->a(Ljava/lang/Long;)V

    .line 638
    iget-object v3, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    iget-object v4, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-interface {v3, v4}, Lcom/b/a/a/m;->b(Lcom/b/a/a/e;)Lcom/b/a/a/j;

    move-result-object v3

    .line 639
    const-string v4, "non persistent result %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    if-nez v3, :cond_3

    .line 642
    iget-object v3, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    iget-object v4, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-interface {v3, v4}, Lcom/b/a/a/m;->b(Lcom/b/a/a/e;)Lcom/b/a/a/j;

    move-result-object v3

    .line 644
    const-string v4, "persistent result %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    move-object v1, v3

    .line 646
    :goto_1
    if-eqz v1, :cond_0

    .line 649
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/b/a/a/l;->l:Lcom/b/a/a/d/a;

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/b/a/a/l;->l:Lcom/b/a/a/d/a;

    invoke-virtual {v1}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/b/a/a/d/a;->a(Lcom/b/a/a/i;)V

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/l;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/b/a/a/j;->a(Landroid/content/Context;)V

    move-object v0, v1

    .line 653
    goto :goto_0

    :cond_3
    move-object v1, v3

    goto :goto_1
.end method

.method a(Z)Ljava/lang/Long;
    .locals 6

    .prologue
    .line 582
    iget-object v0, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    iget-object v0, v0, Lcom/b/a/a/f;->a:Lcom/b/a/a/r;

    invoke-virtual {v0}, Lcom/b/a/a/r;->b()Ljava/lang/Long;

    move-result-object v2

    .line 583
    invoke-direct {p0}, Lcom/b/a/a/l;->g()I

    move-result v0

    .line 584
    iget-object v1, p0, Lcom/b/a/a/l;->d:Lcom/b/a/a/f;

    iget-object v1, v1, Lcom/b/a/a/f;->a:Lcom/b/a/a/r;

    invoke-virtual {v1}, Lcom/b/a/a/r;->a()Ljava/util/Collection;

    move-result-object v1

    .line 585
    iget-object v3, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v3}, Lcom/b/a/a/e;->j()V

    .line 586
    iget-object v3, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    iget-object v4, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v4}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/b/a/a/e;->a(J)V

    .line 587
    iget-object v3, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v3, v0}, Lcom/b/a/a/e;->a(I)V

    .line 588
    iget-object v0, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->a(Ljava/util/Collection;)V

    .line 589
    iget-object v0, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->c(Z)V

    .line 590
    iget-object v0, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    iget-object v1, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-interface {v0, v1}, Lcom/b/a/a/m;->c(Lcom/b/a/a/e;)Ljava/lang/Long;

    move-result-object v1

    .line 591
    iget-object v0, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    iget-object v3, p0, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    invoke-interface {v0, v3}, Lcom/b/a/a/m;->c(Lcom/b/a/a/e;)Ljava/lang/Long;

    move-result-object v3

    .line 592
    const/4 v0, 0x0

    .line 593
    if-eqz v2, :cond_6

    .line 596
    :goto_0
    if-eqz v1, :cond_0

    .line 597
    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 599
    :cond_0
    if-eqz v3, :cond_1

    .line 600
    if-nez v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 602
    :cond_1
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/b/a/a/l;->k:Lcom/b/a/a/h/b;

    instance-of v0, v0, Lcom/b/a/a/h/a;

    if-nez v0, :cond_5

    .line 604
    iget-object v0, p0, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v0}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v0

    sget-wide v4, Lcom/b/a/a/k;->a:J

    add-long/2addr v0, v4

    .line 605
    if-nez v2, :cond_4

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 607
    :goto_4
    return-object v0

    .line 597
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 600
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_2

    .line 605
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_4

    :cond_6
    move-object v2, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/b/a/a/l;->m:Lcom/b/a/a/g/c;

    const-class v1, Lcom/b/a/a/g/a/f;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/f;

    .line 550
    iget-object v1, p0, Lcom/b/a/a/l;->g:Lcom/b/a/a/g/g;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/g;->a(Lcom/b/a/a/g/b;)V

    .line 551
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/b/a/a/l;->k:Lcom/b/a/a/h/b;

    instance-of v0, v0, Lcom/b/a/a/h/a;

    return v0
.end method

.method b()I
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    invoke-interface {v0}, Lcom/b/a/a/m;->a()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    invoke-interface {v1}, Lcom/b/a/a/m;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/b/a/a/l;->p:Z

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/b/a/a/l;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/b/a/a/l;->b(I)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/b/a/a/l;->g:Lcom/b/a/a/g/g;

    new-instance v1, Lcom/b/a/a/l$1;

    invoke-direct {v1, p0}, Lcom/b/a/a/l$1;-><init>(Lcom/b/a/a/l;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/g;->a(Lcom/b/a/a/g/f;)V

    .line 269
    return-void
.end method
