.class public Landroid/arch/b/b/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/b/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/support/v4/g/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/n",
            "<",
            "Landroid/support/v4/g/n",
            "<",
            "Landroid/arch/b/b/a/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    new-instance v0, Landroid/support/v4/g/n;

    invoke-direct {v0}, Landroid/support/v4/g/n;-><init>()V

    iput-object v0, p0, Landroid/arch/b/b/e$c;->a:Landroid/support/v4/g/n;

    return-void
.end method

.method private a(Ljava/util/List;ZII)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/arch/b/b/a/a;",
            ">;ZII)",
            "Ljava/util/List",
            "<",
            "Landroid/arch/b/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, -0x1

    .line 517
    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    move v8, p3

    .line 518
    :goto_1
    if-eqz p2, :cond_2

    if-ge v8, p4, :cond_0

    .line 519
    :goto_2
    iget-object v0, p0, Landroid/arch/b/b/e$c;->a:Landroid/support/v4/g/n;

    invoke-virtual {v0, v8}, Landroid/support/v4/g/n;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/n;

    .line 520
    if-nez v0, :cond_3

    move-object p1, v7

    .line 549
    :cond_0
    :goto_3
    return-object p1

    :cond_1
    move v1, v3

    .line 517
    goto :goto_0

    .line 518
    :cond_2
    if-le v8, p4, :cond_0

    goto :goto_2

    .line 524
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/g/n;->b()I

    move-result v4

    .line 528
    if-eqz p2, :cond_4

    .line 529
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    move v4, v2

    :goto_4
    move v9, v5

    .line 536
    :goto_5
    if-eq v9, v4, :cond_7

    .line 537
    invoke-virtual {v0, v9}, Landroid/support/v4/g/n;->d(I)I

    move-result v5

    .line 538
    if-gt v5, p4, :cond_5

    if-le v5, v8, :cond_5

    .line 539
    invoke-virtual {v0, v9}, Landroid/support/v4/g/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    move v4, v5

    .line 545
    :goto_6
    if-nez v0, :cond_6

    move-object p1, v7

    .line 546
    goto :goto_3

    :cond_4
    move v5, v6

    .line 533
    goto :goto_4

    .line 536
    :cond_5
    add-int v5, v9, v1

    move v9, v5

    goto :goto_5

    :cond_6
    move v8, v4

    .line 548
    goto :goto_1

    :cond_7
    move v0, v6

    move v4, v8

    goto :goto_6
.end method


# virtual methods
.method public a(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/arch/b/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    if-ne p1, p2, :cond_0

    .line 508
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    .line 510
    :cond_0
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 511
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    invoke-direct {p0, v1, v0, p1, p2}, Landroid/arch/b/b/e$c;->a(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 510
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
