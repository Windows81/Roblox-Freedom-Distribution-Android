.class final Lcom/google/c/b/e;
.super Lcom/google/c/b/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/ad",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/c/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/e",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient b:[Ljava/lang/Object;

.field private final transient c:[Ljava/lang/Object;

.field private final transient d:I

.field private final transient e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/google/c/b/e;

    sget-object v1, Lcom/google/c/b/ah;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/c/b/e;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/c/b/e;->a:Lcom/google/c/b/e;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/c/b/ad;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/c/b/e;->c:[Ljava/lang/Object;

    .line 44
    iput-object p3, p0, Lcom/google/c/b/e;->b:[Ljava/lang/Object;

    .line 45
    iput p4, p0, Lcom/google/c/b/e;->d:I

    .line 46
    iput p2, p0, Lcom/google/c/b/e;->e:I

    .line 47
    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/c/b/e;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/c/b/e;->c:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object v0, p0, Lcom/google/c/b/e;->c:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, p2

    return v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
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
    .line 74
    iget-object v0, p0, Lcom/google/c/b/e;->c:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/c/b/ae;->a([Ljava/lang/Object;)Lcom/google/c/b/k;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, Lcom/google/c/b/e;->b:[Ljava/lang/Object;

    .line 52
    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 61
    :goto_0
    return v0

    .line 55
    :cond_1
    invoke-static {p1}, Lcom/google/c/b/s;->a(Ljava/lang/Object;)I

    move-result v0

    .line 56
    :goto_1
    iget v3, p0, Lcom/google/c/b/e;->d:I

    and-int/2addr v0, v3

    .line 57
    aget-object v3, v2, v0

    .line 58
    if-nez v3, :cond_2

    move v0, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method d()Lcom/google/c/b/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/c/b/e;->b:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/c/b/x;->b()Lcom/google/c/b/x;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/b/ak;

    iget-object v1, p0, Lcom/google/c/b/e;->c:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/c/b/ak;-><init>(Lcom/google/c/b/v;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/c/b/e;->e:I

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/c/b/e;->c()Lcom/google/c/b/k;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/c/b/e;->c:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method t_()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
