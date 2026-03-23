.class Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/e<",
            "Ljava/lang/Long;",
            "Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d$1;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d$1;-><init>(Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;I)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;->a:Landroidx/c/e;

    .line 38
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/d;Ljava/util/Collection;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/birbit/android/jobqueue/d;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    shl-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->b()Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->c()Lcom/birbit/android/jobqueue/o;

    move-result-object v2

    const/4 v4, 0x2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->c()Lcom/birbit/android/jobqueue/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/birbit/android/jobqueue/o;->ordinal()I

    move-result v2

    :goto_0
    shl-int/2addr v2, v4

    or-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->d()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    or-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->f()Z

    move-result v2

    shl-int/lit8 v2, v2, 0x16

    or-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->g()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    shl-int/lit8 p1, v1, 0x17

    or-int/2addr p1, v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    or-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1
.end method

.method private a(JLcom/birbit/android/jobqueue/d;Ljava/util/Collection;Ljava/lang/StringBuilder;)Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/birbit/android/jobqueue/d;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "1"

    .line 96
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->a()Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, " <= ?"

    const-string v4, " AND "

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->j:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v1, v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 107
    :goto_0
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->k:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    move v7, v2

    move v2, v0

    move v0, v7

    .line 115
    :cond_1
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->g()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 116
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v5, v5, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    .line 122
    :cond_2
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->c()Lcom/birbit/android/jobqueue/o;

    move-result-object v3

    const-string v5, ")"

    if-eqz v3, :cond_6

    .line 123
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " AND 0 "

    .line 124
    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 126
    :cond_3
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v3, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IN ( SELECT "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->m:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v3, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "job_holder_tags"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->n:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v3, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IN ("

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {p5, v3}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->a(Ljava/lang/StringBuilder;I)V

    .line 134
    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->c()Lcom/birbit/android/jobqueue/o;

    move-result-object v3

    sget-object v6, Lcom/birbit/android/jobqueue/o;->b:Lcom/birbit/android/jobqueue/o;

    if-ne v3, v6, :cond_4

    .line 136
    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->c()Lcom/birbit/android/jobqueue/o;

    move-result-object v3

    sget-object v6, Lcom/birbit/android/jobqueue/o;->a:Lcom/birbit/android/jobqueue/o;

    if-ne v3, v6, :cond_5

    const-string v3, " GROUP BY (`"

    .line 138
    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->m:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v3, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`)"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " HAVING count(*) = "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_1
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_2

    .line 144
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unknown constraint "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_6
    :goto_2
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v6, " NOT IN("

    if-nez v3, :cond_7

    const-string v3, " AND ("

    .line 150
    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v3, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IS NULL OR "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v3, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p5, v3}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "))"

    .line 158
    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 161
    :cond_7
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 162
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v3, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p5, v3}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->a(Ljava/lang/StringBuilder;I)V

    .line 168
    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 171
    :cond_8
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 172
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v3, v3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {p5, v3}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->a(Ljava/lang/StringBuilder;I)V

    .line 178
    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    add-int/2addr v0, p4

    .line 181
    :cond_9
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/d;->f()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 182
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object p3, p3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " != ?"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    .line 188
    :cond_a
    new-array p3, v0, [Ljava/lang/String;

    .line 189
    new-instance p4, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p1, p2, p5, p3}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;-><init>(JLjava/lang/String;[Ljava/lang/String;)V

    .line 190
    invoke-virtual {p4, v1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->a(I)V

    .line 191
    invoke-virtual {p4, v2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->b(I)V

    return-object p4
.end method

.method private a(Lcom/birbit/android/jobqueue/d;Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/birbit/android/jobqueue/d;",
            "Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->g()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->g()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    .line 69
    :cond_2
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->c()Lcom/birbit/android/jobqueue/o;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    iget-object v3, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aput-object v2, v3, v1

    move v1, v4

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    iget-object v3, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aput-object v2, v3, v1

    move v1, v4

    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    iget-object v3, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aput-object v2, v3, v1

    move v1, v4

    goto :goto_2

    .line 80
    :cond_5
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    iget-object v2, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aput-object v0, v2, v1

    move v1, v3

    goto :goto_3

    .line 83
    :cond_6
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->f()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 84
    iget-object p1, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    add-int/lit8 p3, v1, 0x1

    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;->b:Ljava/lang/String;

    aput-object v0, p1, v1

    move v1, p3

    .line 86
    :cond_7
    iget-object p1, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    array-length p1, p1

    if-ne v1, p1, :cond_8

    return-void

    .line 87
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "something is wrong with where query cache for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->b:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private a(Lcom/birbit/android/jobqueue/d;)Z
    .locals 2

    .line 196
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lcom/birbit/android/jobqueue/d;Ljava/util/Collection;Ljava/lang/StringBuilder;)Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/birbit/android/jobqueue/d;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;->a(Lcom/birbit/android/jobqueue/d;)Z

    move-result v0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;->a(Lcom/birbit/android/jobqueue/d;Ljava/util/Collection;)J

    move-result-wide v7

    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;->a:Landroidx/c/e;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/c/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    move-object v1, p0

    move-wide v2, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;->a(JLcom/birbit/android/jobqueue/d;Ljava/util/Collection;Ljava/lang/StringBuilder;)Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 50
    iget-object p3, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;->a:Landroidx/c/e;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroidx/c/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;->a(Lcom/birbit/android/jobqueue/d;Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;Ljava/util/Collection;)V

    return-object v1
.end method
