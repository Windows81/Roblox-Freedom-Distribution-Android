.class public abstract Lcom/google/c/b/x;
.super Lcom/google/c/b/v;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/b/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/v",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/google/c/b/v;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/google/c/b/h;

    invoke-direct {v0, p0}, Lcom/google/c/b/h;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/c/b/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 236
    instance-of v0, p0, Lcom/google/c/b/v;

    if-eqz v0, :cond_1

    .line 238
    check-cast p0, Lcom/google/c/b/v;

    invoke-virtual {p0}, Lcom/google/c/b/v;->e()Lcom/google/c/b/x;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/google/c/b/x;->t_()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/c/b/x;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/x;->a([Ljava/lang/Object;)Lcom/google/c/b/x;

    move-result-object v0

    .line 241
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/x;->b([Ljava/lang/Object;)Lcom/google/c/b/x;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Ljava/lang/Object;)Lcom/google/c/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 292
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/c/b/x;->b([Ljava/lang/Object;I)Lcom/google/c/b/x;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/google/c/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/google/c/b/c;->a:Lcom/google/c/b/x;

    return-object v0
.end method

.method private static varargs b([Ljava/lang/Object;)Lcom/google/c/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p0}, Lcom/google/c/b/ah;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/x;->a([Ljava/lang/Object;)Lcom/google/c/b/x;

    move-result-object v0

    return-object v0
.end method

.method static b([Ljava/lang/Object;I)Lcom/google/c/b/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 300
    packed-switch p1, :pswitch_data_0

    .line 308
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 309
    invoke-static {p0, p1}, Lcom/google/c/b/ah;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 311
    :cond_0
    new-instance v0, Lcom/google/c/b/c;

    invoke-direct {v0, p0}, Lcom/google/c/b/c;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 302
    :pswitch_0
    invoke-static {}, Lcom/google/c/b/x;->b()Lcom/google/c/b/x;

    move-result-object v0

    goto :goto_0

    .line 305
    :pswitch_1
    new-instance v0, Lcom/google/c/b/h;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/google/c/b/h;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 4

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/c/b/x;->size()I

    move-result v1

    .line 485
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 486
    add-int v2, p2, v0

    invoke-virtual {p0, v0}, Lcom/google/c/b/x;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_0
    add-int v0, p2, v1

    return v0
.end method

.method public a(I)Lcom/google/c/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/c/b/l",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Lcom/google/c/b/x$1;

    invoke-virtual {p0}, Lcom/google/c/b/x;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/c/b/x$1;-><init>(Lcom/google/c/b/x;II)V

    return-object v0
.end method

.method a(II)Lcom/google/c/b/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Lcom/google/c/b/x$a;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/c/b/x$a;-><init>(Lcom/google/c/b/x;II)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(II)Lcom/google/c/b/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/c/b/x;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/c/a/e;->a(III)V

    .line 365
    sub-int v0, p2, p1

    .line 366
    invoke-virtual {p0}, Lcom/google/c/b/x;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 375
    :goto_0
    return-object p0

    .line 369
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/google/c/b/x;->a(II)Lcom/google/c/b/x;

    move-result-object p0

    goto :goto_0

    .line 371
    :pswitch_0
    invoke-static {}, Lcom/google/c/b/x;->b()Lcom/google/c/b/x;

    move-result-object p0

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/c/b/x;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/b/x;->a(Ljava/lang/Object;)Lcom/google/c/b/x;

    move-result-object p0

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()Lcom/google/c/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/k",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/google/c/b/x;->d()Lcom/google/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/google/c/b/x;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/google/c/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/l",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/c/b/x;->a(I)Lcom/google/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/c/b/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 478
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 565
    invoke-static {p0, p1}, Lcom/google/c/b/af;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 570
    const/4 v1, 0x1

    .line 571
    invoke-virtual {p0}, Lcom/google/c/b/x;->size()I

    move-result v2

    .line 572
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 573
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/c/b/x;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 575
    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 341
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/c/b/af;->b(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/c/b/x;->c()Lcom/google/c/b/k;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 346
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/c/b/af;->c(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/c/b/x;->d()Lcom/google/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/c/b/x;->a(I)Lcom/google/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 468
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/c/b/x;->b(II)Lcom/google/c/b/x;

    move-result-object v0

    return-object v0
.end method
