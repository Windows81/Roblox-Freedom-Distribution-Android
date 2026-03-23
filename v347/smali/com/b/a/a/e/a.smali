.class public Lcom/b/a/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/m;


# instance fields
.field private final a:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/b/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/b/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/b/a/a/c/a;J)V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/b/a/a/e/a$1;

    invoke-direct {v1, p0}, Lcom/b/a/a/e/a$1;-><init>(Lcom/b/a/a/e/a;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e/a;->b:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/b/a/a/e/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/e/a;->d:Ljava/util/List;

    .line 70
    iput-wide p2, p0, Lcom/b/a/a/e/a;->e:J

    .line 71
    return-void
.end method

.method private static a(Lcom/b/a/a/j;ZZ)Ljava/lang/Long;
    .locals 10

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    const/4 v2, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/b/a/a/j;->b()J

    move-result-wide v4

    .line 147
    invoke-virtual {p0}, Lcom/b/a/a/j;->c()J

    move-result-wide v6

    .line 148
    invoke-virtual {p0}, Lcom/b/a/a/j;->i()J

    move-result-wide v0

    .line 150
    if-nez p1, :cond_1

    .line 151
    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    move-object v0, v2

    .line 162
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 156
    :cond_1
    if-nez p2, :cond_3

    .line 157
    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    move-object v0, v2

    .line 158
    goto :goto_0

    .line 160
    :cond_2
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 162
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/b/a/a/j;Lcom/b/a/a/e;)Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/b/a/a/e/a;->a(Lcom/b/a/a/j;Lcom/b/a/a/e;Z)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/b/a/a/j;Lcom/b/a/a/e;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 227
    if-nez p2, :cond_2

    .line 228
    invoke-virtual {p1}, Lcom/b/a/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/b/a/a/e;->i()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/b/a/a/j;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/a/e;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/b/a/a/e;->i()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/b/a/a/j;->b(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/a/e;->g()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/b/a/a/j;->i()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/b/a/a/e;->g()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 240
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/b/a/a/e;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    :cond_4
    invoke-virtual {p1}, Lcom/b/a/a/e;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/b/a/a/e;->c()Lcom/b/a/a/s;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/b/a/a/j;->l()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/b/a/a/e;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/b/a/a/e;->c()Lcom/b/a/a/s;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/a/e;->d()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lcom/b/a/a/j;->l()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/s;->a(Ljava/util/Collection;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/b/a/a/e;)I
    .locals 5

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Lcom/b/a/a/e/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 119
    iget-object v1, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 120
    invoke-virtual {v0}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v3

    .line 121
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/b/a/a/e/a;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {v0, p1}, Lcom/b/a/a/e/a;->a(Lcom/b/a/a/j;Lcom/b/a/a/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    if-eqz v3, :cond_1

    .line 124
    iget-object v0, p0, Lcom/b/a/a/e/a;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    move v1, v0

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/e/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    return v1
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/a/j;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/b/a/a/e/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    return-object v0
.end method

.method public a(Lcom/b/a/a/j;Lcom/b/a/a/j;)V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0, p2}, Lcom/b/a/a/e/a;->c(Lcom/b/a/a/j;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/b/a/a/e/a;->a(Lcom/b/a/a/j;)Z

    .line 102
    return-void
.end method

.method public a(Lcom/b/a/a/j;)Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/b/a/a/e/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/b/a/a/j;->c(J)V

    .line 75
    iget-object v0, p0, Lcom/b/a/a/e/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot add a job with the same id twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/e/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/b/a/a/e;)Lcom/b/a/a/j;
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 135
    invoke-static {v0, p1}, Lcom/b/a/a/e/a;->a(Lcom/b/a/a/j;Lcom/b/a/a/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lcom/b/a/a/e/a;->c(Lcom/b/a/a/j;)V

    .line 137
    invoke-virtual {v0}, Lcom/b/a/a/j;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/b/a/a/j;->c(I)V

    .line 138
    iget-wide v2, p0, Lcom/b/a/a/e/a;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/j;->e(J)V

    .line 142
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 198
    iget-object v0, p0, Lcom/b/a/a/e/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    return-void
.end method

.method public b(Lcom/b/a/a/j;)Z
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/b/a/a/j;->e()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/b/a/a/e/a;->a(Lcom/b/a/a/j;)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/e/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 90
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0, v0}, Lcom/b/a/a/e/a;->c(Lcom/b/a/a/j;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/e/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Lcom/b/a/a/e;)Ljava/lang/Long;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 167
    const/4 v3, 0x0

    .line 168
    invoke-virtual {p1}, Lcom/b/a/a/e;->a()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 169
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/a/e;->b()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v2

    .line 170
    :goto_1
    if-eqz v1, :cond_0

    if-nez v4, :cond_7

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 172
    invoke-static {v0, p1, v2}, Lcom/b/a/a/e/a;->a(Lcom/b/a/a/j;Lcom/b/a/a/e;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 173
    invoke-static {v0, v1, v4}, Lcom/b/a/a/e/a;->a(Lcom/b/a/a/j;ZZ)Ljava/lang/Long;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_1

    .line 177
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_a

    :cond_2
    :goto_3
    move-object v3, v0

    .line 181
    goto :goto_2

    :cond_3
    move v1, v0

    .line 168
    goto :goto_0

    :cond_4
    move v4, v0

    .line 169
    goto :goto_1

    :cond_5
    move-object v1, v3

    .line 192
    :cond_6
    return-object v1

    .line 183
    :cond_7
    iget-object v0, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v3

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 184
    invoke-static {v0, p1}, Lcom/b/a/a/e/a;->a(Lcom/b/a/a/j;Lcom/b/a/a/e;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 185
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/b/a/a/j;->i()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_9

    .line 186
    :cond_8
    invoke-virtual {v0}, Lcom/b/a/a/j;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_5
    move-object v1, v0

    .line 189
    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_5

    :cond_a
    move-object v0, v3

    goto :goto_3
.end method

.method public c(Lcom/b/a/a/j;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/b/a/a/e/a;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public d(Lcom/b/a/a/e;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/e;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/a/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 209
    iget-object v0, p0, Lcom/b/a/a/e/a;->a:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/j;

    .line 210
    invoke-static {v0, p1}, Lcom/b/a/a/e/a;->a(Lcom/b/a/a/j;Lcom/b/a/a/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_1
    return-object v1
.end method

.method public d(Lcom/b/a/a/j;)V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/b/a/a/e/a;->c(Lcom/b/a/a/j;)V

    .line 220
    return-void
.end method
