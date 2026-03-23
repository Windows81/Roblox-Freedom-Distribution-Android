.class final Lcom/c/a/v$a;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/c/a/c;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/c/a/v$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/c/a/c;


# direct methods
.method public constructor <init>(Lcom/c/a/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lcom/c/a/v$a;->a:Lcom/c/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/c/a/v$a;)I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/c/a/v$a;->a:Lcom/c/a/c;

    invoke-virtual {v0}, Lcom/c/a/c;->n()Lcom/c/a/t$e;

    move-result-object v0

    .line 104
    iget-object v1, p1, Lcom/c/a/v$a;->a:Lcom/c/a/c;

    invoke-virtual {v1}, Lcom/c/a/c;->n()Lcom/c/a/t$e;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/c/a/v$a;->a:Lcom/c/a/c;

    iget v0, v0, Lcom/c/a/c;->a:I

    iget-object p1, p1, Lcom/c/a/v$a;->a:Lcom/c/a/c;

    iget p1, p1, Lcom/c/a/c;->a:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/c/a/t$e;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/c/a/t$e;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 92
    check-cast p1, Lcom/c/a/v$a;

    invoke-virtual {p0, p1}, Lcom/c/a/v$a;->a(Lcom/c/a/v$a;)I

    move-result p1

    return p1
.end method
