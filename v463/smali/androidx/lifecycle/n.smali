.class public Landroidx/lifecycle/n;
.super Landroidx/lifecycle/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/p<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private e:Landroidx/a/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b<",
            "Landroidx/lifecycle/LiveData<",
            "*>;",
            "Landroidx/lifecycle/n$a<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroidx/lifecycle/p;-><init>()V

    .line 70
    new-instance v0, Landroidx/a/a/b/b;

    invoke-direct {v0}, Landroidx/a/a/b/b;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/n;->e:Landroidx/a/a/b/b;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroidx/lifecycle/n;->e:Landroidx/a/a/b/b;

    invoke-virtual {v0, p1}, Landroidx/a/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/n$a;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroidx/lifecycle/n$a;->b()V

    :cond_0
    return-void
.end method

.method public a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TS;>;",
            "Landroidx/lifecycle/q<",
            "-TS;>;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Landroidx/lifecycle/n$a;

    invoke-direct {v0, p1, p2}, Landroidx/lifecycle/n$a;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/q;)V

    .line 87
    iget-object v1, p0, Landroidx/lifecycle/n;->e:Landroidx/a/a/b/b;

    invoke-virtual {v1, p1, v0}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/n$a;

    if-eqz p1, :cond_1

    .line 88
    iget-object v1, p1, Landroidx/lifecycle/n$a;->b:Landroidx/lifecycle/q;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This source was already added with the different observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    return-void

    .line 95
    :cond_2
    invoke-virtual {p0}, Landroidx/lifecycle/n;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {v0}, Landroidx/lifecycle/n$a;->a()V

    :cond_3
    return-void
.end method

.method protected d()V
    .locals 2

    .line 125
    iget-object v0, p0, Landroidx/lifecycle/n;->e:Landroidx/a/a/b/b;

    invoke-virtual {v0}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/n$a;

    invoke-virtual {v1}, Landroidx/lifecycle/n$a;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected o_()V
    .locals 2

    .line 117
    iget-object v0, p0, Landroidx/lifecycle/n;->e:Landroidx/a/a/b/b;

    invoke-virtual {v0}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/n$a;

    invoke-virtual {v1}, Landroidx/lifecycle/n$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
