.class public final Lcom/google/android/gms/internal/measurement/jg;
.super Lcom/google/android/gms/internal/measurement/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/f<",
        "Lcom/google/android/gms/internal/measurement/jg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile K:[Lcom/google/android/gms/internal/measurement/jg;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/Boolean;

.field public C:[Lcom/google/android/gms/internal/measurement/jc;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/Integer;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/Long;

.field public H:Ljava/lang/Long;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/Integer;

.field private L:Ljava/lang/Integer;

.field private M:Ljava/lang/Integer;

.field private N:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:[Lcom/google/android/gms/internal/measurement/jd;

.field public e:[Lcom/google/android/gms/internal/measurement/ji;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Long;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/Long;

.field public t:Ljava/lang/Long;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/Boolean;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/Long;

.field public y:Ljava/lang/Integer;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->c:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/jd;->e()[Lcom/google/android/gms/internal/measurement/jd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ji;->e()[Lcom/google/android/gms/internal/measurement/ji;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->f:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->g:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->h:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->i:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->j:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->o:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->s:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->t:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->v:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->x:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->y:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->B:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/jc;->e()[Lcom/google/android/gms/internal/measurement/jc;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->E:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->L:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->M:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->F:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->G:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->H:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->J:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->a:Lcom/google/android/gms/internal/measurement/i;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/jg;->b:I

    return-void
.end method

.method public static e()[Lcom/google/android/gms/internal/measurement/jg;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/jg;->K:[Lcom/google/android/gms/internal/measurement/jg;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/measurement/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/jg;->K:[Lcom/google/android/gms/internal/measurement/jg;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/jg;

    sput-object v1, Lcom/google/android/gms/internal/measurement/jg;->K:[Lcom/google/android/gms/internal/measurement/jg;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/jg;->K:[Lcom/google/android/gms/internal/measurement/jg;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/f;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->c:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    array-length v5, v4

    if-ge v1, v5, :cond_2

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/d;->b(ILcom/google/android/gms/internal/measurement/m;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/measurement/d;->b(ILcom/google/android/gms/internal/measurement/m;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->f:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/d;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->g:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const/4 v4, 0x5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/d;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->h:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const/4 v4, 0x6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/d;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->j:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const/4 v4, 0x7

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/d;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->k:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->l:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/16 v4, 0x9

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->m:Ljava/lang/String;

    if-eqz v1, :cond_b

    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->n:Ljava/lang/String;

    if-eqz v1, :cond_c

    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v4, 0xc

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->p:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/16 v4, 0xd

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->q:Ljava/lang/String;

    if-eqz v1, :cond_f

    const/16 v4, 0xe

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->r:Ljava/lang/String;

    if-eqz v1, :cond_10

    const/16 v4, 0x10

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->s:Ljava/lang/Long;

    if-eqz v1, :cond_11

    const/16 v4, 0x11

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/d;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->t:Ljava/lang/Long;

    if-eqz v1, :cond_12

    const/16 v4, 0x12

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/d;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->u:Ljava/lang/String;

    if-eqz v1, :cond_13

    const/16 v4, 0x13

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->v:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    const/16 v4, 0x14

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/d;->b(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->w:Ljava/lang/String;

    if-eqz v1, :cond_15

    const/16 v4, 0x15

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->x:Ljava/lang/Long;

    if-eqz v1, :cond_16

    const/16 v4, 0x16

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/d;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->y:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    const/16 v4, 0x17

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->z:Ljava/lang/String;

    if-eqz v1, :cond_18

    const/16 v4, 0x18

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->A:Ljava/lang/String;

    if-eqz v1, :cond_19

    const/16 v4, 0x19

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->i:Ljava/lang/Long;

    if-eqz v1, :cond_1a

    const/16 v4, 0x1a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/d;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->B:Ljava/lang/Boolean;

    if-eqz v1, :cond_1b

    const/16 v4, 0x1c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/d;->b(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    if-eqz v1, :cond_1d

    array-length v1, v1

    if-lez v1, :cond_1d

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    array-length v2, v1

    if-ge v3, v2, :cond_1d

    aget-object v1, v1, v3

    if-eqz v1, :cond_1c

    const/16 v2, 0x1d

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILcom/google/android/gms/internal/measurement/m;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->D:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const/16 v2, 0x1e

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->E:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    const/16 v2, 0x1f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->L:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    const/16 v2, 0x20

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->M:Ljava/lang/Integer;

    if-eqz v1, :cond_21

    const/16 v2, 0x21

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->F:Ljava/lang/String;

    if-eqz v1, :cond_22

    const/16 v2, 0x22

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->G:Ljava/lang/Long;

    if-eqz v1, :cond_23

    const/16 v2, 0x23

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/d;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->H:Ljava/lang/Long;

    if-eqz v1, :cond_24

    const/16 v2, 0x24

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/d;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->I:Ljava/lang/String;

    if-eqz v1, :cond_25

    const/16 v2, 0x25

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_25
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->N:Ljava/lang/String;

    if-eqz v1, :cond_26

    const/16 v2, 0x26

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->J:Ljava/lang/Integer;

    if-eqz v1, :cond_27

    const/16 v2, 0x27

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/d;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_27
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/measurement/c;)Lcom/google/android/gms/internal/measurement/m;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->a()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/f;->a(Lcom/google/android/gms/internal/measurement/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->J:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->N:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->I:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->H:Ljava/lang/Long;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->G:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->F:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->M:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->L:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->E:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->D:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    const/16 v0, 0xea

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/p;->a(Lcom/google/android/gms/internal/measurement/c;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    new-array v3, v0, [Lcom/google/android/gms/internal/measurement/jc;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/measurement/jc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/jc;-><init>()V

    aput-object v1, v3, v2

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/c;->a(Lcom/google/android/gms/internal/measurement/m;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->a()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/measurement/jc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jc;-><init>()V

    aput-object v0, v3, v2

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/c;->a(Lcom/google/android/gms/internal/measurement/m;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->B:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->i:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->A:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->z:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->y:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->x:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->w:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->v:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->u:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->t:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->s:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->r:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->q:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->p:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->o:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->n:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->m:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->l:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->k:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->j:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->h:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->g:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->f:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_22
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/p;->a(Lcom/google/android/gms/internal/measurement/c;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    array-length v2, v2

    :goto_3
    add-int/2addr v0, v2

    new-array v3, v0, [Lcom/google/android/gms/internal/measurement/ji;

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/measurement/ji;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/ji;-><init>()V

    aput-object v1, v3, v2

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/c;->a(Lcom/google/android/gms/internal/measurement/m;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->a()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/ji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ji;-><init>()V

    aput-object v0, v3, v2

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/c;->a(Lcom/google/android/gms/internal/measurement/m;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    goto/16 :goto_0

    :sswitch_23
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/p;->a(Lcom/google/android/gms/internal/measurement/c;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    array-length v2, v2

    :goto_5
    add-int/2addr v0, v2

    new-array v3, v0, [Lcom/google/android/gms/internal/measurement/jd;

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_9

    new-instance v1, Lcom/google/android/gms/internal/measurement/jd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/jd;-><init>()V

    aput-object v1, v3, v2

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/c;->a(Lcom/google/android/gms/internal/measurement/m;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->a()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/measurement/jd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/jd;-><init>()V

    aput-object v0, v3, v2

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/c;->a(Lcom/google/android/gms/internal/measurement/m;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    goto/16 :goto_0

    :sswitch_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_25
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_25
        0x8 -> :sswitch_24
        0x12 -> :sswitch_23
        0x1a -> :sswitch_22
        0x20 -> :sswitch_21
        0x28 -> :sswitch_20
        0x30 -> :sswitch_1f
        0x38 -> :sswitch_1e
        0x42 -> :sswitch_1d
        0x4a -> :sswitch_1c
        0x52 -> :sswitch_1b
        0x5a -> :sswitch_1a
        0x60 -> :sswitch_19
        0x6a -> :sswitch_18
        0x72 -> :sswitch_17
        0x82 -> :sswitch_16
        0x88 -> :sswitch_15
        0x90 -> :sswitch_14
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_12
        0xaa -> :sswitch_11
        0xb0 -> :sswitch_10
        0xb8 -> :sswitch_f
        0xc2 -> :sswitch_e
        0xca -> :sswitch_d
        0xd0 -> :sswitch_c
        0xe0 -> :sswitch_b
        0xea -> :sswitch_a
        0xf2 -> :sswitch_9
        0xf8 -> :sswitch_8
        0x100 -> :sswitch_7
        0x108 -> :sswitch_6
        0x112 -> :sswitch_5
        0x118 -> :sswitch_4
        0x120 -> :sswitch_3
        0x12a -> :sswitch_2
        0x132 -> :sswitch_1
        0x138 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/d;->a(ILcom/google/android/gms/internal/measurement/m;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/measurement/d;->a(ILcom/google/android/gms/internal/measurement/m;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->f:Ljava/lang/Long;

    if-eqz v0, :cond_5

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/d;->b(IJ)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->g:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/d;->b(IJ)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->h:Ljava/lang/Long;

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/d;->b(IJ)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->j:Ljava/lang/Long;

    if-eqz v0, :cond_8

    const/4 v2, 0x7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/d;->b(IJ)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->k:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->l:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->m:Ljava/lang/String;

    if-eqz v0, :cond_b

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->n:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v2, 0xc

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(II)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->p:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->q:Ljava/lang/String;

    if-eqz v0, :cond_f

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->r:Ljava/lang/String;

    if-eqz v0, :cond_10

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->s:Ljava/lang/Long;

    if-eqz v0, :cond_11

    const/16 v2, 0x11

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/d;->b(IJ)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->t:Ljava/lang/Long;

    if-eqz v0, :cond_12

    const/16 v2, 0x12

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/d;->b(IJ)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->u:Ljava/lang/String;

    if-eqz v0, :cond_13

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    const/16 v2, 0x14

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(IZ)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->w:Ljava/lang/String;

    if-eqz v0, :cond_15

    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->x:Ljava/lang/Long;

    if-eqz v0, :cond_16

    const/16 v2, 0x16

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/d;->b(IJ)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    const/16 v2, 0x17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(II)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->z:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/16 v2, 0x18

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->A:Ljava/lang/String;

    if-eqz v0, :cond_19

    const/16 v2, 0x19

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->i:Ljava/lang/Long;

    if-eqz v0, :cond_1a

    const/16 v2, 0x1a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/d;->b(IJ)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_1b

    const/16 v2, 0x1c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(IZ)V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    if-eqz v0, :cond_1d

    array-length v0, v0

    if-lez v0, :cond_1d

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    array-length v2, v0

    if-ge v1, v2, :cond_1d

    aget-object v0, v0, v1

    if-eqz v0, :cond_1c

    const/16 v2, 0x1d

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILcom/google/android/gms/internal/measurement/m;)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->D:Ljava/lang/String;

    if-eqz v0, :cond_1e

    const/16 v1, 0x1e

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->E:Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    const/16 v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(II)V

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->L:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    const/16 v1, 0x20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(II)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->M:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    const/16 v1, 0x21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(II)V

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->F:Ljava/lang/String;

    if-eqz v0, :cond_22

    const/16 v1, 0x22

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->G:Ljava/lang/Long;

    if-eqz v0, :cond_23

    const/16 v1, 0x23

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/d;->b(IJ)V

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->H:Ljava/lang/Long;

    if-eqz v0, :cond_24

    const/16 v1, 0x24

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/d;->b(IJ)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->I:Ljava/lang/String;

    if-eqz v0, :cond_25

    const/16 v1, 0x25

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->N:Ljava/lang/String;

    if-eqz v0, :cond_26

    const/16 v1, 0x26

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(ILjava/lang/String;)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->J:Ljava/lang/Integer;

    if-eqz v0, :cond_27

    const/16 v1, 0x27

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/d;->a(II)V

    :cond_27
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/f;->a(Lcom/google/android/gms/internal/measurement/d;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/jg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/jg;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->c:Ljava/lang/Integer;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/k;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/k;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->f:Ljava/lang/Long;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->f:Ljava/lang/Long;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->f:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->g:Ljava/lang/Long;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->g:Ljava/lang/Long;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->g:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->h:Ljava/lang/Long;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->h:Ljava/lang/Long;

    if-eqz v1, :cond_b

    return v2

    :cond_a
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->h:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->i:Ljava/lang/Long;

    if-nez v1, :cond_c

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->i:Ljava/lang/Long;

    if-eqz v1, :cond_d

    return v2

    :cond_c
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->i:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->j:Ljava/lang/Long;

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->j:Ljava/lang/Long;

    if-eqz v1, :cond_f

    return v2

    :cond_e
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->j:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->k:Ljava/lang/String;

    if-nez v1, :cond_10

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->k:Ljava/lang/String;

    if-eqz v1, :cond_11

    return v2

    :cond_10
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->l:Ljava/lang/String;

    if-nez v1, :cond_12

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->l:Ljava/lang/String;

    if-eqz v1, :cond_13

    return v2

    :cond_12
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->m:Ljava/lang/String;

    if-nez v1, :cond_14

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->m:Ljava/lang/String;

    if-eqz v1, :cond_15

    return v2

    :cond_14
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->n:Ljava/lang/String;

    if-nez v1, :cond_16

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->n:Ljava/lang/String;

    if-eqz v1, :cond_17

    return v2

    :cond_16
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->o:Ljava/lang/Integer;

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_19

    return v2

    :cond_18
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->p:Ljava/lang/String;

    if-nez v1, :cond_1a

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->p:Ljava/lang/String;

    if-eqz v1, :cond_1b

    return v2

    :cond_1a
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->q:Ljava/lang/String;

    if-nez v1, :cond_1c

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->q:Ljava/lang/String;

    if-eqz v1, :cond_1d

    return v2

    :cond_1c
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->r:Ljava/lang/String;

    if-nez v1, :cond_1e

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->r:Ljava/lang/String;

    if-eqz v1, :cond_1f

    return v2

    :cond_1e
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->s:Ljava/lang/Long;

    if-nez v1, :cond_20

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->s:Ljava/lang/Long;

    if-eqz v1, :cond_21

    return v2

    :cond_20
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->s:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->t:Ljava/lang/Long;

    if-nez v1, :cond_22

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->t:Ljava/lang/Long;

    if-eqz v1, :cond_23

    return v2

    :cond_22
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->t:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->u:Ljava/lang/String;

    if-nez v1, :cond_24

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->u:Ljava/lang/String;

    if-eqz v1, :cond_25

    return v2

    :cond_24
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->u:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->v:Ljava/lang/Boolean;

    if-nez v1, :cond_26

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->v:Ljava/lang/Boolean;

    if-eqz v1, :cond_27

    return v2

    :cond_26
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->v:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->w:Ljava/lang/String;

    if-nez v1, :cond_28

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->w:Ljava/lang/String;

    if-eqz v1, :cond_29

    return v2

    :cond_28
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->w:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->x:Ljava/lang/Long;

    if-nez v1, :cond_2a

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->x:Ljava/lang/Long;

    if-eqz v1, :cond_2b

    return v2

    :cond_2a
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->x:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->y:Ljava/lang/Integer;

    if-nez v1, :cond_2c

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->y:Ljava/lang/Integer;

    if-eqz v1, :cond_2d

    return v2

    :cond_2c
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->y:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->z:Ljava/lang/String;

    if-nez v1, :cond_2e

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->z:Ljava/lang/String;

    if-eqz v1, :cond_2f

    return v2

    :cond_2e
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->A:Ljava/lang/String;

    if-nez v1, :cond_30

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->A:Ljava/lang/String;

    if-eqz v1, :cond_31

    return v2

    :cond_30
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->B:Ljava/lang/Boolean;

    if-nez v1, :cond_32

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->B:Ljava/lang/Boolean;

    if-eqz v1, :cond_33

    return v2

    :cond_32
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->B:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/k;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->D:Ljava/lang/String;

    if-nez v1, :cond_35

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->D:Ljava/lang/String;

    if-eqz v1, :cond_36

    return v2

    :cond_35
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->D:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->E:Ljava/lang/Integer;

    if-nez v1, :cond_37

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->E:Ljava/lang/Integer;

    if-eqz v1, :cond_38

    return v2

    :cond_37
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->E:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->L:Ljava/lang/Integer;

    if-nez v1, :cond_39

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->L:Ljava/lang/Integer;

    if-eqz v1, :cond_3a

    return v2

    :cond_39
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->L:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    return v2

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->M:Ljava/lang/Integer;

    if-nez v1, :cond_3b

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->M:Ljava/lang/Integer;

    if-eqz v1, :cond_3c

    return v2

    :cond_3b
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->M:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    return v2

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->F:Ljava/lang/String;

    if-nez v1, :cond_3d

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->F:Ljava/lang/String;

    if-eqz v1, :cond_3e

    return v2

    :cond_3d
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->F:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    return v2

    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->G:Ljava/lang/Long;

    if-nez v1, :cond_3f

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->G:Ljava/lang/Long;

    if-eqz v1, :cond_40

    return v2

    :cond_3f
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->G:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    return v2

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->H:Ljava/lang/Long;

    if-nez v1, :cond_41

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->H:Ljava/lang/Long;

    if-eqz v1, :cond_42

    return v2

    :cond_41
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->H:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->I:Ljava/lang/String;

    if-nez v1, :cond_43

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->I:Ljava/lang/String;

    if-eqz v1, :cond_44

    return v2

    :cond_43
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->I:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->N:Ljava/lang/String;

    if-nez v1, :cond_45

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->N:Ljava/lang/String;

    if-eqz v1, :cond_46

    return v2

    :cond_45
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->N:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->J:Ljava/lang/Integer;

    if-nez v1, :cond_47

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->J:Ljava/lang/Integer;

    if-eqz v1, :cond_48

    return v2

    :cond_47
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/jg;->J:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v2

    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->a:Lcom/google/android/gms/internal/measurement/i;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->a:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i;->b()Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_0

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/jg;->a:Lcom/google/android/gms/internal/measurement/i;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/jg;->a:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4a
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/jg;->a:Lcom/google/android/gms/internal/measurement/i;

    if-eqz v1, :cond_4c

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/jg;->a:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/i;->b()Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_1

    :cond_4b
    return v2

    :cond_4c
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->c:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->d:[Lcom/google/android/gms/internal/measurement/jd;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->e:[Lcom/google/android/gms/internal/measurement/ji;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->f:Ljava/lang/Long;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->g:Ljava/lang/Long;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->h:Ljava/lang/Long;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->i:Ljava/lang/Long;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->j:Ljava/lang/Long;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->k:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->l:Ljava/lang/String;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->m:Ljava/lang/String;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->n:Ljava/lang/String;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->o:Ljava/lang/Integer;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->p:Ljava/lang/String;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->q:Ljava/lang/String;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->r:Ljava/lang/String;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->s:Ljava/lang/Long;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->t:Ljava/lang/Long;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->u:Ljava/lang/String;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->v:Ljava/lang/Boolean;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_11

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->w:Ljava/lang/String;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_12

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->x:Ljava/lang/Long;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    goto :goto_13

    :cond_13
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->y:Ljava/lang/Integer;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_14

    :cond_14
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->z:Ljava/lang/String;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    goto :goto_15

    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->A:Ljava/lang/String;

    if-nez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_16

    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->B:Ljava/lang/Boolean;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_17

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->C:[Lcom/google/android/gms/internal/measurement/jc;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->D:Ljava/lang/String;

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_18

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->E:Ljava/lang/Integer;

    if-nez v1, :cond_19

    const/4 v1, 0x0

    goto :goto_19

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->L:Ljava/lang/Integer;

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1a

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->M:Ljava/lang/Integer;

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->F:Ljava/lang/String;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_1c

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->G:Ljava/lang/Long;

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_1d

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->H:Ljava/lang/Long;

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_1e

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->I:Ljava/lang/String;

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->N:Ljava/lang/String;

    if-nez v1, :cond_20

    const/4 v1, 0x0

    goto :goto_20

    :cond_20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->J:Ljava/lang/Integer;

    if-nez v1, :cond_21

    const/4 v1, 0x0

    goto :goto_21

    :cond_21
    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_21
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->a:Lcom/google/android/gms/internal/measurement/i;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->a:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i;->b()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_22

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/jg;->a:Lcom/google/android/gms/internal/measurement/i;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/i;->hashCode()I

    move-result v2

    :cond_23
    :goto_22
    add-int/2addr v0, v2

    return v0
.end method
