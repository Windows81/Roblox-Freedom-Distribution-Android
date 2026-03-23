.class public final Lcom/google/android/gms/internal/ads/anl;
.super Lcom/google/android/gms/internal/ads/aev;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/aev",
        "<",
        "Lcom/google/android/gms/internal/ads/anl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:[Lcom/google/android/gms/internal/ads/anl;


# instance fields
.field private b:Lcom/google/android/gms/internal/ads/anp;

.field private c:Lcom/google/android/gms/internal/ads/ans;

.field private d:Lcom/google/android/gms/internal/ads/ant;

.field private e:Lcom/google/android/gms/internal/ads/anu;

.field private f:Lcom/google/android/gms/internal/ads/anm;

.field private g:Lcom/google/android/gms/internal/ads/anq;

.field private h:Lcom/google/android/gms/internal/ads/ano;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Lcom/google/android/gms/internal/ads/anj;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/Integer;

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Integer;

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aev;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->b:Lcom/google/android/gms/internal/ads/anp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->c:Lcom/google/android/gms/internal/ads/ans;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->d:Lcom/google/android/gms/internal/ads/ant;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->e:Lcom/google/android/gms/internal/ads/anu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->f:Lcom/google/android/gms/internal/ads/anm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->g:Lcom/google/android/gms/internal/ads/anq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->h:Lcom/google/android/gms/internal/ads/ano;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->k:Lcom/google/android/gms/internal/ads/anj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->l:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->m:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->n:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->o:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->p:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->q:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->Y:Lcom/google/android/gms/internal/ads/aex;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/anl;->Z:I

    return-void
.end method

.method public static b()[Lcom/google/android/gms/internal/ads/anl;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/anl;->a:[Lcom/google/android/gms/internal/ads/anl;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/aez;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/anl;->a:[Lcom/google/android/gms/internal/ads/anl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/anl;

    sput-object v0, Lcom/google/android/gms/internal/ads/anl;->a:[Lcom/google/android/gms/internal/ads/anl;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/anl;->a:[Lcom/google/android/gms/internal/ads/anl;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aev;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->b:Lcom/google/android/gms/internal/ads/anp;

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->b:Lcom/google/android/gms/internal/ads/anp;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->c:Lcom/google/android/gms/internal/ads/ans;

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->c:Lcom/google/android/gms/internal/ads/ans;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->d:Lcom/google/android/gms/internal/ads/ant;

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->d:Lcom/google/android/gms/internal/ads/ant;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->e:Lcom/google/android/gms/internal/ads/anu;

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->e:Lcom/google/android/gms/internal/ads/anu;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->f:Lcom/google/android/gms/internal/ads/anm;

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->f:Lcom/google/android/gms/internal/ads/anm;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->g:Lcom/google/android/gms/internal/ads/anq;

    if-eqz v1, :cond_5

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->g:Lcom/google/android/gms/internal/ads/anq;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->h:Lcom/google/android/gms/internal/ads/ano;

    if-eqz v1, :cond_6

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->h:Lcom/google/android/gms/internal/ads/ano;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->k:Lcom/google/android/gms/internal/ads/anj;

    if-eqz v1, :cond_9

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->k:Lcom/google/android/gms/internal/ads/anj;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->m:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->o:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->p:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/aet;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->q:Ljava/lang/Long;

    if-eqz v1, :cond_f

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/anl;->q:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/aet;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aer;)Lcom/google/android/gms/internal/ads/afb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/aev;->a(Lcom/google/android/gms/internal/ads/aer;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->b:Lcom/google/android/gms/internal/ads/anp;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/anp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->b:Lcom/google/android/gms/internal/ads/anp;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->b:Lcom/google/android/gms/internal/ads/anp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->c:Lcom/google/android/gms/internal/ads/ans;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/ans;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ans;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->c:Lcom/google/android/gms/internal/ads/ans;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->c:Lcom/google/android/gms/internal/ads/ans;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->d:Lcom/google/android/gms/internal/ads/ant;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/ant;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ant;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->d:Lcom/google/android/gms/internal/ads/ant;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->d:Lcom/google/android/gms/internal/ads/ant;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->e:Lcom/google/android/gms/internal/ads/anu;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ads/anu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->e:Lcom/google/android/gms/internal/ads/anu;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->e:Lcom/google/android/gms/internal/ads/anu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->f:Lcom/google/android/gms/internal/ads/anm;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/anm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->f:Lcom/google/android/gms/internal/ads/anm;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->f:Lcom/google/android/gms/internal/ads/anm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->g:Lcom/google/android/gms/internal/ads/anq;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/ads/anq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->g:Lcom/google/android/gms/internal/ads/anq;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->g:Lcom/google/android/gms/internal/ads/anq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->h:Lcom/google/android/gms/internal/ads/ano;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/ads/ano;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ano;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->h:Lcom/google/android/gms/internal/ads/ano;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->h:Lcom/google/android/gms/internal/ads/ano;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->j:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->k:Lcom/google/android/gms/internal/ads/anj;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/anj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->k:Lcom/google/android/gms/internal/ads/anj;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->k:Lcom/google/android/gms/internal/ads/anj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->n:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->o:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->p:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->q:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_1
        0x32 -> :sswitch_2
        0x3a -> :sswitch_3
        0x42 -> :sswitch_4
        0x4a -> :sswitch_5
        0x52 -> :sswitch_6
        0x5a -> :sswitch_7
        0x60 -> :sswitch_8
        0x68 -> :sswitch_9
        0x72 -> :sswitch_a
        0x78 -> :sswitch_b
        0x80 -> :sswitch_c
        0x88 -> :sswitch_d
        0x90 -> :sswitch_e
        0x98 -> :sswitch_f
        0xa0 -> :sswitch_10
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->b:Lcom/google/android/gms/internal/ads/anp;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->b:Lcom/google/android/gms/internal/ads/anp;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->c:Lcom/google/android/gms/internal/ads/ans;

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->c:Lcom/google/android/gms/internal/ads/ans;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->d:Lcom/google/android/gms/internal/ads/ant;

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->d:Lcom/google/android/gms/internal/ads/ant;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->e:Lcom/google/android/gms/internal/ads/anu;

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->e:Lcom/google/android/gms/internal/ads/anu;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->f:Lcom/google/android/gms/internal/ads/anm;

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->f:Lcom/google/android/gms/internal/ads/anm;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->g:Lcom/google/android/gms/internal/ads/anq;

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->g:Lcom/google/android/gms/internal/ads/anq;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->h:Lcom/google/android/gms/internal/ads/ano;

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->h:Lcom/google/android/gms/internal/ads/ano;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(II)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(II)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->k:Lcom/google/android/gms/internal/ads/anj;

    if-eqz v0, :cond_9

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->k:Lcom/google/android/gms/internal/ads/anj;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->m:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(II)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aet;->a(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anl;->q:Ljava/lang/Long;

    if-eqz v0, :cond_f

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anl;->q:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/aet;->a(IJ)V

    :cond_f
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aev;->a(Lcom/google/android/gms/internal/ads/aet;)V

    return-void
.end method
