.class final Lcom/google/android/gms/internal/measurement/ct;
.super Ljava/lang/Object;


# instance fields
.field private A:J

.field private B:J

.field private final a:Lcom/google/android/gms/internal/measurement/fc;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Z

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/fc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ct;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->p:J

    return-wide v0
.end method

.method public final B()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->q:Z

    return v0
.end method

.method public final C()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->r:Z

    return v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    return-void
.end method

.method public final a(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->h:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->h:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ct;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/iq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ct;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/ct;->o:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ct;->o:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->i:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->i:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ct;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/iq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ct;->d:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->q:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ct;->q:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->k:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->k:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ct;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/iq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ct;->e:Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->r:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ct;->r:Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->m:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->m:J

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ct;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/iq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ct;->f:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->n:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->n:J

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ct;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/iq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ct;->j:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f(J)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/aa;->b(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/ct;->g:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->g:J

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ct;->l:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/iq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ct;->l:Ljava/lang/String;

    return-void
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->h:J

    return-wide v0
.end method

.method public final g(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->A:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->A:J

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ct;->y:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/measurement/iq;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ct;->y:Ljava/lang/String;

    return-void
.end method

.method public final h()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->i:J

    return-wide v0
.end method

.method public final h(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->B:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->B:J

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final i(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->s:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->s:J

    return-void
.end method

.method public final j()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->k:J

    return-wide v0
.end method

.method public final j(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->t:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->t:J

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final k(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->u:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->u:J

    return-void
.end method

.method public final l()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->m:J

    return-wide v0
.end method

.method public final l(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->v:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->v:J

    return-void
.end method

.method public final m()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->n:J

    return-wide v0
.end method

.method public final m(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->x:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->x:J

    return-void
.end method

.method public final n(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->w:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->w:J

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->o:Z

    return v0
.end method

.method public final o()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->g:J

    return-wide v0
.end method

.method public final o(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/ct;->p:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ct;->p:J

    return-void
.end method

.method public final p()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->A:J

    return-wide v0
.end method

.method public final q()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->B:J

    return-wide v0
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->q()Lcom/google/android/gms/internal/measurement/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/dx;->y()Lcom/google/android/gms/internal/measurement/dz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ct;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/dx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bundle index overflow. appId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/dz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/ct;->z:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->g:J

    return-void
.end method

.method public final s()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->s:J

    return-wide v0
.end method

.method public final t()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->t:J

    return-wide v0
.end method

.method public final u()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->u:J

    return-wide v0
.end method

.method public final v()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->v:J

    return-wide v0
.end method

.method public final w()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->x:J

    return-wide v0
.end method

.method public final x()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ct;->w:J

    return-wide v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/fc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ii;->w()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ct;->y:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ct;->g(Ljava/lang/String;)V

    return-object v0
.end method
