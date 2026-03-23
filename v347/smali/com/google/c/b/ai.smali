.class public abstract Lcom/google/c/b/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lcom/google/c/b/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/c/b/ai",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    instance-of v0, p0, Lcom/google/c/b/ai;

    if-eqz v0, :cond_0

    .line 167
    check-cast p0, Lcom/google/c/b/ai;

    .line 166
    :goto_0
    return-object p0

    .line 168
    :cond_0
    new-instance v0, Lcom/google/c/b/r;

    invoke-direct {v0, p0}, Lcom/google/c/b/r;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/c/a/b;)Lcom/google/c/b/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/c/a/b",
            "<TF;+TT;>;)",
            "Lcom/google/c/b/ai",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Lcom/google/c/b/o;

    invoke-direct {v0, p1, p0}, Lcom/google/c/b/o;-><init>(Lcom/google/c/a/b;Lcom/google/c/b/ai;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method
