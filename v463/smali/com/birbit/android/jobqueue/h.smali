.class public Lcom/birbit/android/jobqueue/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/birbit/android/jobqueue/h$a;
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

.field transient k:Lcom/birbit/android/jobqueue/g;

.field protected final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;ILcom/birbit/android/jobqueue/g;JJJ)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p4}, Lcom/birbit/android/jobqueue/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/birbit/android/jobqueue/h;->b:Ljava/lang/String;

    .line 80
    iput p1, p0, Lcom/birbit/android/jobqueue/h;->c:I

    .line 81
    iput-object p2, p0, Lcom/birbit/android/jobqueue/h;->d:Ljava/lang/String;

    .line 82
    iput p3, p0, Lcom/birbit/android/jobqueue/h;->e:I

    .line 83
    iput-wide p5, p0, Lcom/birbit/android/jobqueue/h;->g:J

    .line 84
    iput-wide p7, p0, Lcom/birbit/android/jobqueue/h;->f:J

    .line 85
    iput-object p4, p0, Lcom/birbit/android/jobqueue/h;->k:Lcom/birbit/android/jobqueue/g;

    .line 86
    iput p1, p4, Lcom/birbit/android/jobqueue/g;->a:I

    .line 87
    iput-wide p9, p0, Lcom/birbit/android/jobqueue/h;->h:J

    .line 88
    invoke-virtual {p4}, Lcom/birbit/android/jobqueue/g;->i()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/birbit/android/jobqueue/h;->i:J

    .line 89
    invoke-virtual {p4}, Lcom/birbit/android/jobqueue/g;->h()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/birbit/android/jobqueue/h;->j:J

    .line 90
    invoke-virtual {p4}, Lcom/birbit/android/jobqueue/g;->d()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/birbit/android/jobqueue/g;->d()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/birbit/android/jobqueue/h;->l:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;ILcom/birbit/android/jobqueue/g;JJJLcom/birbit/android/jobqueue/h$1;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p10}, Lcom/birbit/android/jobqueue/h;-><init>(ILjava/lang/String;ILcom/birbit/android/jobqueue/g;JJJ)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->k:Lcom/birbit/android/jobqueue/g;

    invoke-virtual {v0, p0, p1}, Lcom/birbit/android/jobqueue/g;->a(Lcom/birbit/android/jobqueue/h;I)I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->k:Lcom/birbit/android/jobqueue/g;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/g;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(J)Z
    .locals 3

    .line 114
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/h;->i:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/h;->i:J

    return-wide v0
.end method

.method public b(I)V
    .locals 1

    .line 141
    iput p1, p0, Lcom/birbit/android/jobqueue/h;->c:I

    .line 142
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->k:Lcom/birbit/android/jobqueue/g;

    iput p1, v0, Lcom/birbit/android/jobqueue/g;->a:I

    return-void
.end method

.method public b(J)Z
    .locals 3

    .line 129
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/h;->j:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/h;->j:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/birbit/android/jobqueue/h;->e:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 150
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/birbit/android/jobqueue/h;->a:Ljava/lang/Long;

    return-void
.end method

.method public d()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/birbit/android/jobqueue/h;->c:I

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->k:Lcom/birbit/android/jobqueue/g;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/g;->a(I)V

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 154
    iput-wide p1, p0, Lcom/birbit/android/jobqueue/h;->f:J

    return-void
.end method

.method public e()Ljava/lang/Long;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public e(J)V
    .locals 0

    .line 178
    iput-wide p1, p0, Lcom/birbit/android/jobqueue/h;->h:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 228
    instance-of v0, p1, Lcom/birbit/android/jobqueue/h;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 231
    :cond_0
    check-cast p1, Lcom/birbit/android/jobqueue/h;

    .line 232
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/birbit/android/jobqueue/h;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/birbit/android/jobqueue/h;->e:I

    return v0
.end method

.method public g()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/h;->g:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/h;->h:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/h;->f:J

    return-wide v0
.end method

.method public j()Lcom/birbit/android/jobqueue/g;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->k:Lcom/birbit/android/jobqueue/g;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->l:Ljava/util/Set;

    return-object v0
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/h;->m:Z

    .line 204
    iget-object v1, p0, Lcom/birbit/android/jobqueue/h;->k:Lcom/birbit/android/jobqueue/g;

    iput-boolean v0, v1, Lcom/birbit/android/jobqueue/g;->b:Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/h;->m:Z

    return v0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/h;->n:Z

    .line 213
    invoke-virtual {p0}, Lcom/birbit/android/jobqueue/h;->m()V

    return-void
.end method

.method public p()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/h;->n:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->l:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized r()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 240
    :try_start_0
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/h;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s()Lcom/birbit/android/jobqueue/m;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h;->k:Lcom/birbit/android/jobqueue/g;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/g;->c:Lcom/birbit/android/jobqueue/m;

    return-object v0
.end method
