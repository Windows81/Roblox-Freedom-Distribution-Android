.class Landroidx/k/c$10;
.super Landroidx/k/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/k/c;->a(Landroid/view/ViewGroup;Landroidx/k/s;Landroidx/k/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroidx/k/c;


# direct methods
.method constructor <init>(Landroidx/k/c;Landroid/view/ViewGroup;)V
    .locals 0

    .line 391
    iput-object p1, p0, Landroidx/k/c$10;->c:Landroidx/k/c;

    iput-object p2, p0, Landroidx/k/c$10;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroidx/k/n;-><init>()V

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Landroidx/k/c$10;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/k/m;)V
    .locals 2

    .line 402
    iget-boolean v0, p0, Landroidx/k/c$10;->a:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Landroidx/k/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/k/x;->a(Landroid/view/ViewGroup;Z)V

    .line 405
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/k/m;->b(Landroidx/k/m$c;)Landroidx/k/m;

    return-void
.end method

.method public b(Landroidx/k/m;)V
    .locals 1

    .line 410
    iget-object p1, p0, Landroidx/k/c$10;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/k/x;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public c(Landroidx/k/m;)V
    .locals 1

    .line 415
    iget-object p1, p0, Landroidx/k/c$10;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/k/x;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
