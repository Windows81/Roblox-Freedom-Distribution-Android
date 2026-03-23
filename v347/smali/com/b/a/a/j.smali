.class public Lcom/b/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/j$1;,
        Lcom/b/a/a/j$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Long;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:J

.field protected g:J

.field protected h:J

.field protected i:J

.field protected j:J

.field transient k:Lcom/b/a/a/i;

.field protected final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;ILcom/b/a/a/i;JJJ)V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p4}, Lcom/b/a/a/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/j;->b:Ljava/lang/String;

    .line 80
    iput p1, p0, Lcom/b/a/a/j;->c:I

    .line 81
    iput-object p2, p0, Lcom/b/a/a/j;->d:Ljava/lang/String;

    .line 82
    iput p3, p0, Lcom/b/a/a/j;->e:I

    .line 83
    iput-wide p5, p0, Lcom/b/a/a/j;->g:J

    .line 84
    iput-wide p7, p0, Lcom/b/a/a/j;->f:J

    .line 85
    iput-object p4, p0, Lcom/b/a/a/j;->k:Lcom/b/a/a/i;

    .line 86
    iput p1, p4, Lcom/b/a/a/i;->a:I

    .line 87
    iput-wide p9, p0, Lcom/b/a/a/j;->h:J

    .line 88
    invoke-virtual {p4}, Lcom/b/a/a/i;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/j;->i:J

    .line 89
    invoke-virtual {p4}, Lcom/b/a/a/i;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/j;->j:J

    .line 90
    invoke-virtual {p4}, Lcom/b/a/a/i;->d()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/b/a/a/j;->l:Ljava/util/Set;

    .line 91
    return-void

    .line 90
    :cond_0
    invoke-virtual {p4}, Lcom/b/a/a/i;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(ILjava/lang/String;ILcom/b/a/a/i;JJJLcom/b/a/a/j$1;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p10}, Lcom/b/a/a/j;-><init>(ILjava/lang/String;ILcom/b/a/a/i;JJJ)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/b/a/a/j;->k:Lcom/b/a/a/i;

    invoke-virtual {v0, p0, p1}, Lcom/b/a/a/i;->a(Lcom/b/a/a/j;I)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/b/a/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/b/a/a/j;->k:Lcom/b/a/a/i;

    invoke-virtual {v0, p1}, Lcom/b/a/a/i;->a(Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method public a(J)Z
    .locals 3

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/b/a/a/j;->i:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/b/a/a/j;->i:J

    return-wide v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 141
    iput p1, p0, Lcom/b/a/a/j;->c:I

    .line 142
    iget-object v0, p0, Lcom/b/a/a/j;->k:Lcom/b/a/a/i;

    iget v1, p0, Lcom/b/a/a/j;->c:I

    iput v1, v0, Lcom/b/a/a/i;->a:I

    .line 143
    return-void
.end method

.method public b(J)Z
    .locals 3

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/b/a/a/j;->j:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/b/a/a/j;->j:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/b/a/a/j;->e:I

    .line 163
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 150
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/j;->a:Ljava/lang/Long;

    .line 151
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/b/a/a/j;->c:I

    return v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/b/a/a/j;->k:Lcom/b/a/a/i;

    invoke-virtual {v0, p1}, Lcom/b/a/a/i;->a(I)V

    .line 253
    return-void
.end method

.method public d(J)V
    .locals 1

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/b/a/a/j;->f:J

    .line 155
    return-void
.end method

.method public e()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/b/a/a/j;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public e(J)V
    .locals 1

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/b/a/a/j;->h:J

    .line 179
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 228
    instance-of v0, p1, Lcom/b/a/a/j;

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    .line 231
    :cond_0
    check-cast p1, Lcom/b/a/a/j;

    .line 232
    iget-object v0, p0, Lcom/b/a/a/j;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/b/a/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/b/a/a/j;->e:I

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/b/a/a/j;->g:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/b/a/a/j;->h:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/b/a/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/b/a/a/j;->f:J

    return-wide v0
.end method

.method public j()Lcom/b/a/a/i;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/b/a/a/j;->k:Lcom/b/a/a/i;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/b/a/a/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/Set;
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
    .line 199
    iget-object v0, p0, Lcom/b/a/a/j;->l:Ljava/util/Set;

    return-object v0
.end method

.method public m()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 203
    iput-boolean v1, p0, Lcom/b/a/a/j;->m:Z

    .line 204
    iget-object v0, p0, Lcom/b/a/a/j;->k:Lcom/b/a/a/i;

    iput-boolean v1, v0, Lcom/b/a/a/i;->b:Z

    .line 205
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/b/a/a/j;->m:Z

    return v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/j;->n:Z

    .line 213
    invoke-virtual {p0}, Lcom/b/a/a/j;->m()V

    .line 214
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/b/a/a/j;->n:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/b/a/a/j;->l:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/j;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized r()V
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/a/j;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s()Lcom/b/a/a/q;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/b/a/a/j;->k:Lcom/b/a/a/i;

    iget-object v0, v0, Lcom/b/a/a/i;->c:Lcom/b/a/a/q;

    return-object v0
.end method
