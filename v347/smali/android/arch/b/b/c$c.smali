.class Landroid/arch/b/b/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:[I

.field final b:Landroid/arch/b/b/c$b;

.field private final c:[Ljava/lang/String;

.field private final d:[J

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method a([J)V
    .locals 9

    .prologue
    .line 469
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Landroid/arch/b/b/c$c;->a:[I

    array-length v2, v0

    .line 471
    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_0
    if-ge v1, v2, :cond_3

    .line 472
    iget-object v3, p0, Landroid/arch/b/b/c$c;->a:[I

    aget v3, v3, v1

    .line 473
    aget-wide v4, p1, v3

    .line 474
    iget-object v3, p0, Landroid/arch/b/b/c$c;->d:[J

    aget-wide v6, v3, v1

    .line 475
    cmp-long v3, v6, v4

    if-gez v3, :cond_0

    .line 476
    iget-object v3, p0, Landroid/arch/b/b/c$c;->d:[J

    aput-wide v4, v3, v1

    .line 477
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 479
    iget-object v0, p0, Landroid/arch/b/b/c$c;->e:Ljava/util/Set;

    .line 471
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_1
    if-nez v0, :cond_2

    .line 482
    new-instance v0, Landroid/support/v4/g/b;

    invoke-direct {v0, v2}, Landroid/support/v4/g/b;-><init>(I)V

    .line 484
    :cond_2
    iget-object v3, p0, Landroid/arch/b/b/c$c;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 488
    :cond_3
    if-eqz v0, :cond_4

    .line 489
    iget-object v1, p0, Landroid/arch/b/b/c$c;->b:Landroid/arch/b/b/c$b;

    invoke-virtual {v1, v0}, Landroid/arch/b/b/c$b;->a(Ljava/util/Set;)V

    .line 491
    :cond_4
    return-void
.end method
