.class Landroidx/appcompat/app/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/h/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f;->v()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 638
    iput-object p1, p0, Landroidx/appcompat/app/f$3;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/z;)Landroidx/core/h/z;
    .locals 4

    .line 642
    invoke-virtual {p2}, Landroidx/core/h/z;->b()I

    move-result v0

    .line 643
    iget-object v1, p0, Landroidx/appcompat/app/f$3;->a:Landroidx/appcompat/app/f;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/f;->h(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 647
    invoke-virtual {p2}, Landroidx/core/h/z;->a()I

    move-result v0

    .line 649
    invoke-virtual {p2}, Landroidx/core/h/z;->c()I

    move-result v2

    .line 650
    invoke-virtual {p2}, Landroidx/core/h/z;->d()I

    move-result v3

    .line 646
    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/core/h/z;->a(IIII)Landroidx/core/h/z;

    move-result-object p2

    .line 654
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/h/r;->a(Landroid/view/View;Landroidx/core/h/z;)Landroidx/core/h/z;

    move-result-object p1

    return-object p1
.end method
