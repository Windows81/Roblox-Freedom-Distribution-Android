.class public Lcom/birbit/android/jobqueue/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/birbit/android/jobqueue/o;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/Long;

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/d;->d:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/d;->e:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/d;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 167
    :goto_0
    invoke-virtual {p0, v2}, Lcom/birbit/android/jobqueue/d;->a(Z)V

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v0, 0x1

    .line 168
    :cond_1
    invoke-virtual {p0, v0}, Lcom/birbit/android/jobqueue/d;->b(Z)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 129
    iput-wide p1, p0, Lcom/birbit/android/jobqueue/d;->i:J

    return-void
.end method

.method a(Lcom/birbit/android/jobqueue/o;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/birbit/android/jobqueue/d;->c:Lcom/birbit/android/jobqueue/o;

    return-void
.end method

.method a(Ljava/lang/Long;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/birbit/android/jobqueue/d;->h:Ljava/lang/Long;

    return-void
.end method

.method a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/birbit/android/jobqueue/d;->a:Z

    return-void
.end method

.method a([Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->d:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/d;->a:Z

    return v0
.end method

.method b(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/birbit/android/jobqueue/d;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/d;->b:Z

    return v0
.end method

.method public c()Lcom/birbit/android/jobqueue/o;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->c:Lcom/birbit/android/jobqueue/o;

    return-object v0
.end method

.method c(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/birbit/android/jobqueue/d;->g:Z

    return-void
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->d:Ljava/util/Set;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/d;->g:Z

    return v0
.end method

.method public g()Ljava/lang/Long;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/birbit/android/jobqueue/d;->f:Ljava/util/List;

    return-object v0
.end method

.method public i()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/d;->i:J

    return-wide v0
.end method

.method j()V
    .locals 3

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/d;->a:Z

    .line 156
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/d;->b:Z

    const/4 v1, 0x0

    .line 157
    iput-object v1, p0, Lcom/birbit/android/jobqueue/d;->c:Lcom/birbit/android/jobqueue/o;

    .line 158
    iget-object v2, p0, Lcom/birbit/android/jobqueue/d;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 159
    iget-object v2, p0, Lcom/birbit/android/jobqueue/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 160
    iget-object v2, p0, Lcom/birbit/android/jobqueue/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 161
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/d;->g:Z

    .line 162
    iput-object v1, p0, Lcom/birbit/android/jobqueue/d;->h:Ljava/lang/Long;

    const-wide/high16 v0, -0x8000000000000000L

    .line 163
    iput-wide v0, p0, Lcom/birbit/android/jobqueue/d;->i:J

    return-void
.end method
