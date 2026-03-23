.class Lcom/google/c/b/ak;
.super Lcom/google/c/b/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/t",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/c/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/v",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/c/b/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/x",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/c/b/v;Lcom/google/c/b/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/v",
            "<TE;>;",
            "Lcom/google/c/b/x",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/c/b/t;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/c/b/ak;->a:Lcom/google/c/b/v;

    .line 37
    iput-object p2, p0, Lcom/google/c/b/ak;->b:Lcom/google/c/b/x;

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/google/c/b/v;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/v",
            "<TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p2}, Lcom/google/c/b/x;->a([Ljava/lang/Object;)Lcom/google/c/b/x;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/c/b/ak;-><init>(Lcom/google/c/b/v;Lcom/google/c/b/x;)V

    .line 42
    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/c/b/ak;->b:Lcom/google/c/b/x;

    invoke-virtual {v0, p1, p2}, Lcom/google/c/b/x;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/google/c/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/c/b/l",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/c/b/ak;->b:Lcom/google/c/b/x;

    invoke-virtual {v0, p1}, Lcom/google/c/b/x;->a(I)Lcom/google/c/b/l;

    move-result-object v0

    return-object v0
.end method

.method a()Lcom/google/c/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/v",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/c/b/ak;->a:Lcom/google/c/b/v;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/c/b/ak;->b:Lcom/google/c/b/x;

    invoke-virtual {v0, p1}, Lcom/google/c/b/x;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/c/b/ak;->a(I)Lcom/google/c/b/l;

    move-result-object v0

    return-object v0
.end method
