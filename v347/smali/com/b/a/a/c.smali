.class Lcom/b/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/b/a/a/s;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/b/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/b/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/b/a/a/d$a;


# direct methods
.method constructor <init>(Lcom/b/a/a/s;[Ljava/lang/String;Lcom/b/a/a/d$a;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/s;

    .line 27
    iput-object p2, p0, Lcom/b/a/a/c;->c:[Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/Collection;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/c;->e:Ljava/util/Collection;

    .line 30
    iput-object p3, p0, Lcom/b/a/a/c;->f:Lcom/b/a/a/d$a;

    .line 31
    return-void
.end method


# virtual methods
.method a(Lcom/b/a/a/j;I)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/b/a/a/c;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c;->e:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(Lcom/b/a/a/l;)V
    .locals 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 61
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/b/a/a/j;->d(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    invoke-virtual {v0}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/a/i;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p1, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    invoke-interface {v2, v0}, Lcom/b/a/a/m;->c(Lcom/b/a/a/j;)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    const-string v3, "job\'s on cancel has thrown an exception. Ignoring..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c;->f:Lcom/b/a/a/d$a;

    if-eqz v0, :cond_4

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/b/a/a/c;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    iget-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 73
    invoke-virtual {v0}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/c;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 76
    invoke-virtual {v0}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 78
    :cond_3
    new-instance v0, Lcom/b/a/a/d;

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/d;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 79
    iget-object v1, p1, Lcom/b/a/a/l;->f:Lcom/b/a/a/b;

    iget-object v2, p0, Lcom/b/a/a/c;->f:Lcom/b/a/a/d$a;

    invoke-virtual {v1, v0, v2}, Lcom/b/a/a/b;->a(Lcom/b/a/a/d;Lcom/b/a/a/d$a;)V

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/b/a/a/c;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 82
    iget-object v2, p1, Lcom/b/a/a/l;->f:Lcom/b/a/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/b/a/a/b;->a(Lcom/b/a/a/i;Z)V

    goto :goto_4

    .line 84
    :cond_5
    return-void
.end method

.method a(Lcom/b/a/a/l;Lcom/b/a/a/f;)V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/s;

    iget-object v1, p0, Lcom/b/a/a/c;->c:[Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/b/a/a/f;->a(Lcom/b/a/a/s;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/c;->a:Ljava/util/Set;

    .line 35
    iget-object v0, p1, Lcom/b/a/a/l;->e:Lcom/b/a/a/e;

    .line 36
    invoke-virtual {v0}, Lcom/b/a/a/e;->j()V

    .line 37
    iget-object v1, p1, Lcom/b/a/a/l;->a:Lcom/b/a/a/k/b;

    invoke-interface {v1}, Lcom/b/a/a/k/b;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/e;->a(J)V

    .line 38
    iget-object v1, p0, Lcom/b/a/a/c;->b:Lcom/b/a/a/s;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->a(Lcom/b/a/a/s;)V

    .line 39
    iget-object v1, p0, Lcom/b/a/a/c;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->b(Ljava/util/Collection;)V

    .line 40
    iget-object v1, p0, Lcom/b/a/a/c;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->a([Ljava/lang/String;)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->c(Z)V

    .line 42
    iget-object v1, p1, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    invoke-interface {v1, v0}, Lcom/b/a/a/m;->d(Lcom/b/a/a/e;)Ljava/util/Set;

    move-result-object v1

    .line 44
    iget-object v2, p1, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    invoke-interface {v2, v0}, Lcom/b/a/a/m;->d(Lcom/b/a/a/e;)Ljava/util/Set;

    move-result-object v2

    .line 46
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 47
    invoke-virtual {v0}, Lcom/b/a/a/j;->m()V

    .line 48
    iget-object v3, p0, Lcom/b/a/a/c;->d:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v3, p1, Lcom/b/a/a/l;->c:Lcom/b/a/a/m;

    invoke-interface {v3, v0}, Lcom/b/a/a/m;->d(Lcom/b/a/a/j;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 52
    invoke-virtual {v0}, Lcom/b/a/a/j;->m()V

    .line 53
    iget-object v2, p0, Lcom/b/a/a/c;->d:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v2, p1, Lcom/b/a/a/l;->b:Lcom/b/a/a/m;

    invoke-interface {v2, v0}, Lcom/b/a/a/m;->d(Lcom/b/a/a/j;)V

    goto :goto_1

    .line 56
    :cond_1
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/b/a/a/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
