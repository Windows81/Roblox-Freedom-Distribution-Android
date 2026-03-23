.class public final Lcom/google/android/gms/internal/ads/ams;
.super Lcom/google/android/gms/internal/ads/aev;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/aev",
        "<",
        "Lcom/google/android/gms/internal/ads/ams;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lcom/google/android/gms/internal/ads/amv;

.field private c:Ljava/lang/Integer;

.field private d:Lcom/google/android/gms/internal/ads/amu;

.field private e:[Lcom/google/android/gms/internal/ads/amt;

.field private f:Lcom/google/android/gms/internal/ads/amw;

.field private g:Lcom/google/android/gms/internal/ads/anf;

.field private h:Lcom/google/android/gms/internal/ads/ane;

.field private i:Lcom/google/android/gms/internal/ads/anb;

.field private j:Lcom/google/android/gms/internal/ads/anc;

.field private k:[Lcom/google/android/gms/internal/ads/anl;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aev;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ams;->a:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ams;->c:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ams;->d:Lcom/google/android/gms/internal/ads/amu;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ams;->b:Lcom/google/android/gms/internal/ads/amv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/amt;->b()[Lcom/google/android/gms/internal/ads/amt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ams;->f:Lcom/google/android/gms/internal/ads/amw;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ams;->g:Lcom/google/android/gms/internal/ads/anf;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ams;->h:Lcom/google/android/gms/internal/ads/ane;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ams;->i:Lcom/google/android/gms/internal/ads/anb;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ams;->j:Lcom/google/android/gms/internal/ads/anc;

    invoke-static {}, Lcom/google/android/gms/internal/ads/anl;->b()[Lcom/google/android/gms/internal/ads/anl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ams;->Y:Lcom/google/android/gms/internal/ads/aex;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ams;->Z:I

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/aer;)Lcom/google/android/gms/internal/ads/ams;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->j()I

    move-result v2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->g()I

    move-result v3

    if-ltz v3, :cond_1

    const/16 v4, 0x9

    if-gt v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->a:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/aer;->e(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/aev;->a(Lcom/google/android/gms/internal/ads/aer;I)Z

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/16 v5, 0x2b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not a valid enum AdInitiater"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->j()I

    move-result v2

    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->g()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/amr;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->c:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/aer;->e(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/aev;->a(Lcom/google/android/gms/internal/ads/aer;I)Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->d:Lcom/google/android/gms/internal/ads/amu;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/amu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/amu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->d:Lcom/google/android/gms/internal/ads/amu;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->d:Lcom/google/android/gms/internal/ads/amu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->b:Lcom/google/android/gms/internal/ads/amv;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/amv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/amv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->b:Lcom/google/android/gms/internal/ads/amv;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->b:Lcom/google/android/gms/internal/ads/amv;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/aer;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/amt;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/ads/amt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/amt;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    array-length v0, v0

    goto :goto_1

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/ads/amt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/amt;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->f:Lcom/google/android/gms/internal/ads/amw;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/ads/amw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/amw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->f:Lcom/google/android/gms/internal/ads/amw;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->f:Lcom/google/android/gms/internal/ads/amw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->g:Lcom/google/android/gms/internal/ads/anf;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/anf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->g:Lcom/google/android/gms/internal/ads/anf;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->g:Lcom/google/android/gms/internal/ads/anf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->h:Lcom/google/android/gms/internal/ads/ane;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/ads/ane;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ane;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->h:Lcom/google/android/gms/internal/ads/ane;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->h:Lcom/google/android/gms/internal/ads/ane;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->i:Lcom/google/android/gms/internal/ads/anb;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/ads/anb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->i:Lcom/google/android/gms/internal/ads/anb;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->i:Lcom/google/android/gms/internal/ads/anb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->j:Lcom/google/android/gms/internal/ads/anc;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/anc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->j:Lcom/google/android/gms/internal/ads/anc;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->j:Lcom/google/android/gms/internal/ads/anc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x8a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/aer;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    if-nez v0, :cond_d

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/anl;

    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_e

    new-instance v3, Lcom/google/android/gms/internal/ads/anl;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/anl;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aer;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    array-length v0, v0

    goto :goto_3

    :cond_e
    new-instance v3, Lcom/google/android/gms/internal/ads/anl;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/anl;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/aer;->a(Lcom/google/android/gms/internal/ads/afb;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x38 -> :sswitch_1
        0x40 -> :sswitch_2
        0x4a -> :sswitch_3
        0x52 -> :sswitch_4
        0x5a -> :sswitch_5
        0x62 -> :sswitch_6
        0x6a -> :sswitch_7
        0x72 -> :sswitch_8
        0x7a -> :sswitch_9
        0x82 -> :sswitch_a
        0x8a -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method protected final a()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/aev;->a()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aet;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aet;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->d:Lcom/google/android/gms/internal/ads/amu;

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->d:Lcom/google/android/gms/internal/ads/amu;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->b:Lcom/google/android/gms/internal/ads/amv;

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->b:Lcom/google/android/gms/internal/ads/amv;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->f:Lcom/google/android/gms/internal/ads/amw;

    if-eqz v2, :cond_7

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->f:Lcom/google/android/gms/internal/ads/amw;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->g:Lcom/google/android/gms/internal/ads/anf;

    if-eqz v2, :cond_8

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->g:Lcom/google/android/gms/internal/ads/anf;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->h:Lcom/google/android/gms/internal/ads/ane;

    if-eqz v2, :cond_9

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->h:Lcom/google/android/gms/internal/ads/ane;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->i:Lcom/google/android/gms/internal/ads/anb;

    if-eqz v2, :cond_a

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->i:Lcom/google/android/gms/internal/ads/anb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->j:Lcom/google/android/gms/internal/ads/anc;

    if-eqz v2, :cond_b

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ams;->j:Lcom/google/android/gms/internal/ads/anc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    array-length v2, v2

    if-lez v2, :cond_d

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    aget-object v2, v2, v1

    if-eqz v2, :cond_c

    const/16 v3, 0x11

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/aet;->b(ILcom/google/android/gms/internal/ads/afb;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    return v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/aer;)Lcom/google/android/gms/internal/ads/afb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ams;->b(Lcom/google/android/gms/internal/ads/aer;)Lcom/google/android/gms/internal/ads/ams;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/aet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/aet;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/aet;->a(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->d:Lcom/google/android/gms/internal/ads/amu;

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->d:Lcom/google/android/gms/internal/ads/amu;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->b:Lcom/google/android/gms/internal/ads/amv;

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->b:Lcom/google/android/gms/internal/ads/amv;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->e:[Lcom/google/android/gms/internal/ads/amt;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->f:Lcom/google/android/gms/internal/ads/amw;

    if-eqz v0, :cond_6

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->f:Lcom/google/android/gms/internal/ads/amw;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->g:Lcom/google/android/gms/internal/ads/anf;

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->g:Lcom/google/android/gms/internal/ads/anf;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->h:Lcom/google/android/gms/internal/ads/ane;

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->h:Lcom/google/android/gms/internal/ads/ane;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->i:Lcom/google/android/gms/internal/ads/anb;

    if-eqz v0, :cond_9

    const/16 v0, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->i:Lcom/google/android/gms/internal/ads/anb;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->j:Lcom/google/android/gms/internal/ads/anc;

    if-eqz v0, :cond_a

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ams;->j:Lcom/google/android/gms/internal/ads/anc;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    array-length v0, v0

    if-lez v0, :cond_c

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    array-length v0, v0

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ams;->k:[Lcom/google/android/gms/internal/ads/anl;

    aget-object v0, v0, v1

    if-eqz v0, :cond_b

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/aet;->a(ILcom/google/android/gms/internal/ads/afb;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/aev;->a(Lcom/google/android/gms/internal/ads/aet;)V

    return-void
.end method
