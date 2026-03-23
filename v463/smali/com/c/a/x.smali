.class public Lcom/c/a/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Lcom/c/a/t;

.field private final c:Lcom/c/a/w$a;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/c/a/x;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/c/a/x;->f:Z

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/c/a/x;->b:Lcom/c/a/t;

    .line 80
    new-instance v1, Lcom/c/a/w$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v0}, Lcom/c/a/w$a;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lcom/c/a/x;->c:Lcom/c/a/w$a;

    return-void
.end method

.method constructor <init>(Lcom/c/a/t;Landroid/net/Uri;I)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/c/a/x;->f:Z

    .line 70
    iget-boolean v0, p1, Lcom/c/a/t;->m:Z

    if-nez v0, :cond_0

    .line 74
    iput-object p1, p0, Lcom/c/a/x;->b:Lcom/c/a/t;

    .line 75
    new-instance v0, Lcom/c/a/w$a;

    iget-object p1, p1, Lcom/c/a/t;->j:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lcom/c/a/w$a;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/c/a/x;->c:Lcom/c/a/w$a;

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(J)Lcom/c/a/w;
    .locals 7

    .line 684
    sget-object v0, Lcom/c/a/x;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/c/a/x;->c:Lcom/c/a/w$a;

    invoke-virtual {v1}, Lcom/c/a/w$a;->c()Lcom/c/a/w;

    move-result-object v1

    .line 687
    iput v0, v1, Lcom/c/a/w;->a:I

    .line 688
    iput-wide p1, v1, Lcom/c/a/w;->b:J

    .line 690
    iget-object v2, p0, Lcom/c/a/x;->b:Lcom/c/a/t;

    iget-boolean v2, v2, Lcom/c/a/t;->l:Z

    const-string v3, "Main"

    if-eqz v2, :cond_0

    .line 692
    invoke-virtual {v1}, Lcom/c/a/w;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/c/a/w;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "created"

    invoke-static {v3, v6, v4, v5}, Lcom/c/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    iget-object v4, p0, Lcom/c/a/x;->b:Lcom/c/a/t;

    invoke-virtual {v4, v1}, Lcom/c/a/t;->a(Lcom/c/a/w;)Lcom/c/a/w;

    move-result-object v4

    if-eq v4, v1, :cond_1

    .line 698
    iput v0, v4, Lcom/c/a/w;->a:I

    .line 699
    iput-wide p1, v4, Lcom/c/a/w;->b:J

    if-eqz v2, :cond_1

    .line 702
    invoke-virtual {v4}, Lcom/c/a/w;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "into "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "changed"

    invoke-static {v3, v0, p1, p2}, Lcom/c/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v4
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 675
    iget v0, p0, Lcom/c/a/x;->g:I

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/c/a/x;->b:Lcom/c/a/t;

    iget-object v0, v0, Lcom/c/a/t;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/c/a/x;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/c/a/x;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method a()Lcom/c/a/x;
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/c/a/x;->e:Z

    return-object p0
.end method

.method public a(I)Lcom/c/a/x;
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/c/a/x;->f:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/c/a/x;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 116
    iput p1, p0, Lcom/c/a/x;->g:I

    return-object p0

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Placeholder image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already explicitly declared as no placeholder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)Lcom/c/a/x;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/c/a/x;->c:Lcom/c/a/w$a;

    invoke-virtual {v0, p1, p2}, Lcom/c/a/w$a;->a(II)Lcom/c/a/w$a;

    return-object p0
.end method

.method public a(Lcom/c/a/ac;)Lcom/c/a/x;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/c/a/x;->c:Lcom/c/a/w$a;

    invoke-virtual {v0, p1}, Lcom/c/a/w$a;->a(Lcom/c/a/ac;)Lcom/c/a/w$a;

    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 601
    invoke-virtual {p0, p1, v0}, Lcom/c/a/x;->a(Landroid/widget/ImageView;Lcom/c/a/e;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcom/c/a/e;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    .line 614
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 615
    invoke-static {}, Lcom/c/a/ae;->a()V

    if-eqz v3, :cond_b

    .line 621
    iget-object v4, v0, Lcom/c/a/x;->c:Lcom/c/a/w$a;

    invoke-virtual {v4}, Lcom/c/a/w$a;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 622
    iget-object v1, v0, Lcom/c/a/x;->b:Lcom/c/a/t;

    invoke-virtual {v1, v3}, Lcom/c/a/t;->a(Landroid/widget/ImageView;)V

    .line 623
    iget-boolean v1, v0, Lcom/c/a/x;->f:Z

    if-eqz v1, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/c/a/x;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/c/a/u;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 629
    :cond_1
    iget-boolean v4, v0, Lcom/c/a/x;->e:Z

    if-eqz v4, :cond_6

    .line 630
    iget-object v4, v0, Lcom/c/a/x;->c:Lcom/c/a/w$a;

    invoke-virtual {v4}, Lcom/c/a/w$a;->b()Z

    move-result v4

    if-nez v4, :cond_5

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_0

    .line 642
    :cond_2
    iget-object v6, v0, Lcom/c/a/x;->c:Lcom/c/a/w$a;

    invoke-virtual {v6, v4, v5}, Lcom/c/a/w$a;->a(II)Lcom/c/a/w$a;

    goto :goto_1

    .line 636
    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcom/c/a/x;->f:Z

    if-eqz v1, :cond_4

    .line 637
    invoke-direct {p0}, Lcom/c/a/x;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/c/a/u;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 639
    :cond_4
    iget-object v1, v0, Lcom/c/a/x;->b:Lcom/c/a/t;

    new-instance v2, Lcom/c/a/h;

    invoke-direct {v2, p0, v3, v11}, Lcom/c/a/h;-><init>(Lcom/c/a/x;Landroid/widget/ImageView;Lcom/c/a/e;)V

    invoke-virtual {v1, v3, v2}, Lcom/c/a/t;->a(Landroid/widget/ImageView;Lcom/c/a/h;)V

    return-void

    .line 631
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    :cond_6
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/c/a/x;->a(J)Lcom/c/a/w;

    move-result-object v7

    .line 646
    invoke-static {v7}, Lcom/c/a/ae;->a(Lcom/c/a/w;)Ljava/lang/String;

    move-result-object v9

    .line 648
    iget v1, v0, Lcom/c/a/x;->i:I

    invoke-static {v1}, Lcom/c/a/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 649
    iget-object v1, v0, Lcom/c/a/x;->b:Lcom/c/a/t;

    invoke-virtual {v1, v9}, Lcom/c/a/t;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 651
    iget-object v1, v0, Lcom/c/a/x;->b:Lcom/c/a/t;

    invoke-virtual {v1, v3}, Lcom/c/a/t;->a(Landroid/widget/ImageView;)V

    .line 652
    iget-object v1, v0, Lcom/c/a/x;->b:Lcom/c/a/t;

    iget-object v2, v1, Lcom/c/a/t;->c:Landroid/content/Context;

    sget-object v5, Lcom/c/a/t$d;->a:Lcom/c/a/t$d;

    iget-boolean v6, v0, Lcom/c/a/x;->d:Z

    iget-object v1, v0, Lcom/c/a/x;->b:Lcom/c/a/t;

    iget-boolean v8, v1, Lcom/c/a/t;->k:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v8

    invoke-static/range {v1 .. v6}, Lcom/c/a/u;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/c/a/t$d;ZZ)V

    .line 653
    iget-object v1, v0, Lcom/c/a/x;->b:Lcom/c/a/t;

    iget-boolean v1, v1, Lcom/c/a/t;->l:Z

    if-eqz v1, :cond_7

    .line 654
    invoke-virtual {v7}, Lcom/c/a/w;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/c/a/t$d;->a:Lcom/c/a/t$d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lcom/c/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v11, :cond_8

    .line 657
    invoke-interface/range {p2 .. p2}, Lcom/c/a/e;->a()V

    :cond_8
    return-void

    .line 663
    :cond_9
    iget-boolean v1, v0, Lcom/c/a/x;->f:Z

    if-eqz v1, :cond_a

    .line 664
    invoke-direct {p0}, Lcom/c/a/x;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/c/a/u;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_a
    new-instance v13, Lcom/c/a/l;

    iget-object v2, v0, Lcom/c/a/x;->b:Lcom/c/a/t;

    iget v5, v0, Lcom/c/a/x;->i:I

    iget v6, v0, Lcom/c/a/x;->j:I

    iget v8, v0, Lcom/c/a/x;->h:I

    iget-object v10, v0, Lcom/c/a/x;->l:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/c/a/x;->m:Ljava/lang/Object;

    iget-boolean v14, v0, Lcom/c/a/x;->d:Z

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v12

    move-object/from16 v11, p2

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/c/a/l;-><init>(Lcom/c/a/t;Landroid/widget/ImageView;Lcom/c/a/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/c/a/e;Z)V

    .line 671
    iget-object v1, v0, Lcom/c/a/x;->b:Lcom/c/a/t;

    invoke-virtual {v1, v13}, Lcom/c/a/t;->a(Lcom/c/a/a;)V

    return-void

    .line 618
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
