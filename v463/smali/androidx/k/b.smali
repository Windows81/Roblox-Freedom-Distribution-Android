.class public Landroidx/k/b;
.super Landroidx/k/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/k/q;-><init>()V

    .line 38
    invoke-direct {p0}, Landroidx/k/b;->r()V

    return-void
.end method

.method private r()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Landroidx/k/b;->a(I)Landroidx/k/q;

    .line 48
    new-instance v1, Landroidx/k/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/k/d;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/k/b;->a(Landroidx/k/m;)Landroidx/k/q;

    move-result-object v1

    new-instance v2, Landroidx/k/c;

    invoke-direct {v2}, Landroidx/k/c;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Landroidx/k/q;->a(Landroidx/k/m;)Landroidx/k/q;

    move-result-object v1

    new-instance v2, Landroidx/k/d;

    invoke-direct {v2, v0}, Landroidx/k/d;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Landroidx/k/q;->a(Landroidx/k/m;)Landroidx/k/q;

    return-void
.end method
