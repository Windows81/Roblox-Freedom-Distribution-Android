.class public abstract Lcom/google/c/b/ad;
.super Lcom/google/c/b/v;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/b/ad$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/v",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient a:Lcom/google/c/b/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/google/c/b/v;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/c/b/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/c/b/ad",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/c/b/i;

    invoke-direct {v0, p0}, Lcom/google/c/b/i;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f()Lcom/google/c/b/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/ad",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/google/c/b/e;->a:Lcom/google/c/b/e;

    return-object v0
.end method


# virtual methods
.method b()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public abstract c()Lcom/google/c/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/k",
            "<TE;>;"
        }
    .end annotation
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
    .line 349
    new-instance v0, Lcom/google/c/b/ak;

    invoke-virtual {p0}, Lcom/google/c/b/ad;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/c/b/ak;-><init>(Lcom/google/c/b/v;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public e()Lcom/google/c/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/c/b/ad;->a:Lcom/google/c/b/x;

    .line 345
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/ad;->d()Lcom/google/c/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ad;->a:Lcom/google/c/b/x;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 319
    if-ne p1, p0, :cond_0

    .line 320
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0

    .line 321
    :cond_0
    instance-of v0, p1, Lcom/google/c/b/ad;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/google/c/b/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/c/b/ad;

    .line 323
    invoke-virtual {v0}, Lcom/google/c/b/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/google/c/b/ad;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 325
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :cond_1
    invoke-static {p0, p1}, Lcom/google/c/b/f;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 332
    invoke-static {p0}, Lcom/google/c/b/f;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/c/b/ad;->c()Lcom/google/c/b/k;

    move-result-object v0

    return-object v0
.end method
