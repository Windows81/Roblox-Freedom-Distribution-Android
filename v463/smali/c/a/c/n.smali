.class public final Lc/a/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 82
    iput-object v0, p0, Lc/a/c/n;->d:[I

    return-void
.end method


# virtual methods
.method a(III)Lc/a/c/n;
    .locals 3

    .line 90
    iget-object v0, p0, Lc/a/c/n;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 95
    iget v1, p0, Lc/a/c/n;->a:I

    or-int/2addr v1, v0

    iput v1, p0, Lc/a/c/n;->a:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 97
    iget v1, p0, Lc/a/c/n;->b:I

    or-int/2addr v1, v0

    iput v1, p0, Lc/a/c/n;->b:I

    goto :goto_0

    .line 99
    :cond_1
    iget v1, p0, Lc/a/c/n;->b:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lc/a/c/n;->b:I

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 102
    iget p2, p0, Lc/a/c/n;->c:I

    or-int/2addr p2, v0

    iput p2, p0, Lc/a/c/n;->c:I

    goto :goto_1

    .line 104
    :cond_2
    iget p2, p0, Lc/a/c/n;->c:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p2, v0

    iput p2, p0, Lc/a/c/n;->c:I

    .line 107
    :goto_1
    iget-object p2, p0, Lc/a/c/n;->d:[I

    aput p3, p2, p1

    return-object p0
.end method

.method a()V
    .locals 2

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lc/a/c/n;->c:I

    iput v0, p0, Lc/a/c/n;->b:I

    iput v0, p0, Lc/a/c/n;->a:I

    .line 86
    iget-object v1, p0, Lc/a/c/n;->d:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method a(Lc/a/c/n;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 235
    invoke-virtual {p1, v0}, Lc/a/c/n;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    invoke-virtual {p1, v0}, Lc/a/c/n;->c(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lc/a/c/n;->b(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lc/a/c/n;->a(III)Lc/a/c/n;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 114
    iget v1, p0, Lc/a/c/n;->a:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b()I
    .locals 1

    .line 132
    iget v0, p0, Lc/a/c/n;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method b(I)I
    .locals 1

    .line 119
    iget-object v0, p0, Lc/a/c/n;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method c()I
    .locals 2

    .line 144
    iget v0, p0, Lc/a/c/n;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/c/n;->d:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method c(I)I
    .locals 1

    .line 125
    invoke-virtual {p0, p1}, Lc/a/c/n;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-virtual {p0, p1}, Lc/a/c/n;->g(I)Z

    move-result p1

    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method d(I)I
    .locals 1

    .line 169
    iget v0, p0, Lc/a/c/n;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc/a/c/n;->d:[I

    const/4 v0, 0x4

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method e(I)I
    .locals 1

    .line 181
    iget v0, p0, Lc/a/c/n;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc/a/c/n;->d:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method f(I)I
    .locals 1

    .line 198
    iget v0, p0, Lc/a/c/n;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc/a/c/n;->d:[I

    const/4 v0, 0x7

    aget p1, p1, v0

    :cond_0
    return p1
.end method

.method g(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 220
    iget v1, p0, Lc/a/c/n;->b:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method h(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 226
    iget v1, p0, Lc/a/c/n;->c:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
