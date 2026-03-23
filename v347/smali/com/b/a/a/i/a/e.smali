.class Lcom/b/a/a/i/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/g",
            "<",
            "Ljava/lang/Long;",
            "Lcom/b/a/a/i/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/b/a/a/i/a/e$1;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/b/a/a/i/a/e$1;-><init>(Lcom/b/a/a/i/a/e;I)V

    iput-object v0, p0, Lcom/b/a/a/i/a/e;->a:Landroid/support/v4/g/g;

    .line 38
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/i/a/e;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private a(Lcom/b/a/a/e;Ljava/util/Collection;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/e;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p1}, Lcom/b/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    shl-int/lit8 v3, v0, 0x0

    invoke-virtual {p1}, Lcom/b/a/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/b/a/a/e;->c()Lcom/b/a/a/s;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    :goto_2
    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/b/a/a/e;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/b/a/a/e;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0xa

    or-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/b/a/a/e;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/b/a/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    shl-int/lit8 v0, v0, 0x16

    or-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/b/a/a/e;->g()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_4

    :goto_4
    shl-int/lit8 v1, v1, 0x17

    or-int/2addr v0, v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    .line 214
    return-wide v0

    :cond_0
    move v0, v2

    .line 205
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/b/a/a/e;->c()Lcom/b/a/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/s;->ordinal()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method private a(JLcom/b/a/a/e;Ljava/util/Collection;Ljava/lang/StringBuilder;)Lcom/b/a/a/i/a/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/b/a/a/e;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Lcom/b/a/a/i/a/d;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 94
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    const-string v2, "1"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p3}, Lcom/b/a/a/e;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 100
    const-string v2, " AND "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/b/a/a/i/a/a;->j:Lcom/b/a/a/i/a/b$c;

    iget-object v3, v3, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/4 v2, 0x1

    .line 107
    :goto_0
    invoke-virtual {p3}, Lcom/b/a/a/e;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 108
    const-string v1, " AND "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/b/a/a/i/a/a;->k:Lcom/b/a/a/i/a/b$c;

    iget-object v3, v3, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <= ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v1, v2, 0x1

    .line 115
    :goto_1
    invoke-virtual {p3}, Lcom/b/a/a/e;->g()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    const-string v3, " AND "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/i/a/a;->h:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v4, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 122
    :cond_0
    invoke-virtual {p3}, Lcom/b/a/a/e;->c()Lcom/b/a/a/s;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {p3}, Lcom/b/a/a/e;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 124
    const-string v3, " AND 0 "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1
    :goto_2
    invoke-virtual {p3}, Lcom/b/a/a/e;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 150
    const-string v3, " AND ("

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/i/a/a;->d:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v4, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NULL OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/i/a/a;->d:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v4, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p3}, Lcom/b/a/a/e;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p5, v3}, Lcom/b/a/a/i/a/b;->a(Ljava/lang/StringBuilder;I)V

    .line 158
    const-string v3, "))"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p3}, Lcom/b/a/a/e;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 161
    :cond_2
    invoke-virtual {p3}, Lcom/b/a/a/e;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 162
    const-string v3, " AND "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/i/a/a;->b:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v4, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p3}, Lcom/b/a/a/e;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p5, v3}, Lcom/b/a/a/i/a/b;->a(Ljava/lang/StringBuilder;I)V

    .line 168
    const-string v3, ")"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p3}, Lcom/b/a/a/e;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 171
    :cond_3
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 172
    const-string v3, " AND "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/i/a/a;->b:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v4, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {p5, v3}, Lcom/b/a/a/i/a/b;->a(Ljava/lang/StringBuilder;I)V

    .line 178
    const-string v3, ")"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 181
    :cond_4
    invoke-virtual {p3}, Lcom/b/a/a/e;->f()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 182
    const-string v3, " AND "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/i/a/a;->i:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v4, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v1, v1, 0x1

    .line 188
    :cond_5
    new-array v1, v1, [Ljava/lang/String;

    .line 189
    new-instance v3, Lcom/b/a/a/i/a/d;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4, v1}, Lcom/b/a/a/i/a/d;-><init>(JLjava/lang/String;[Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3, v0}, Lcom/b/a/a/i/a/d;->a(I)V

    .line 191
    invoke-virtual {v3, v2}, Lcom/b/a/a/i/a/d;->b(I)V

    .line 192
    return-object v3

    .line 126
    :cond_6
    const-string v3, " AND "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/i/a/a;->b:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v4, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ( SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/i/a/a;->m:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v4, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "job_holder_tags"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/i/a/a;->n:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v4, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p3}, Lcom/b/a/a/e;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {p5, v3}, Lcom/b/a/a/i/a/b;->a(Ljava/lang/StringBuilder;I)V

    .line 134
    const-string v3, ")"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p3}, Lcom/b/a/a/e;->c()Lcom/b/a/a/s;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/s;->b:Lcom/b/a/a/s;

    if-ne v3, v4, :cond_7

    .line 136
    const-string v3, ")"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_3
    invoke-virtual {p3}, Lcom/b/a/a/e;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto/16 :goto_2

    .line 137
    :cond_7
    invoke-virtual {p3}, Lcom/b/a/a/e;->c()Lcom/b/a/a/s;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/s;->a:Lcom/b/a/a/s;

    if-ne v3, v4, :cond_8

    .line 138
    const-string v3, " GROUP BY (`"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/b/a/a/i/a/a;->m:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v4, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "`)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " HAVING count(*) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/b/a/a/e;->d()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 144
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown constraint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v5, v1

    move v1, v2

    move v2, v5

    goto/16 :goto_1

    :cond_a
    move v2, v0

    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/b/a/a/e;Lcom/b/a/a/i/a/d;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/e;",
            "Lcom/b/a/a/i/a/d;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/b/a/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    iget-object v2, p2, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/b/a/a/e;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 63
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/a/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v2, p2, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Lcom/b/a/a/e;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    move v0, v1

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/a/e;->g()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v2, p2, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Lcom/b/a/a/e;->g()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    move v0, v1

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/a/e;->c()Lcom/b/a/a/s;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {p1}, Lcom/b/a/a/e;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    iget-object v4, p2, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    .line 72
    goto :goto_1

    :cond_2
    move v1, v0

    .line 74
    :cond_3
    invoke-virtual {p1}, Lcom/b/a/a/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    iget-object v4, p2, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-virtual {p1}, Lcom/b/a/a/e;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    iget-object v4, p2, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    .line 79
    goto :goto_3

    .line 80
    :cond_5
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    iget-object v4, p2, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    .line 82
    goto :goto_4

    .line 83
    :cond_6
    invoke-virtual {p1}, Lcom/b/a/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    iget-object v2, p2, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Lcom/b/a/a/i/a/e;->b:Ljava/lang/String;

    aput-object v3, v2, v1

    move v1, v0

    .line 86
    :cond_7
    iget-object v0, p2, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    array-length v0, v0

    if-eq v1, v0, :cond_8

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "something is wrong with where query cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/b/a/a/i/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_8
    return-void

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/b/a/a/e;)Z
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 196
    invoke-virtual {p1}, Lcom/b/a/a/e;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/b/a/a/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/b/a/a/e;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/b/a/a/e;Ljava/util/Collection;Ljava/lang/StringBuilder;)Lcom/b/a/a/i/a/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/e;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Lcom/b/a/a/i/a/d;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/b/a/a/i/a/e;->a(Lcom/b/a/a/e;)Z

    move-result v7

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/b/a/a/i/a/e;->a(Lcom/b/a/a/e;Ljava/util/Collection;)J

    move-result-wide v2

    .line 45
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/b/a/a/i/a/e;->a:Landroid/support/v4/g/g;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/g/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/i/a/d;

    .line 46
    :goto_0
    if-nez v0, :cond_0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/i/a/e;->a(JLcom/b/a/a/e;Ljava/util/Collection;Ljava/lang/StringBuilder;)Lcom/b/a/a/i/a/d;

    move-result-object v0

    .line 49
    if-eqz v7, :cond_0

    .line 50
    iget-object v1, p0, Lcom/b/a/a/i/a/e;->a:Landroid/support/v4/g/g;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/g/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/b/a/a/i/a/e;->a(Lcom/b/a/a/e;Lcom/b/a/a/i/a/d;Ljava/util/Collection;)V

    .line 54
    return-object v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
