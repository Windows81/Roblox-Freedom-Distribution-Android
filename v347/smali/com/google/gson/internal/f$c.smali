.class abstract Lcom/google/gson/internal/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/gson/internal/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/f$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/gson/internal/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/f$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/gson/internal/f;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/f;)V
    .locals 1

    .prologue
    .line 531
    iput-object p1, p0, Lcom/google/gson/internal/f$c;->e:Lcom/google/gson/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lcom/google/gson/internal/f$c;->e:Lcom/google/gson/internal/f;

    iget-object v0, v0, Lcom/google/gson/internal/f;->e:Lcom/google/gson/internal/f$d;

    iget-object v0, v0, Lcom/google/gson/internal/f$d;->d:Lcom/google/gson/internal/f$d;

    iput-object v0, p0, Lcom/google/gson/internal/f$c;->b:Lcom/google/gson/internal/f$d;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/f$c;->c:Lcom/google/gson/internal/f$d;

    .line 529
    iget-object v0, p0, Lcom/google/gson/internal/f$c;->e:Lcom/google/gson/internal/f;

    iget v0, v0, Lcom/google/gson/internal/f;->d:I

    iput v0, p0, Lcom/google/gson/internal/f$c;->d:I

    .line 532
    return-void
.end method


# virtual methods
.method final b()Lcom/google/gson/internal/f$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/f$d",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/gson/internal/f$c;->b:Lcom/google/gson/internal/f$d;

    .line 540
    iget-object v1, p0, Lcom/google/gson/internal/f$c;->e:Lcom/google/gson/internal/f;

    iget-object v1, v1, Lcom/google/gson/internal/f;->e:Lcom/google/gson/internal/f$d;

    if-ne v0, v1, :cond_0

    .line 541
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/f$c;->e:Lcom/google/gson/internal/f;

    iget v1, v1, Lcom/google/gson/internal/f;->d:I

    iget v2, p0, Lcom/google/gson/internal/f$c;->d:I

    if-eq v1, v2, :cond_1

    .line 544
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 546
    :cond_1
    iget-object v1, v0, Lcom/google/gson/internal/f$d;->d:Lcom/google/gson/internal/f$d;

    iput-object v1, p0, Lcom/google/gson/internal/f$c;->b:Lcom/google/gson/internal/f$d;

    .line 547
    iput-object v0, p0, Lcom/google/gson/internal/f$c;->c:Lcom/google/gson/internal/f$d;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/gson/internal/f$c;->b:Lcom/google/gson/internal/f$d;

    iget-object v1, p0, Lcom/google/gson/internal/f$c;->e:Lcom/google/gson/internal/f;

    iget-object v1, v1, Lcom/google/gson/internal/f;->e:Lcom/google/gson/internal/f$d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/gson/internal/f$c;->c:Lcom/google/gson/internal/f$d;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/f$c;->e:Lcom/google/gson/internal/f;

    iget-object v1, p0, Lcom/google/gson/internal/f$c;->c:Lcom/google/gson/internal/f$d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/internal/f;->a(Lcom/google/gson/internal/f$d;Z)V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/f$c;->c:Lcom/google/gson/internal/f$d;

    .line 556
    iget-object v0, p0, Lcom/google/gson/internal/f$c;->e:Lcom/google/gson/internal/f;

    iget v0, v0, Lcom/google/gson/internal/f;->d:I

    iput v0, p0, Lcom/google/gson/internal/f$c;->d:I

    .line 557
    return-void
.end method
