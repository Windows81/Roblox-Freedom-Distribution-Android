.class Landroidx/k/d$1;
.super Landroidx/k/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/k/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/k/d;


# direct methods
.method constructor <init>(Landroidx/k/d;Landroid/view/View;)V
    .locals 0

    .line 132
    iput-object p1, p0, Landroidx/k/d$1;->b:Landroidx/k/d;

    iput-object p2, p0, Landroidx/k/d$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/k/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/k/m;)V
    .locals 2

    .line 135
    iget-object v0, p0, Landroidx/k/d$1;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/k/ad;->a(Landroid/view/View;F)V

    .line 136
    iget-object v0, p0, Landroidx/k/d$1;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/k/ad;->e(Landroid/view/View;)V

    .line 137
    invoke-virtual {p1, p0}, Landroidx/k/m;->b(Landroidx/k/m$c;)Landroidx/k/m;

    return-void
.end method
