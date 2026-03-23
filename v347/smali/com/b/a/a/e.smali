.class public Lcom/b/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/b/a/a/s;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e;->d:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e;->e:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 167
    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/b/a/a/e;->a(Z)V

    .line 168
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/b/a/a/e;->b(Z)V

    .line 169
    return-void

    :cond_0
    move v0, v2

    .line 167
    goto :goto_0

    :cond_1
    move v1, v2

    .line 168
    goto :goto_1
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/b/a/a/e;->i:J

    .line 130
    return-void
.end method

.method a(Lcom/b/a/a/s;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/b/a/a/e;->c:Lcom/b/a/a/s;

    .line 115
    return-void
.end method

.method a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/b/a/a/e;->h:Ljava/lang/Long;

    .line 152
    return-void
.end method

.method a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/b/a/a/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/b/a/a/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/b/a/a/e;->a:Z

    .line 107
    return-void
.end method

.method a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/b/a/a/e;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/b/a/a/e;->d:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 126
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/b/a/a/e;->a:Z

    return v0
.end method

.method b(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/b/a/a/e;->b:Z

    .line 111
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/b/a/a/e;->b:Z

    return v0
.end method

.method public c()Lcom/b/a/a/s;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/b/a/a/e;->c:Lcom/b/a/a/s;

    return-object v0
.end method

.method c(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/b/a/a/e;->g:Z

    .line 119
    return-void
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/b/a/a/e;->d:Ljava/util/Set;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/b/a/a/e;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/b/a/a/e;->g:Z

    return v0
.end method

.method public g()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/b/a/a/e;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/b/a/a/e;->f:Ljava/util/List;

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/b/a/a/e;->i:J

    return-wide v0
.end method

.method j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 155
    iput-boolean v1, p0, Lcom/b/a/a/e;->a:Z

    .line 156
    iput-boolean v1, p0, Lcom/b/a/a/e;->b:Z

    .line 157
    iput-object v2, p0, Lcom/b/a/a/e;->c:Lcom/b/a/a/s;

    .line 158
    iget-object v0, p0, Lcom/b/a/a/e;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 159
    iget-object v0, p0, Lcom/b/a/a/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    iget-object v0, p0, Lcom/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iput-boolean v1, p0, Lcom/b/a/a/e;->g:Z

    .line 162
    iput-object v2, p0, Lcom/b/a/a/e;->h:Ljava/lang/Long;

    .line 163
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/b/a/a/e;->i:J

    .line 164
    return-void
.end method
