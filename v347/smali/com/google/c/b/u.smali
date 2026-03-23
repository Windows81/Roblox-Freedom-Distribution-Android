.class public abstract Lcom/google/c/b/u;
.super Lcom/google/c/b/y;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/b/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/y",
        "<TK;TV;>;",
        "Lcom/google/c/b/n",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/c/b/y;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/c/b/u",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/google/c/b/g;

    invoke-direct {v0, p0, p1}, Lcom/google/c/b/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f()Lcom/google/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/c/b/u",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/google/c/b/b;->a:Lcom/google/c/b/b;

    return-object v0
.end method


# virtual methods
.method public abstract d()Lcom/google/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/u",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public g()Lcom/google/c/b/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/ad",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/c/b/u;->d()Lcom/google/c/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/u;->k()Lcom/google/c/b/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/c/b/v;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/c/b/u;->g()Lcom/google/c/b/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/c/b/u;->g()Lcom/google/c/b/ad;

    move-result-object v0

    return-object v0
.end method
